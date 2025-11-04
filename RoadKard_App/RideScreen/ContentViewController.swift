//
//  ContentViewController.swift
//  RoadKard_App
//
//  Created by Silstone on 07/01/21.
//

import UIKit

class ContentViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "ContentCell", for: indexPath) as? ContentCell

        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 202
    }
    

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     print("You tapped cell number \(indexPath.section).")
     print("Cell cliked value is \(indexPath.row)")

     if(indexPath.row == 0)
     {
     let storyboard = UIStoryboard(name: "Main", bundle: nil)

     let controller = storyboard.instantiateViewController(withIdentifier: "Trip_AcceptVC") as! Trip_AcceptVC

     self.navigationController?.pushViewController(controller, animated: true)

     }
     else {
        print("next")
     }
   }
//    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
//    }
//    */

}
