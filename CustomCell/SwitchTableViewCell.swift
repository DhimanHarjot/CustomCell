//
//  SwitchTableViewCell.swift
//  CustomCell
//
//  Created by Canadore Student on 2023-04-03.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    @IBOutlet weak var switchCell: UILabel!
    @IBAction func switchControl(_ sender: UISwitch) {
        if(sender.isOn == true){
            switchCell.text = "ON"
            }
            else{
               switchCell.text = "OFF"
            }
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
