//
//  SwiftViewController.swift
//  SlideMenuControllerSwift
//
//  Created by Yuji Hato on 1/19/15.
//  Copyright (c) 2015 Yuji Hato. All rights reserved.
//



import UIKit

class SwiftViewController: UIViewController {
    weak var delegate: LeftMenuProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
          self.navigationController?.isNavigationBarHidden = true
    }
    
    
    @IBAction func ClickOnBack(_ sender: Any) {
        //        let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController];
        //        self.navigationController!.popToViewController(viewControllers[viewControllers.count-2], animated: true);
        //self.navigationController?.popViewController(animated: true)
        delegate?.changeViewController(LeftMenu.main)
        
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        coordinator.animate(alongsideTransition: nil, completion: { (context: UIViewControllerTransitionCoordinatorContext!) -> Void in
            guard let vc = (self.slideMenuController()?.mainViewController as? UINavigationController)?.topViewController else {
                return
            }
            if vc.isKind(of: SwiftViewController.self)  {
                self.slideMenuController()?.removeLeftGestures()
                self.slideMenuController()?.removeRightGestures()
            }
        })
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       // self.setNavigationBarItem()
    }
    
}
