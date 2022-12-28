//
//  ViewController.swift
//  introCodePath
//
//  Created by Tameem Ahmed on 12/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var schoolNameText: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPet: UILabel!
    @IBOutlet weak var numberOfPetStepper: UIStepper!
    @IBOutlet weak var morePetSwitch: UISwitch!
    @IBOutlet weak var introduceButton: UIButton!
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
                
                //The year the user inputed
                let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
                
                //This creates a string, inserts all the values that we have obtained from the user all into one sentence. 
                let introduction = """
                My name is \(firstNameText.text!) \(lastNameText.text!) and I attend \(schoolNameText.text!). I am currently in my \(year!) year and I own \(numberOfPet.text!) dogs. It is \(morePetSwitch.isOn) that I want more pets.
                """
                // Creates the pop-up (the alert) that displays our introduction
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // This puts "Nice to meet you" in the text box of the dismiss button on the pop up 
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
                //allows the pop up (alert) to be dismissed 
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
            }
        
        
    @IBAction func stepperDidChange(_ sender: UIStepper) {
                //This sets the text in the "numberOfPet" label as the integer value of the stepper. Allows us to increase or decrease our pets. 
                numberOfPet.text = "\(Int(sender.value))"
      }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Does any additional setup after loading the view.
    }


}

