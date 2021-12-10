//
//  ViewController.swift
//  Cup Of Joe
//
//  Created by Connor Reed on 9/10/21.
//

import UIKit
import AppTrackingTransparency
import SafariServices

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

class PrivacyPolicyViewController: SFSafariViewController{
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        ATTrackingManager.requestTrackingAuthorization(){status in
            var resText:String = ""
            switch status{
            case .authorized:
                resText = "You may now order"
                break
            case .denied:
                resText = "Please allow in settings to order"
            default:
                break
            }
        }
    }
}

class ViewController: UIViewController, SFSafariViewControllerDelegate
{

    override func viewDidLoad() {
        super.viewDidLoad()
        let alertController = UIAlertController(title: "Privacy Policy", message: "Please read how we use your data", preferredStyle: .alert)
        /*let dismissAction = UIAlertAction(title: "dismiss", style: .cancel){_ in
            self.requestTracking()
        }
        alertController.addAction(dismissAction)*/
        let showTermsAction = UIAlertAction(title: "terms", style: .default){_ in
            let url = URL(string: "https://sites.google.com/psdschools.org/cupofjoe/home")
            let svc = PrivacyPolicyViewController(url: url!)
            svc.delegate = self
            self.present(svc, animated: true){
                //self.requestTracking()
            }
        }
        alertController.addAction(showTermsAction)
        if ATTrackingManager.trackingAuthorizationStatus == .notDetermined{
            //self.present(alertController, animated: true){
                //self.requestTracking()
            //}
        }
        
        // Do any additional setup after loading the view.
    }
    @IBAction func scrollUp(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let aboutView = storyboard.instantiateViewController(identifier: "AboutScreen") as! AboutViewController
        self.present(aboutView, animated: true, completion: nil)
        
    }
    func requestTracking(){
        DispatchQueue.main.async {
        }
    }

}

