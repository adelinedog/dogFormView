//
//  DogFormView.swift
//  DogTay1
//
//  Created by Ann Mei Tay on 09/06/2022.
//

import UIKit

public class DogFormView: UIView, UITextFieldDelegate {
    
    @IBOutlet var txtField1: UITextField!
    @IBOutlet var txtField2: UITextField!
    @IBOutlet var txtField3: UITextField!
    @IBOutlet var txtField4: UITextField!
    
    var mainViewController: UIViewController? = nil

    public class func instanceFromNib() -> DogFormView {
        let bundle = Bundle(identifier: "org.cocoapods.DogTay1")
        let nibView = bundle?.loadNibNamed("DogFormView", owner: self, options: nil)?.first as! DogFormView
        return nibView
    }
    
    public func setupGoldy(vc: UIViewController) {
        let txtFieldArray: [UITextField] = [txtField1, txtField2, txtField3, txtField4]
        
        for item in txtFieldArray {
            item.layer.borderWidth = 1.0
            item.layer.borderColor = UIColor.systemGray5.cgColor
            item.delegate = self
        }
        
        mainViewController = vc
    }

    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func button(_ sender: Any) {
        let breed: String = txtField1.text ?? ""
        let dogName: String = txtField2.text ?? ""
        let colorStr: String = txtField3.text ?? ""
        let gender: String = txtField4.text ?? ""
        var msg: String = ""
        
        if (gender == "Female") || (gender == "female") || (gender == "FEMALE") || (gender == "F") || (gender == "f") {
            msg = breed + " is a good dog. She is beautiful and has " + colorStr + " color."
        } else if (gender == "Male") || (gender == "male") || (gender == "MALE") || (gender == "M") || (gender == "m") {
            msg = breed + " is a good dog. He is intelligent. He has " + colorStr + " color."
        } else {
            msg = breed + " is a good dog"
        }
        
        let alert = UIAlertController(title: dogName, message: msg, preferredStyle: UIAlertController.Style.alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: {
            (alert: UIAlertAction) in
        })
        alert.addAction(ok)
        
        if mainViewController != nil {
            mainViewController!.present(alert, animated: true, completion: nil)
        }
    }

}
