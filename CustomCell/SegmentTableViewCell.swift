//
//  SegmentTableViewCell.swift
//  CustomCell
//
//  Created by Canadore Student on 2023-03-29.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class SegmentTableViewCell: UITableViewCell {

    @IBOutlet weak var segmentResult: UILabel!
    
    @IBOutlet weak var mySegment: UISegmentedControl!
    
    @IBAction func segmentChanged(_ sender: Any) {
        if(mySegment.selectedSegmentIndex == 0){
            segmentResult.text = "First"
        }
        else{
            segmentResult.text = "Second"
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
