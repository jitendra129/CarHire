//
//  ContactUs.swift
//  CarHire
//
//  Created by ASK ONLINE  on 11/07/17.
//  Copyright © 2017 ASK ONLINE. All rights reserved.
//

import UIKit

class ContactUs: UIViewController ,topBarDelegateWithOneTap{
    weak var delegate: LeftMenuProtocol?
    var testVC: JKTopBarWithBack = JKTopBarWithBack();

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        testVC = (JKTopBarWithBack(topBarDelegateWithOneTap: self, withTitle: "Contact Us", withImage: "") as JKTopBarWithBack)
        testVC.delegate=self
        
        self.view.addSubview(testVC.view);
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickHomePh(_ sender: UIButton) {
         callNumber(phoneNumber: "8130670372")
    }
    @IBAction func onClickIntPh(_ sender: UIButton) {
         callNumber(phoneNumber: "8130670372")
    }
    @IBAction func onClickLUsaPh(_ sender: UIButton) {
         callNumber(phoneNumber: "8130670372")
    }
    
    func callNumber(phoneNumber:String) {
        
        // UIApplication.shared.openURL(NSURL(string: "tel://" + phoneNumber)! as URL)
        
        let CleanphoneNumber = phoneNumber.replacingOccurrences(of: " ", with: "")
        if let phoneCallURL:NSURL = NSURL(string: "tel://\(CleanphoneNumber)") {
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL as URL)) {
                application.openURL(phoneCallURL as URL);
            }else{
                print("You cant call number .")
            }
        }
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
