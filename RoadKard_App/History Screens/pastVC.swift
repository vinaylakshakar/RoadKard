//
//  pastVC.swift
//  RoadKard_App
//
//  Created by Silstone on 02/03/21.
//

import UIKit

class pastVC: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.separatorColor = UIColor.clear
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 200

        }
        else if indexPath.row == 1 {
            return 200
        }
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "pastCell", for: indexPath) as! pastCell
            return cell

        }
        else if indexPath.row == 1 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "pastCell1", for: indexPath) as! pastCell1
            return cell1

        }
        return UITableViewCell()
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
