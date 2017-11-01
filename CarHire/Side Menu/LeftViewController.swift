//
//  LeftViewController.swift
//  SlideMenuControllerSwift
//
//  Created by Yuji Hato on 12/3/14.
//

import UIKit

enum LeftMenu: Int {
    case main = 0
    case booking
    case account
    case aboutUs
    case contactUs
    case Language
    case currency
    case setting
}

protocol LeftMenuProtocol : class {
    func changeViewController(_ menu: LeftMenu)
}

class LeftViewController : UIViewController, LeftMenuProtocol {
    
    @IBOutlet weak var tableView: UITableView!
    var menus = ["Book a car", "My bookings", "My accounts", "About us", "Contact Us", "Language","Currency", "Setting"]
    
    var mainViewController: UIViewController!
    var BookingVC: UIViewController!
    var AccountVC: UIViewController!
    var aboutUs: UIViewController!
    var contactUs: UIViewController!
    
    var language: UIViewController!
    var currency: UIViewController!
    var setting: UIViewController!
    var imageHeaderView: ImageHeaderView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.separatorColor = UIColor(red: 224/255, green: 224/255, blue: 224/255, alpha: 1.0)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let BookingVC = storyboard.instantiateViewController(withIdentifier: "MyBookingVC") as! MyBookingVC
        BookingVC.delegate=self;
        self.BookingVC = UINavigationController(rootViewController: BookingVC)
        
        let AccountVC = storyboard.instantiateViewController(withIdentifier: "MyAccountVC") as! MyAccountVC
        AccountVC.delegate=self;
        self.AccountVC = UINavigationController(rootViewController: AccountVC)
        
        let aboutUs = storyboard.instantiateViewController(withIdentifier: "AboutUs") as! AboutUs
        aboutUs.delegate = self
        self.aboutUs = UINavigationController(rootViewController: aboutUs)
        
        let contactUs = storyboard.instantiateViewController(withIdentifier: "ContactUs") as! ContactUs
        contactUs.delegate = self
        self.contactUs = UINavigationController(rootViewController: contactUs)
        
        
        
        let language = storyboard.instantiateViewController(withIdentifier: "Language") as! Language
        language.delegate=self;
        self.language = UINavigationController(rootViewController: language)
        
        let currency = storyboard.instantiateViewController(withIdentifier: "Currency") as! Currency
        currency.delegate = self
        self.currency = UINavigationController(rootViewController: currency)
        
        let setting = storyboard.instantiateViewController(withIdentifier: "Setting") as! Setting
        setting.delegate = self
        self.setting = UINavigationController(rootViewController: setting)
        

        
        
//        self.tableView.registerCellClass(BaseTableViewCell.self)
//        
//        self.imageHeaderView = ImageHeaderView.loadNib()
//        self.view.addSubview(self.imageHeaderView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        self.imageHeaderView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 250)
//        self.view.layoutIfNeeded()
//    }
    
    func changeViewController(_ menu: LeftMenu) {
        switch menu {
        case .main:
            self.slideMenuController()?.changeMainViewController(self.mainViewController, close: true)
        case .booking:
            self.slideMenuController()?.changeMainViewController(self.BookingVC, close: true)
        case .account:
            self.slideMenuController()?.changeMainViewController(self.AccountVC, close: true)
        case .aboutUs:
            self.slideMenuController()?.changeMainViewController(self.aboutUs, close: true)
        case .contactUs:
            self.slideMenuController()?.changeMainViewController(self.contactUs, close: true)
        case.Language:
            self.slideMenuController()?.changeMainViewController(self.language, close: true)
        case.currency:
            self.slideMenuController()?.changeMainViewController(self.currency, close: true)
        case.setting:
            self.slideMenuController()?.changeMainViewController(self.setting, close: true)
                }
    }
}

extension LeftViewController : UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let menu = LeftMenu(rawValue: indexPath.row) {
            switch menu {
            case .main, .booking, .account, .aboutUs,.contactUs,.Language,.currency,.setting:
                return BaseTableViewCell.height()
            }
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let menu = LeftMenu(rawValue: indexPath.row) {
            self.changeViewController(menu)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if self.tableView == scrollView {
            
        }
    }
}

extension LeftViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let menu = LeftMenu(rawValue: indexPath.row) {
            switch menu {
            case .main, .booking, .account,.aboutUs,.contactUs,.Language,.currency,.setting:

                let cell = BaseTableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: BaseTableViewCell.identifier)
                cell.setData(menus[indexPath.row])
                cell.textLabel?.textColor=UIColor.black
                return cell
            }
        }
        return UITableViewCell()
    }
    
    
}
