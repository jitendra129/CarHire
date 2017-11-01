//
//  AboutUs.swift
//  CarHire
//
//  Created by ASK ONLINE  on 11/07/17.
//  Copyright © 2017 ASK ONLINE. All rights reserved.
//

import UIKit

class AboutUs: UIViewController ,topBarDelegateWithOneTap{
    weak var delegate: LeftMenuProtocol?
 var testVC: JKTopBarWithBack = JKTopBarWithBack();
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        testVC = (JKTopBarWithBack(topBarDelegateWithOneTap: self, withTitle: "About Us", withImage: "") as JKTopBarWithBack)
        testVC.delegate=self
      
        self.view.addSubview(testVC.view);
        
    }
    
    func topBarDelegateWithOneTap(_ controller: JKTopBarWithBack, didTapItem: String) {
        
        print(didTapItem)
        if didTapItem=="back" {
            //self.navigationController?.popViewController(animated: true)
            delegate?.changeViewController(LeftMenu.main)

        }
        if didTapItem=="Search" {
            self.navigationController?.popViewController(animated: true)
            
        }
        if didTapItem=="UserAccount" {
            self.navigationController?.popViewController(animated: true)
            
        }
        if didTapItem=="Driver" {
            self.navigationController?.popViewController(animated: true)
            
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
