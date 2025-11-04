//
//  TripPastVC.swift
//  RoadKard_App
//
//  Created by Silstone on 03/03/21.
//

import UIKit

class TripPastVC: UIViewController,UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func start_ride(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

            let VC1 = storyBoard.instantiateViewController(withIdentifier: "Start_TripVC") as! Start_TripVC
        
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 98
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tripPastCell", for: indexPath) as! tripPastCell
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

            let VC1 = storyBoard.instantiateViewController(withIdentifier: "Trip_AcceptVC") as! Trip_AcceptVC
        
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    
}
