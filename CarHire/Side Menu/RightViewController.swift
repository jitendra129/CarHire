//
//  RightViewController.swift
//  SlideMenuControllerSwift
//
//  Created by Yuji Hato on 12/3/14.
//

import UIKit

class RightViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func ClickOnBack(_ sender: Any) {
        //        let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController];
        //        self.navigationController!.popToViewController(viewControllers[viewControllers.count-2], animated: true);
        self.navigationController?.popViewController(animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
