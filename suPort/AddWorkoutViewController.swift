//
//  AddWorkoutViewController.swift
//  suPort
//
//  Created by Aarya Chitnis on 04/08/2022.
//

import UIKit
import CoreData

class AddWorkoutViewController: UIViewController {
    
    var previousVC = WorkoutsTableViewController()
    @IBOutlet weak var workoutTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addWorkoutTapped(_ sender: Any) {
        
        // we have to grab this view context to be able to work with Core Data
          if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            // we are creating a new ToDoCD object here, naming it toDo
              let toDo = WorkoutCD(entity: WorkoutCD.entity(), insertInto: context)
              
            // if the titleTextField has text, we will call that text titleText
              if let titleText = workoutTextField.text {
                // we will take the titleText and assign that value to toDo.name
                // this .name and .important came from the attributes you typed in on the Core Data page!
                toDo.name = titleText
            }

            try? context.save()

            navigationController?.popViewController(animated: true)
          }
        
        
        //let toDo = ToDo()

          //if let titleText = workoutTextField.text {
            //toDo.name = titleText
          //}
        //previousVC.toDos.append(toDo)
        //previousVC.tableView.reloadData()
        //navigationController?.popViewController(animated: true)
        
    }

}
