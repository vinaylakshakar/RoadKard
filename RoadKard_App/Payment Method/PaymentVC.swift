//
//  PaymentVC.swift
//  RoadKard_App
//
//  Created by Silstone on 11/01/21.
//

import UIKit

class PaymentVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var payment_lbl: UILabel!
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "PaymentCell3", bundle: nil)
        table.register(nib, forCellReuseIdentifier: "PaymentCell3")
         let nib2 = UINib(nibName: "PaymentCell1", bundle: nil)
        table.register(nib2, forCellReuseIdentifier: "PaymentCell1")
        let nib1 = UINib(nibName: "PaymentCell2", bundle: nil)
        table.register(nib1 , forCellReuseIdentifier: "PaymentCell2")
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 3
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "PaymentCell3")

        if (indexPath.row == 0)  {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "PaymentCell3", for: indexPath) as! PaymentCell3
            
            cell1.image2.image = #imageLiteral(resourceName: "Visa")

             return cell1

         }
       else if (indexPath.row == 1)  {
             let cell2 = tableView.dequeueReusableCell(withIdentifier: "PaymentCell1", for: indexPath) as! PaymentCell1
            cell2.image2.image = #imageLiteral(resourceName: "Mastercard")
             return cell2

         }
       else if (indexPath.row == 2)  {

             let cell3 = tableView.dequeueReusableCell(withIdentifier: "PaymentCell2", for: indexPath) as! PaymentCell2
        
        cell3.btn.addTarget(self, action: #selector(connected), for: .touchUpInside)
             return cell3

         }
         
         else {
            
             print("error")
         }
         
        return cell!

            }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 90
    }

//    @IBAction func action(_ sender: Any) {
//
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//
//            let VC1 = storyBoard.instantiateViewController(withIdentifier: "TripSummaryDriverVC") as! TripSummaryDriverVC
//
//        self.navigationController?.pushViewController(VC1, animated: true)
//
//    }
    
    @objc func connected(sender: UIButton!) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

            let VC1 = storyBoard.instantiateViewController(withIdentifier: "AddCardVC") as! AddCardVC
        
        self.navigationController?.pushViewController(VC1, animated: true)

        }

    @IBAction func action_pay(_ sender: Any) {
        self.tabBarController?.tabBar.isHidden = false
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

            let VC1 = storyBoard.instantiateViewController(withIdentifier: "RidesVC") as! RidesVC
        
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
