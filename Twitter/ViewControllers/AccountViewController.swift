//
//  AccountViewController.swift
//  Twitter
//
//  Created by Kay Lab on 5/5/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet weak var popup: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popup.layer.cornerRadius = 10
        popup.layer.masksToBounds = true

        // Do any additional setup after loading the view.
    }
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
//    TwitterAPICaller.client?.logout()
//    UserDefaults.standard.set(false, forKey: Key.userLoggedIn.rawValue)
//    self.dismiss(animated: true, completion: nil)
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
