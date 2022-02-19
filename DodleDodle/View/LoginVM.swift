//
//  LoginVM.swift
//  DodleDodle
//
//  Created by 김지나 on 2022/02/19.
//

import Foundation

class LoginVM: NSObject {
    var user: User!
    var email: String { return user.email }
    var password: String { return user.password }
    
    typealias loginAuthCallBack = (_ email: String, _ password: String) -> Void
    var callBack: loginAuthCallBack?
    
    private func authenticateLogin() {
        
    }
    
    
}
