//
//  Currency.swift
//  CarHire
//
//  Created by ASK ONLINE  on 11/07/17.
//  Copyright © 2017 ASK ONLINE. All rights reserved.
//

import UIKit

class Currency: UIViewController ,UITableViewDelegate,UITableViewDataSource,topBarDelegateWithOneTap{
    

    weak var delegate: LeftMenuProtocol?
    let animals = ["INR  Indian Rupee", "EUR  Euro", "KWD  Kuwaiti Dinar", "USD  US Dollar", "SAR  Saudi Riyal"]
    
    // cell reuse id (cells that scroll out of view can be reused)
    let cellReuseIdentifier = "CurrencyTableCell"
     var testVC: JKTopBarWithBack = JKTopBarWithBack();
    // don't forget to hook this up from the storyboard
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        testVC = (JKTopBarWithBack(topBarDelegateWithOneTap: self, withTitle: "Currency", withImage: "") as JKTopBarWithBack)
        testVC.delegate=self
        
        self.view.addSubview(testVC.view);
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated) // No need for semicolon
        tableView.reloadData()
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
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
      
        let cell : CurrencyTableCell = tableView.dequeueReusableCell(withIdentifier: "CurrencyTableCell", for: indexPath) as! CurrencyTableCell

        cell.cName?.text = self.animals[indexPath.row]
        cell.cName?.textColor=UIColor.black
        var inttt:Int
        inttt = UserDefaults.standard.integer(forKey: "SelectedCurency")
        if indexPath.row==inttt {
           
            let btnImage = UIImage(named: "filter_check_green.png")
            cell.btnCheck.setImage(btnImage , for: UIControlState.normal)
        }else{
            let btnImage = UIImage(named: "filter_check_gray.png")
            cell.btnCheck.setImage(btnImage , for: UIControlState.normal)
        }
        
        print(inttt)
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
        
        UserDefaults.standard.set(indexPath.row, forKey: "SelectedCurency")
        tableView.reloadData()
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
