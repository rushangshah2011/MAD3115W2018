//
//  MenuTVC.swift
//  
//
//  Created by Jigisha Patel on 2018-02-23.
//  Copyright © 2018 JK. All rights reserved.
//

import UIKit

class MenuTVC: UITableViewController {
    var menuItem: MenuItems!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuItem = MenuItems()
        tableView.rowHeight = 90
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuItem.names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemIdentifier", for: indexPath) as! MenuTVCell

        // Configure the cell...
        let row = indexPath.row
        cell.lblTitle.text = menuItem.names[row]
        cell.show(isSpecial: menuItem.specials[row], price: menuItem.prices[row])
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        let name = menuItem.names[row]
        
        /*
        let cellAlert = UIAlertController(title: "Cell info", message: name, preferredStyle: .alert)
        cellAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(cellAlert, animated: true, completion: nil)
        */
        
        
            let pizzaSB = UIStoryboard(name: "Main", bundle: nil)
            let pizzaVC = pizzaSB.instantiateViewController(withIdentifier: "WebViewScreen") //as! webPageVC
        self.navigationController?.pushViewController(pizzaVC, animated: true)
    }
        
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
