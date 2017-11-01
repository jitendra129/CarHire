//
//  JKTopBarWithBack.swift
//  CarHire
//
//  Created by ASK ONLINE  on 15/07/17.
//  Copyright © 2017 ASK ONLINE. All rights reserved.
//


import UIKit

protocol topBarDelegateWithOneTap {
    
    func topBarDelegateWithOneTap(_ controller: JKTopBarWithBack, didTapItem: String)
    
}
extension topBarDelegateWithOneTap {
    func topBarDelegateWithOneTap(_ controller: JKTopBarWithBack, didTapItem: String){
        
    }
}

class JKTopBarWithBack: UIViewController {
   //  weak var delegate2: LeftMenuProtocol?
    @IBOutlet weak var ttlName : UILabel!
    @IBOutlet weak var backgroundImage : UIImageView!
    var delegate: topBarDelegateWithOneTap?
    var headertitle = "Swift"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    convenience init(topBarDelegateWithOneTap: UIViewController, withTitle headerTitle: String, withImage imgNamestr: String) {
        self.init(nibName: "JKTopBarWithBack", bundle: nil)
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
//    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        super.viewWillTransition(to: size, with: coordinator)
//        coordinator.animate(alongsideTransition: nil, completion: { (context: UIViewControllerTransitionCoordinatorContext!) -> Void in
//            guard let vc = (self.slideMenuController()?.mainViewController as? UINavigationController)?.topViewController else {
//                return
//            }
//            if vc.isKind(of: MyBookingVC.self)  {
//                self.slideMenuController()?.removeLeftGestures()
//                self.slideMenuController()?.removeRightGestures()
//            }
//        })
//    }

    @IBAction  func onClickBack(_ sender: Any) {
        //delegate2?.changeViewController(LeftMenu.main)
        delegate?.topBarDelegateWithOneTap(self, didTapItem: "back")
    }
    
    @IBAction func onClickSearch(_ sender: UIButton) {
        delegate?.topBarDelegateWithOneTap(self, didTapItem: "Search")
    }
    
    @IBAction func onClickUser(_ sender: UIButton) {
        delegate?.topBarDelegateWithOneTap(self, didTapItem: "UserAccount")
    }
    
    @IBAction func onClickDriver(_ sender: UIButton) {
        delegate?.topBarDelegateWithOneTap(self, didTapItem: "Driver")
    }
    
    
    
}
