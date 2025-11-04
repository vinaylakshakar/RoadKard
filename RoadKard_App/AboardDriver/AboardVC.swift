//
//  AboardVC.swift
//  RoadKard_App
//
//  Created by Silstone on 05/04/21.
//

import UIKit

class AboardVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func done(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

              let tabbar: UITabBarController? = (storyboard?.instantiateViewController(withIdentifier: "tabbar") as? UITabBarController)
                self.navigationController?.pushViewController(tabbar!, animated: true)

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
