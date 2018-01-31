import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tabble view properties
        tableView.dataSource = self
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        tableView.estimatedRowHeight = 10 // needs a default
        tableView.rowHeight = UITableViewAutomaticDimension
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // only going to display one row in table view
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageLabelCell") as! ImageLabelCell
        // Grab the show from the model
//        let tvShow = shows[indexPath.row] as Show
        // Set the label using the placeholder string
        let tvShowName = "TV Show Name"
        cell.setup(labelName: tvShowName, imageName: nil)
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // set a table view header
        return "Shows"
    }
}

