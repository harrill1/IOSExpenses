//
//  ExpensesTableViewController.swift
//  Expenses
//
//  Created by Hayden on 8/24/18.
//  Copyright © 2018 Harrill, Hayden. All rights reserved.
//

import UIKit

class ExpensesTableViewController: UITableViewController {

    var expenses = [Expense]()
    
    var dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateFormat = "MMMM d, yyyy HH:mm"
        
        if let date = dateFormatter.date(from: "June 1, 2018 18:30"){
            expenses.append(Expense(title: "Dinner", amount: 32.50, date: date))
        }

        if let date = dateFormatter.date(from: "May 30, 2018 12:17"){
            expenses.append(Expense(title: "Office Supplies", amount: 59.34, date: date))
        }
        
        if let date = dateFormatter.date(from: "May 30, 2018 11:43"){
            expenses.append(Expense(title: "Uber", amount: 16.23, date: date))
        }
        
        if let date = dateFormatter.date(from: "May 29, 2018 8:45"){
            expenses.append(Expense(title: "Coffee", amount: 3.95, date: date))
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return expenses.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if let cell = cell as? ExpenseTableViewCell {
        
            let expense = expenses[indexPath.row]
            
            cell.titleLabel.text = expense.title
            cell.amountLabel.text = "$" + String(expense.amount)
            cell.dateLabel.text = dateFormatter.string(from: expense.date)
            
        }
        
        return cell
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
