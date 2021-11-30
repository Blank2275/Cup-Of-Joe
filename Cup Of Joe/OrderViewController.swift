//
//  OrderViewController.swift
//  Cup Of Joe
//
//  Created by Connor Reed on 9/27/21.
//

import UIKit
import SafariServices
import AppTrackingTransparency

class OrderViewController: UIViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func showOrderForm(_ sender: Any) {
        if(true){
            let url = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSc7ffULb4lLTm2fI8xPYLhdKWsS2JGsxcecygpmJTkH_eztkw/viewform?usp=sf_link")
            let svc = SFSafariViewController(url: url!)
            svc.delegate = self
            
            var permissionToTrack = false
            if ATTrackingManager.trackingAuthorizationStatus == .authorized{
                permissionToTrack = true
            }
            if permissionToTrack{
                self.present(svc, animated: true, completion: nil)
            } else {
                let alertController = UIAlertController(title: "Please authorize tracking", message: "You cannot order until you authorize tracking in settings", preferredStyle: .alert)
                let dismissAction = UIAlertAction(title: "dismiss", style: .cancel, handler: nil)
                alertController.addAction(dismissAction)
                self.present(alertController, animated: true, completion: nil)
            }
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
