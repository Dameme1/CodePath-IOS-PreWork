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
                
                // Let's us chose the title we have selected from the segmented control
                let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
                
                // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
                // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
                let introduction = """
                My name is \(firstNameText.text!) \(lastNameText.text!) and I attend \(schoolNameText.text!). I am currently in my \(year!) year and I own \(numberOfPet.text!) dogs. It is \(morePetSwitch.isOn) that I want more pets.
                """
                // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
            }
        
        
    @IBAction func stepperDidChange(_ sender: UIStepper) {
          
          numberOfPet.text = "\(Int(sender.value))"
      }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

