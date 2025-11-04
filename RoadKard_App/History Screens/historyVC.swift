//
//  historyVC.swift
//  RoadKard_App
//
//  Created by Silstone on 02/03/21.
//

import UIKit

class historyVC: UIViewController {

    @IBOutlet weak var container_Past: UIView!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var containerview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        containerview.isHidden = false
        container_Past.isHidden = true
        segment.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: UIControl.State.selected)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segment_Action(_ sender: UISegmentedControl) {
        if segment.selectedSegmentIndex == 0{
            containerview.isHidden = false
            container_Past.isHidden = true
        }
    else if segment.selectedSegmentIndex == 1{
        container_Past.isHidden = false
        containerview.isHidden = true

            }
    else {
        print("error")
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

}
