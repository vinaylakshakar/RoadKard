//
//  DatePickerVC.swift
//  RoadKard_App
//
//  Created by Silstone on 19/01/21.
//

import UIKit

@available(iOS 14.0, *)
class DatePickerVC: UIViewController {
    
    @IBOutlet weak var picker: UIView!
    var datePicker: UIDatePicker?
    var datePickerConstraints = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .dark
        datePicker?.backgroundColor = .black
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        datePicker?.preferredDatePickerStyle = .inline
        datePicker?.setValue(UIColor.red, forKeyPath: "textColor")
        datePicker?.setValue(false, forKey: "highlightsToday")
        showDatePicker()

    }
    
    @available(iOS 14.0, *)
    func showDatePicker() {
        datePicker = UIDatePicker()
        datePicker?.date = Date()
        datePicker?.locale = .current
        datePicker?.preferredDatePickerStyle = .inline
        datePicker?.addTarget(self, action: #selector(handleDateSelection), for: .valueChanged)
        addDatePickerAsSubview()
    }
      
    @available(iOS 14.0, *)
    func addDatePickerAsSubview() {
        guard let datePicker = datePicker else { return }
        self.view.addSubview(datePicker)
        self.inputView?.backgroundColor  = UIColor.white
        datePicker.tintColor = .systemGreen
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        updateDatePickerConstraints()
    }
    
    @available(iOS 14.0, *)
    func updateDatePickerConstraints() {
        guard let datePicker = datePicker else { return }
        
        // Remove any previously set constraints.
        self.picker.removeConstraints(datePickerConstraints)
        datePickerConstraints.removeAll()
        
        // Set new constraints depending on the date picker style.
        datePickerConstraints.append(datePicker.centerYAnchor.constraint(equalTo: self.picker.centerYAnchor, constant: 0))
        
        if datePicker.preferredDatePickerStyle != .inline {
            datePickerConstraints.append(datePicker.centerXAnchor.constraint(equalTo: self.picker.centerXAnchor))
        } else {
            datePickerConstraints.append(datePicker.leadingAnchor.constraint(equalTo: self.picker.leadingAnchor, constant: 0))
            datePickerConstraints.append(datePicker.trailingAnchor.constraint(equalTo: self.picker.trailingAnchor, constant: 0))
        }
        
        // Activate all constraints.
        NSLayoutConstraint.activate(datePickerConstraints)
    }
    
    @objc func handleDateSelection() {
        guard let picker = datePicker else { return }
        print("Selected date/time:", picker.date)
    }
    

    @IBAction func back_Action(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)

    }
    @IBAction func action_Destination(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

            let VC1 = storyBoard.instantiateViewController(withIdentifier: "DestinationVC") as! DestinationVC
        
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    

}
