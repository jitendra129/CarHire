






import UIKit

protocol topBarDelegate {
    
    func controller(_ controller: JKTopBar, didTapItem: String)
    
}
extension topBarDelegate {
    func controller(_ controller: JKTopBar, didTapItem: String){
        
    }
}

class JKTopBar: UIViewController {

    @IBOutlet weak var ttlName : UILabel!
    @IBOutlet weak var backgroundImage : UIImageView!
    var delegate: topBarDelegate?
    var headertitle = "Swift"

    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    convenience init(controller: UIViewController, withTitle headerTitle: String, withImage imgNamestr: String) {
        self.init(nibName: "JKTopBar", bundle: nil)
       // self.controller = controller
        headertitle = headerTitle
       
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        ttlName.text=headertitle
        let screenSize: CGRect = UIScreen.main.bounds

        self.view.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: 70)
        self.view.layoutIfNeeded()
    }
    
    
   @IBAction  func onClickBack(_ sender: UIButton) {
    delegate?.controller(self, didTapItem: "back")
    }
    
    @IBAction func onClickSearch(_ sender: UIButton) {
         delegate?.controller(self, didTapItem: "Search")
    }
    
   @IBAction func onClickUser(_ sender: UIButton) {
    delegate?.controller(self, didTapItem: "UserAccount")
    }
    
    @IBAction func onClickDriver(_ sender: UIButton) {
        delegate?.controller(self, didTapItem: "Driver")
    }
    
    

}
