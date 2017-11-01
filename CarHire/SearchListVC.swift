//
//  SearchListVC.swift
//  CarHire
//
//  Created by ASK ONLINE  on 30/06/17.
//  Copyright © 2017 ASK ONLINE. All rights reserved.
//

import UIKit

class SearchListVC: UIViewController,UITableViewDelegate, UITableViewDataSource,topBarDelegate {

  @IBOutlet var tableView: UITableView!
    let animals: [String] = ["Horse", "Cow", "Camel", "Sheep", "Goat"]
   // @IBOutlet  var topbar: JKTopBar!
    let cellReuseIdentifier = "CarListCell"
    var testVC: JKTopBar = JKTopBar();
 //var delegate: AddItemViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
  
        testVC = (JKTopBar(controller: self, withTitle: "Car List", withImage: "") as JKTopBar)
        testVC.delegate=self
        self.view.addSubview(testVC.view);

    }
   
    
    func controller(_ controller: JKTopBar, didTapItem: String) {
        
        print(didTapItem)
        if didTapItem=="back" {
            self.navigationController?.popViewController(animated: true)
            
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


    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
        
        // set the text from the data model
       // cell.textLabel?.text = self.animals[indexPath.row]
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "CarDetailVC") as! CarDetailVC
        // self.present(newViewController, animated: true, completion: nil)
        //  let newViewController = SearchListVC()
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
}
