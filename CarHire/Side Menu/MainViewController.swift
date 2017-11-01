//
//  ViewController.swift
//  SlideMenuControllerSwift
//
//  Created by Yuji Hato on 12/3/14.
//

import UIKit

class MainViewController: UIViewController {

  //  @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.tableView.registerCellNib(DataTableViewCell.self)
         self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       // self.setNavigationBarItem()
//        self.addLeftBarButtonWithImage(UIImage(named: "Menu-Icon-Header-Top.png")!)
//        self.addRightBarButtonWithImage(UIImage(named: "Menu-Icon-Header-Top.png")!)
//        self.slideMenuController()?.removeLeftGestures()
//        self.slideMenuController()?.removeRightGestures()
//        self.slideMenuController()?.addLeftGestures()
//        self.slideMenuController()?.addRightGestures()
        
        
    }
    @IBAction func onClickLeft(_ sender: UIButton) {
        self.slideMenuController()?.openLeft()
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    

}



