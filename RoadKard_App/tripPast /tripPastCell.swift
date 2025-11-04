//
//  tripPastCell.swift
//  RoadKard_App
//
//  Created by Silstone on 03/03/21.
//

import UIKit

class tripPastCell: UITableViewCell {

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var accept_lbl: UILabel!
    @IBOutlet weak var decline_lbl: UILabel!
    @IBOutlet weak var accept: UIButton!
    @IBOutlet weak var decline: UIButton!
    @IBOutlet weak var lbl_confirm: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        decline.isHidden = false
        accept.isHidden = false
        lbl_confirm.isHidden = true
        decline_lbl.isHidden = false
        accept_lbl.isHidden = false
        accept.addTarget(self, action: #selector(show_Status), for: .touchUpInside)
        decline.addTarget(self, action: #selector(show_Status_decline), for: .touchUpInside)
        backView.layer.backgroundColor = #colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    @objc func show_Status() {
        decline.isHidden = true
        accept.isHidden = true
        lbl_confirm.isHidden = false
        decline_lbl.isHidden = true
        accept_lbl.isHidden = true
        backView.layer.backgroundColor = #colorLiteral(red: 0.4025550187, green: 0.8069145679, blue: 0.6286456585, alpha: 1)
    }
    @objc func show_Status_decline() {
        decline.isHidden = true
        accept.isHidden = true
        lbl_confirm.isHidden = false
        lbl_confirm.text = "Decline"
        decline_lbl.isHidden = true
        accept_lbl.isHidden = true
        backView.layer.backgroundColor = #colorLiteral(red: 0.7803921569, green: 0.3215686275, blue: 0.2666666667, alpha: 0.27)

    }

}
