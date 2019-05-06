//
//  LoginViewController.swift
//  Twitter
//
//  Created by Kay Lab on 4/28/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginBox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBox.layer.cornerRadius = 20
        loginBox.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: Key.userLoggedIn.rawValue) == true {
            self.performSegue(withIdentifier: Identifier.loginToHome.rawValue, sender: self)
        }
    }
    
    @IBAction func onLoginButton(_ sender: Any) {
        let apiURL = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(url: apiURL, success: {
            UserDefaults.standard.set(true, forKey: Key.userLoggedIn.rawValue)
            self.performSegue(withIdentifier: Identifier.loginToHome.rawValue, sender: self)
        }, failure: { (Error) in
            print("Could not login")
        })
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
