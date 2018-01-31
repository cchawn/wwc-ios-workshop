import Foundation
import UIKit

class ImageLabelCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    
    func setup(labelName: String?, imageName: String?) {
        self.label.text = labelName;
        
        // only create the image if the imageName is provided
        guard let iconName = imageName else { return }
        self.cellImageView.image = UIImage(named: iconName)
    }
}
