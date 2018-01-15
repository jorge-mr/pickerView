//
//  ViewController.swift
//  pickerView
//
//  Created by Jorge MR on 14/01/18.
//  Copyright © 2018 jorge_a_mtz_r. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   
    @IBOutlet weak var diaLabel: UILabel!
    @IBOutlet weak var mesLabel: UILabel!
    
    var components : [String] = ["1","2","3","4","5","6","7","8","9","10"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mesLabel.text = ""
        diaLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
        return components.count
        } else if component == 1 {
            return 5
        } else {
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return components[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            diaLabel.text = components[row]
        } else {
            mesLabel.text = components[row]
        }
    }
    

}

