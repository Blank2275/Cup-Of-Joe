//
//  MenuSelectViewController.swift
//  Cup Of Joe
//
//  Created by Connor Reed on 9/24/21.
//

import UIKit

class MenuSelectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func studentMenu(_ sender: Any) {
        student = true
    }
    @IBAction func staffMenu(_ sender: Any) {
        student  = false
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
