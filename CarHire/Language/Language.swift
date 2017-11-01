//
//  Language.swift
//  CarHire
//
//  Created by ASK ONLINE  on 11/07/17.
//  Copyright © 2017 ASK ONLINE. All rights reserved.
//

import UIKit

class Language: UIViewController ,UITableViewDelegate,UITableViewDataSource,topBarDelegateWithOneTap{
    weak var delegate: LeftMenuProtocol?
    let animals = ["English", "Arabic", "Persian", "Hindi", "Urdu"]
    
    // cell reuse id (cells that scroll out of view can be reused)
    let cellReuseIdentifier = "LanguageTableViewCell"
    
    // don't forget to hook this up from the storyboard
    @IBOutlet var tableView: UITableView!
 var testVC: JKTopBarWithBack = JKTopBarWithBack();
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        testVC = (JKTopBarWithBack(topBarDelegateWithOneTap: self, withTitle: "Language", withImage: "") as JKTopBarWithBack)
        testVC.delegate=self
        
        self.view.addSubview(testVC.view);
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated) // No need for semicolon
         tableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell : LanguageTableViewCell = tableView.dequeueReusableCell(withIdentifier: "LanguageTableViewCell", for: indexPath) as! LanguageTableViewCell
        
        cell.lName?.text = self.animals[indexPath.row]
        cell.lName?.textColor=UIColor.black
        var inttt:Int
        inttt = UserDefaults.standard.integer(forKey: "SelectedLang")
        if indexPath.row==inttt {
            //cell.btnCheck
            //cell.btnCheck?.setBackgroundImage(UIImage(named: "menu.png"), for: .Normal)
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
        UserDefaults.standard.set(indexPath.row, forKey: "SelectedLang")
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
