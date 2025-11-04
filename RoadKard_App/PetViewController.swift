//
//  PetViewController.swift
//  RoadKard_App
//
//  Created by Silstone on 18/01/21.
//

import UIKit

class PetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backward_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let VC1 = storyBoard.instantiateViewController(withIdentifier: "PreferencesDriverVC") as! PreferencesDriverVC
        self.navigationController?.popViewController(animated: true)

    }
    
    @IBAction func forward_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "ChattyViewController") as! ChattyViewController
        self.navigationController?.pushViewController(VC1, animated: true)

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
