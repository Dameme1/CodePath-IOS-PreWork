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
    @IBOutlet weak var feelingSegmentedControl: UISegmentedControl!
    
    let defaultFname = UserDefaults.standard
    let defaultLname = UserDefaults.standard
    let defaultYear = UserDefaults.standard
    let defaultFeeling = UserDefaults.standard
    let defaultPets = UserDefaults.standard
    let defaultMorePets = UserDefaults.standard
    
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
                
                //The year the user inputed
                let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
                
                //lets us choose the feeling that we have chosen on the segmented control
                let feeling = feelingSegmentedControl.titleForSegment(at: feelingSegmentedControl.selectedSegmentIndex)
                // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
                // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
                let introduction = """
                My name is \(firstNameText.text!) \(lastNameText.text!) and I attend \(schoolNameText.text!). I am feeling \(feeling!) right now. I am currently in my \(year!) year and I own \(numberOfPet.text!) dogs. It is \(morePetSwitch.isOn) that I want more pets.
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
        // Do any additional setup after loading the view.
    }


}

