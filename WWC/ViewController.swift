import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var shows: [Show]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tabble view properties
        tableView.dataSource = self
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        tableView.estimatedRowHeight = 10 // needs a default
        tableView.rowHeight = UITableViewAutomaticDimension
        
        // get stubbed show data
        shows = getFakeData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let shows = shows else { return 0 }

        return shows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let shows = shows else { return UITableViewCell() }

        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageLabelCell") as! ImageLabelCell
        let tvShow = shows[indexPath.row] as Show

        cell.setup(labelName: tvShow.artistName, imageName: tvShow.imageName)

        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // set a table view header
        return "Shows"
    }
}

