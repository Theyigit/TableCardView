//
//  ViewController.swift
//  TableCardView
//
//  Created by Macbook on 29.03.2017.
//  Copyright © 2017 Yigit Yilmaz. All rights reserved.
//

import UIKit


class TableCardView: UITableViewController{
    
   

    @IBOutlet var menuTableView: UITableView!
    @IBOutlet var logo: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let appDelegate: AppDelegate = UIApplication.shared.delegate! as! AppDelegate
        appDelegate.tableCardView = self
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        menuTableView.contentInset = insets
        menuTableView.scrollIndicatorInsets = insets
        menuTableView.separatorStyle = .none
        
    }
    
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView){
        
        if tableView.contentOffset.y >= -7{
            logo.image = UIImage(named: "Logo")!
            logo.frame = CGRect(x: 55, y: -4, width: 40, height: 40)
            

        }else{
            logo.image = UIImage(named: "Logo-with-hand")!
            logo.frame = CGRect(x: 39.5, y: 8, width: 71, height: 76)
            
        }
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 10
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
     override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15
    }
    
     override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardViewCell", for: indexPath)
        as! CardViewCell
        let row = indexPath.section
        cell.backgroundColor = UIColor.white
        cell.layer.cornerRadius = 5
        
        if row % 4 == 0{
            cell.sideLine.image = UIImage(named: "SideLine-purple")!
            cell.chain.image = UIImage(named: "Chain-purple")!
        }else if row % 4 == 1{
            cell.sideLine.image = UIImage(named: "SideLine-red")!
            cell.chain.image = UIImage(named: "Chain-red")!
        }else if row % 4 == 2{
            cell.sideLine.image = UIImage(named: "SideLine-yellow")!
            cell.chain.image = UIImage(named: "Chain-yellow")!
        }else{
            cell.sideLine.image = UIImage(named: "SideLine-green")!
            cell.chain.image = UIImage(named: "Chain-green")!
        }


        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

