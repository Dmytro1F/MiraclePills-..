//
//  ViewController.swift
//  MiraclePills(..
//
//  Created by Dmytro Fedorov on 9/11/16.
//  Copyright © 2016 Dmytro Fedorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLbl: UILabel!
    
    @IBOutlet weak var countryText: UITextField!
    
    @IBOutlet weak var zipLbl: UILabel!
    
    @IBOutlet weak var zipText: UITextField!
    
    let states = ["Alaska", "Alabama", "Arizona", "Texas", "California", "New Yourk"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        
        statePicker.isHidden = false
        countryLbl.isHidden = true
        countryText.isHidden = true
        zipLbl.isHidden = true
        zipText.isHidden = true
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        
        statePicker.isHidden = true
        countryLbl.isHidden = false
        countryText.isHidden = false
        zipLbl.isHidden = false
        zipText.isHidden = false
        
    }
    

    
}

