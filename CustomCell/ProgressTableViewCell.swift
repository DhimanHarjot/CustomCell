//
//  ProgressTableViewCell.swift
//  CustomCell
//
//  Created by Canadore Student on 2023-04-03.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ProgressTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ProgressValue: UILabel!
    
    @IBOutlet weak var myProgress: UIProgressView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        ProgressValue.text = "\(Int(myProgress.progress*100))%"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
