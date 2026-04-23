//
//  ViewController.swift
//  Find My Age 2
//
//  Created by Lazuardi Mahendra on 4/10/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
   
    @IBOutlet weak var viewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func countButton(_ sender: Any) {
        
        let birthDate = self.datePicker.date
        
        let today = Date()
        
        if (birthDate >= today){
            let alertController = UIAlertController(title : "Error", message: "Please enter a valid date", preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "yes", style: .default, handler: nil)
            
            alertController.addAction(alertAction)
            self.present(alertController, animated: true, completion: nil)
        }
            
            let calendar = Calendar.current
            let component  = calendar.dateComponents([.year, .month, .day], from: birthDate, to: today)
            
            guard let ageYears = component.year else {return}
            guard let ageMonth = component.month else {return}
            guard let ageDay = component.day else {return}
            
            self.ageLabel.text = "\(ageYears) years, \(ageMonth) month, \(ageDay) day"

        }
    }
    


