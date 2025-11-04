//
//  MainVC.swift
//  RoadKard_App
//
//  Created by Silstone on 10/01/21.
//

import UIKit

class MainVC: UIViewController {
    
    
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var segment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view1.isHidden = false
        view2.isHidden = true

    }
    
    @IBAction func action_Segment(_ sender: UISegmentedControl) {
        
        if segment.selectedSegmentIndex == 0{
            view1.isHidden = false
            view2.isHidden = true
        }
    else if segment.selectedSegmentIndex == 1{
                view2.isHidden = false
                view1.isHidden = true

            }
    else {
        print("error")
         }
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


extension UISegmentedControl
{

    func defaultConfiguration(font: UIFont = UIFont.systemFont(ofSize: 21), color: UIColor = UIColor.black)
    {
        let defaultAttributes = [
            NSAttributedString.Key.font: font,
            NSAttributedString.Key.foregroundColor: color
        ]
        setTitleTextAttributes(defaultAttributes, for: .normal)
    }

    func selectedConfiguration(font: UIFont = UIFont.boldSystemFont(ofSize: 21), color: UIColor = UIColor.white)
    {
        let selectedAttributes = [
            NSAttributedString.Key.font: font,
            NSAttributedString.Key.foregroundColor: color
        ]
        setTitleTextAttributes(selectedAttributes, for: .selected)
    }
}
