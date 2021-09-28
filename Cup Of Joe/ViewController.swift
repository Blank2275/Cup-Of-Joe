//
//  ViewController.swift
//  Cup Of Joe
//
//  Created by Connor Reed on 9/10/21.
//

import UIKit

@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func scrollUp(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let aboutView = storyboard.instantiateViewController(identifier: "AboutScreen") as! AboutViewController
        self.present(aboutView, animated: true, completion: nil)
        
    }
    

}

