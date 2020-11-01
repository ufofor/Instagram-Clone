//
//  ViewController.swift
//  Instagram
//
//  Created by Sean Kang on 2020/09/17.
//  Copyright © 2020 myname. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
handleNotAuthenticated()
        
        
    }
    
    private func handleNotAuthenticated() {
        // Check auth status
        
        if Auth.auth().currentUser == nil {
            // Show log in
            
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            
            present(loginVC, animated: false)
        }
    }


}

