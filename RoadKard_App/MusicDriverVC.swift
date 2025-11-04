//
//  MusicDriverVC.swift
//  RoadKard_App
//
//

import UIKit

class MusicDriverVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
     {
    
    @IBOutlet weak var bottomconstraint: NSLayoutConstraint!
    
//    var getdata4 : flowtype = .driverBtn

    var choiceView = ChoiceDriverVC()
    
    let arrayimage = [UIImage(named: "Fichier 2"),UIImage(named: "Fichier 2"),UIImage(named: "Fichier 1"),UIImage(named: "Fichier 2"),UIImage(named: "Fichier 22"),UIImage(named: "Fichier 22"),UIImage(named: "Fichier 21"),UIImage(named: "Fichier 19"),UIImage(named: "Fichier 3"),UIImage(named: "Fichier 15"),UIImage(named: "Fichier 13"),UIImage(named: "Fichier 11"),UIImage(named: "Fichier 9"),UIImage(named: "Fichier 7"),UIImage(named: "Fichier 6")]
    let arrData = ["70's","80's","90's","Afrobeat","Blues","Country","Electro","Gospel","HipHop","Jazz","Latin","Pop","R’n’B/Soul","Reggae","Rock"]
    var arrSelectedIndex = [IndexPath]() // This is selected cell Index array
    var arrSelectedData = [String]() // This is selected cell data array
    
    
    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reginib()
    }
    
    func reginib()
      {
        let nib = UINib(nibName: "MusicCell", bundle: nil)
        collection.register(nib, forCellWithReuseIdentifier: "MusicCell")
         
       }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MusicCell", for: indexPath) as! MusicCell
        cell.imagecell.image = arrayimage[indexPath.row]
        cell.labelcell.text = arrData[indexPath.row]
        if arrSelectedIndex.contains(indexPath) { // You need to check wether selected index array contain current index if yes then change the color
            cell.backView.backgroundColor = UIColor.white
        }
        else {
            cell.backView.backgroundColor = #colorLiteral(red: 0.3450980392, green: 0.7764705882, blue: 0.5607843137, alpha: 1)
        }

        cell.layoutSubviews()

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        let numberOfItemsPerRow: CGFloat = 5.0; print("")
        
        // iphone 11
        if view.frame.width == 414 && view.frame.height == 896 {

            let itemWidthtop = (collection.bounds.width - layout.minimumLineSpacing) / numberOfItemsPerRow
            let itemWidthdown = (collection.bounds.width - layout.minimumLineSpacing) / numberOfItemsPerRow

            return CGSize(width: 110, height: 110)

        }
        //iphone 8
        else if view.frame.width == 375 && view.frame.height == 667  {

            let itemWidthtop = (collection.bounds.width - layout.minimumLineSpacing) / numberOfItemsPerRow
            let itemWidthdown = (collection.bounds.width - layout.minimumLineSpacing) / numberOfItemsPerRow
            bottomconstraint.constant = 0
            
            return CGSize(width: 99, height: 99)

        }
        //iphone 8 plus
        else if view.frame.width == 414 && view.frame.height == 736  {

            let itemWidthtop = (collection.bounds.width - layout.minimumLineSpacing) / numberOfItemsPerRow
            let itemWidthdown = (collection.bounds.width - layout.minimumLineSpacing) / numberOfItemsPerRow
            bottomconstraint.constant = 0

            return CGSize(width: 110, height: 110)

        }

        
        return CGSize(width: collection.bounds.width/3, height: collection.bounds.height/3)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.item)!")

        let strData = arrData[indexPath.item]

        if arrSelectedIndex.contains(indexPath) {
            arrSelectedIndex = arrSelectedIndex.filter { $0 != indexPath}
            arrSelectedData = arrSelectedData.filter { $0 != strData}
        }
        else {
            arrSelectedIndex.append(indexPath)
            arrSelectedData.append(strData)
        }

        collectionView.reloadData()
    }


    @IBAction func backward_VIEW(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let VC1 = storyBoard.instantiateViewController(withIdentifier: "Music_RideVC") as! Music_RideVC
        self.navigationController?.popViewController(animated: true)

    }
    
    @IBAction func forward_Action(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let VC1 = storyBoard.instantiateViewController(withIdentifier: "CarProfileVC") as! CarProfileVC
        
        self.navigationController?.pushViewController(VC1, animated: true)

//        if self.getdata4 == .driverBtn {
        
//        }
//        else  {
//            let VC1 = storyBoard.instantiateViewController(withIdentifier: "CarProfileVC") as! CarProfileVC
//            self.navigationController?.pushViewController(VC1, animated: true)
//
//        }
        
    }
    


}
