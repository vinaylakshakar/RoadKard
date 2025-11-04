//
//  ChatViewController.swift
//  RoadKard_App
//
//  Created by Silstone on 14/01/21.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "ChatViewCell", bundle: nil)
        table.register(nib, forCellReuseIdentifier: "ChatViewCell")
        let nib1 = UINib(nibName: "ReceiveViewCell", bundle: nil)
        table.register(nib1 , forCellReuseIdentifier: "ReceiveViewCell")
//        self.table.estimatedRowHeight = 83.0

        self.table.rowHeight = UITableView.automaticDimension

    }

     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell =  tableView.dequeueReusableCell(withIdentifier: "ChatViewCell", for: indexPath) as! ChatViewCell
        
        if (indexPath.row % 2 == 0)  {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "ChatViewCell", for: indexPath) as! ChatViewCell
            
            cell1.label.text = "Yeah, lol ! I moved in here I’ll be waiting for you next to the theater Yeah ! "
            
            cell1.label.numberOfLines = 0
           cell1.label.autoresizingMask = [.flexibleWidth, .flexibleHeight]

//
//
            cell1.label.sizeToFit()
            
            return cell1

        }
        else if (indexPath.row % 2 == 1) {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "ReceiveViewCell", for: indexPath) as! ReceiveViewCell
            cell2.lbl.text = "Yeah, lol ! I moved in here I’ll be waiting for you next to the theater Yeah!"
            
            cell2.lbl.numberOfLines = 0



            cell2.lbl.sizeToFit()

            return cell2

        }
        else {
            print("error")
        }
        
        return cell
    }


    @IBAction func profile_Open(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC2 = storyBoard.instantiateViewController(withIdentifier: "Profile_DriverVC") as! Profile_DriverVC
        self.navigationController?.pushViewController(VC2, animated: true)

        
    }
    @IBAction func back_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC2 = storyBoard.instantiateViewController(withIdentifier: "MessagesVC") as! MessagesVC
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
