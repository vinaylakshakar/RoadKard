//
//  PriceDriverVC.swift
//  RoadKard_App
//
//  Created by Silstone on 18/01/21.
//

import UIKit

class PriceDriverVC: UIViewController {
    
    @IBOutlet weak var amountLabel: UILabel!
    var increamentOrDecreamentValue = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func next_vc(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

            let VC1 = storyBoard.instantiateViewController(withIdentifier: "TripSummaryDriverVC") as! TripSummaryDriverVC
        
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    
    @IBAction func minus_Action(_ sender: Any) {
        if(increamentOrDecreamentValue != 0){
            increamentOrDecreamentValue -= 1;
        }
        self.amountLabel.text = "$\(increamentOrDecreamentValue)"

    }
    
    @IBAction func plus_Action(_ sender: Any) {
        increamentOrDecreamentValue += 1
        self.amountLabel.text = "$\(increamentOrDecreamentValue)"

    }
    @IBAction func back_Action(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
