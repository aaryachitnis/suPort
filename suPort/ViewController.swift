//
//  ViewController.swift
//  suPort
//
//  Created by Aarya Chitnis on 02/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sportsGallery: UIButton!

    @IBOutlet weak var breakthroughs: UIButton!
    
    @IBOutlet weak var personalJournal: UIButton!
    
    @IBOutlet weak var quiz: UIButton!
    
    @IBOutlet weak var news: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fadeIn()
        fadeIn2()
        fadeIn3()
        fadeIn4()
        fadeIn5()

        self.sportsGallery.alpha = 0
        self.breakthroughs.alpha = 0
        self.personalJournal.alpha = 0
        self.quiz.alpha = 0
        self.news.alpha = 0

    }
    
    
    func fadeIn(){
        UIView.animate(withDuration: 1.0,
                       animations: {
            self.sportsGallery.alpha = 1.0
        }, completion: {
            (completed: Bool)-> Void in
            
            self.fadeIn()
        })
    
    }
    
    func fadeIn2(){
        UIView.animate(withDuration: 1.5,
                       animations: {
            self.breakthroughs.alpha = 1.0
        }, completion: {
            (completed: Bool)-> Void in
            
            self.fadeIn2()
        })
    
    }
    
    func fadeIn3(){
        UIView.animate(withDuration: 2.0,
                       animations: {
            self.personalJournal.alpha = 1.0
        }, completion: {
            (completed: Bool)-> Void in
            
            self.fadeIn3()
        })
    
    }
    
    func fadeIn4(){
        UIView.animate(withDuration: 2.5,
                       animations: {
            self.quiz.alpha = 1.0
        }, completion: {
            (completed: Bool)-> Void in
            
            self.fadeIn4()
        })
    
    }
    
    func fadeIn5(){
        UIView.animate(withDuration: 3.0,
                       animations: {
            self.news.alpha = 1.0
        }, completion: {
            (completed: Bool)-> Void in
            
            self.fadeIn5()
        })
    
    }
    
    }

