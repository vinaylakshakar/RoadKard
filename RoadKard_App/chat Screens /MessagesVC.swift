//
//  MessagesVC.swift
//  RoadKard_App
//
//  Created by Silstone on 11/01/21.
//

import UIKit

class MessagesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.separatorColor = UIColor.clear
        // Do any additional setup after loading the view.
    }
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath) as! MessageCell
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 109
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     print("You tapped cell number \(indexPath.section).")
     print("Cell cliked value is \(indexPath.row)")

     if(indexPath.row == 0)
     {
     let storyboard = UIStoryboard(name: "Main", bundle: nil)

     let controller = storyboard.instantiateViewController(withIdentifier: "ChatViewController") as! ChatViewController

     self.navigationController?.pushViewController(controller, animated: true)

     }
     else {
        print("next")
     }
   }
}
