//
//  QuizViewController.swift
//  suPort
//
//  Created by Atena on 8/4/22.
//

import UIKit

class QuizViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    let arrayOfNames = ["Michèle Mouton" , "Merritt Moore" , "Serena Williams" , "Tai Tzu Ying" , "Sarah Fuller" , "Lisa Leslie" , "Jenny Finch" , "Alyssa Nakken" , "Simone Biles" , "Alex Morgan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.isHidden = true

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let randomNumber = Int.random(in: 0...(arrayOfNames.count-1))
        label.text = arrayOfNames[randomNumber]
        label.isHidden = false
    }
}
