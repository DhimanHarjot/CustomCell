//
//  SliderTableViewCell.swift
//  CustomCell
//
//  Created by Canadore Student on 2023-04-03.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class SliderTableViewCell: UITableViewCell {
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var sliderValue: UILabel!
    @IBAction func sliderControl(_ sender: Any) {
        sliderValue.text = "\(Int(mySlider.value*100))"
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
