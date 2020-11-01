//
//  AuthManager.swift
//  Instagram
//
//  Created by Sean Kang on 2020/09/18.
//  Copyright © 2020 myname. All rights reserved.
//

import FirebaseAuth

public class AuthManager {
    static let shared = AuthManager()
    
    // Public
    
    public func registerNewUser(username: String, email: String, password: String) {
        
    }
    
    public func loginUser(username: String?, email: String?, password: String, completion: @escaping (Bool) -> Void) {
        if let email = email {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, err in
                guard authResult != nil, err == nil else {
                    completion(false)
                    return
                }
                completion(true)
            }
        }
        else if let username = username {
            print(username)
        }
    }

}
