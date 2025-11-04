//
//  SeatVC.swift
//  RoadKard_App
//
//  Created by Silstone on 11/01/21.
//

import UIKit

class SeatVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var someLabel: UILabel!
    let array = [UIImage(named: "Number of seats Transparent"),UIImage(named: "Number of seats Opaque"),UIImage(named: "Number of seats Transparent")]
    
    var increamentOrDecreamentValue = 0

var  currentPage = 00
    
    @IBOutlet weak var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.tabBarController?.tabBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SeatCell",
                                                      for: indexPath) as! SeatCell

        cell.images.image = array[indexPath.row]
        return cell

    }
    
    @IBAction func backAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func didTapBack(_ sender: Any) {
        
        if(increamentOrDecreamentValue != 0){
            increamentOrDecreamentValue -= 1;
        }
        self.someLabel.text = "\(increamentOrDecreamentValue)"
//        let indexPath = IndexPath(item: currentPage - 1, section: 0)
//        collection.scrollToItem(at: indexPath, at: .left, animated: true)
    }

    @IBAction func didTapForward(_ sender: Any) {
//        if (self.someLabel.text == "1") {
        increamentOrDecreamentValue += 1
        self.someLabel.text = "\(increamentOrDecreamentValue)"
//            self.someLabel.text = String( 1)

        }
    

    @IBAction func next_VC(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

            let VC1 = storyBoard.instantiateViewController(withIdentifier: "PriceDriverVC") as! PriceDriverVC
        
        self.navigationController?.pushViewController(VC1, animated: true)

    }
}
