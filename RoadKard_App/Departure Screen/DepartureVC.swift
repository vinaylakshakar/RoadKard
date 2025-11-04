//
//  DepartureVC.swift
//  RoadKard_App
//
//  Created by Silstone on 15/01/21.
//

import UIKit

class DepartureVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.layer.backgroundColor = UIColor.clear.cgColor
        

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "departureCell", for: indexPath) as! departureCell
        
        return cell
    }

}
