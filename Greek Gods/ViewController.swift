//
//  ViewController.swift
//  Greek Gods
//
//  Created by Matt on 8/28/18.
//  Copyright © 2018 Aguilar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gold: UIColor!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var odyssey: UIButton!
    @IBOutlet weak var underworld: UIButton!
    @IBOutlet weak var rename: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        gold = view.backgroundColor
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetView(_ sender: Any) {
        textLabel.text = "Mount Olympus"
        textLabel.textColor = UIColor.white
        odyssey.titleLabel?.textColor = UIColor.white
        underworld.titleLabel?.textColor = UIColor.white
        rename.titleLabel?.textColor = UIColor.white
        view.backgroundColor = gold
        textField.resignFirstResponder()
    }
    
    @IBAction func changeTxtColor(_ sender: Any) {
        textLabel.textColor = UIColor.red
    }
    @IBAction func changeTheme(_ sender: Any) {
        view.backgroundColor = UIColor.black
        odyssey.titleLabel?.textColor = UIColor.red
        underworld.titleLabel?.textColor = UIColor.red
        rename.titleLabel?.textColor = UIColor.red
    }
    @IBAction func changeText(_ sender: Any) {
        if (textField.text?.isEmpty)! {
            textLabel.text = "Mount Othrys"
            textLabel.textAlignment = NSTextAlignment.center
        }
        else {
            textLabel.text = textField.text
            textLabel.textAlignment = NSTextAlignment.center
            textField.text = ""
            view.endEditing(true)
        }
    }
}





