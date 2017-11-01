//
//  NonMenuController.swift
//  SlideMenuControllerSwift
//
//  Created by Yuji Hato on 1/22/15.
//  Copyright (c) 2015 Yuji Hato. All rights reserved.
//

import UIKit



class NonMenuController: UIViewController {
    
    weak var delegate: LeftMenuProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
          self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
      //  self.removeNavigationBarItem()
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
            if vc.isKind(of: NonMenuController.self)  {
                self.slideMenuController()?.removeLeftGestures()
                self.slideMenuController()?.removeRightGestures()
            }
        })
    }
  
    @IBAction func didTouchToMain(_ sender: UIButton) {
        delegate?.changeViewController(LeftMenu.main)
    }
}
