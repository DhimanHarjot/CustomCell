//
//  ViewController.swift
//  CustomCell
//
//  Created by Canadore Student on 2023-03-29.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    
    var cellIdentifiers: [String] = ["labelCell","imageCell","segmentCell","progressCell","sliderCell", "stepperCell","switchCell","textfieldCell"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTable.delegate = self
        myTable.dataSource = self
        
        let labelCell = UINib(nibName: "LabelTableViewCell", bundle: nil)
        myTable.register(labelCell, forCellReuseIdentifier: "labelCell")
        
        let imageCell = UINib(nibName: "ImageTableViewCell", bundle: nil)
        myTable.register(imageCell, forCellReuseIdentifier: "imageCell")
        
        let segmentCell = UINib(nibName: "SegmentTableViewCell", bundle: nil)
        myTable.register(segmentCell, forCellReuseIdentifier: "segmentCell")
        
        let progressCell = UINib(nibName: "ProgressTableViewCell", bundle: nil)
        myTable.register(progressCell, forCellReuseIdentifier: "progressCell")
        
        let sliderCell = UINib(nibName: "SliderTableViewCell", bundle: nil)
        myTable.register(sliderCell, forCellReuseIdentifier: "sliderCell")
        
        let stepperCell = UINib(nibName: "StepperTableViewCell", bundle: nil)
        myTable.register(stepperCell, forCellReuseIdentifier: "stepperCell")
        
        let switchCell = UINib(nibName: "SwitchTableViewCell", bundle: nil)
        myTable.register(switchCell, forCellReuseIdentifier: "switchCell")
        
        let textfieldCell = UINib(nibName: "TextFieldTableViewCell", bundle: nil)
        myTable.register(textfieldCell, forCellReuseIdentifier: "textfieldCell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellIdentifiers.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected")
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: cellIdentifiers[indexPath.row], for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}

