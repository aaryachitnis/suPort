//
//  WorkoutsTableViewController.swift
//  suPort
//
//  Created by Aarya Chitnis on 04/08/2022.
//


import UIKit

class WorkoutsTableViewController: UITableViewController {
    
    var toDos : [WorkoutCD] = []
    
    override func viewDidLoad() {
        super.viewDidLoad();
        }
    override func viewWillAppear(_ animated: Bool) {
      getToDos()
    }
    func getToDos(){
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            if let coreDataToDos = try? context.fetch(WorkoutCD.fetchRequest()) as? [WorkoutCD] {
                    toDos = coreDataToDos
                    tableView.reloadData()
            }
          }
    }
    /*
    func createToDos() -> [ToDo] {
        let swift = ToDo()
        swift.name = "20 pushups"

        let dog = ToDo()
        dog.name = "30 minute run"
      // important is set to false by default
        return [swift, dog]

        
    }
     */
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let toDo = toDos[indexPath.row]
        cell.textLabel?.text = toDo.name
        return cell

        // Configure the cell...
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddWorkoutViewController {
            addVC.previousVC = self
          }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    
    
    

}
