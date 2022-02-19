//
//  ViewController.swift
//  DodleDodle
//
//  Created by 김지나 on 2022/02/12.
//

import UIKit
import Lottie

class LoginVC: UIViewController {
    
    @IBOutlet weak var lottieView: UIView!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var autoLoginCheckBoxBtn: UIButton!
    @IBOutlet weak var findAccountBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       initUI()
    }
    
    // 초기 UI 세팅
    func initUI() {
        // 로티
        let loginLottieView = AnimationView.init(name: "lf30_editor_ogwlss9s")
        loginLottieView.frame = lottieView.bounds
        loginLottieView.loopMode = .loop
        lottieView.addSubview(loginLottieView)
        loginLottieView.play()
        
        // 이메일 입력필드 패딩
        let emailPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: emailTF.frame.height))
        emailTF.leftView = emailPaddingView
        emailTF.leftViewMode = .always
        emailTF.attributedPlaceholder = NSAttributedString (
            string: "email",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 116/255.0, green: 116/255.0, blue: 116/255.0, alpha: 1)]
        )
        
        // 비밀번호 입력필드 패딩
        passwordTF.attributedPlaceholder = NSAttributedString (
            string: "password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 116/255.0, green: 116/255.0, blue: 116/255.0, alpha: 1)]
        )
        let pwPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: emailTF.frame.height))
        passwordTF.leftView = pwPaddingView
        passwordTF.leftViewMode = .always
        
        // 자동로그인
        autoLoginCheckBoxBtn.layer.cornerRadius = 4
        autoLoginCheckBoxBtn.layer.borderWidth = 1
        autoLoginCheckBoxBtn.layer.borderColor = UIColor(red: 222/255.0, green: 222/255.0, blue: 222/255.0, alpha: 1).cgColor
        
        // 로그인, 회원가입 버튼
        signInBtn.layer.cornerRadius = 23
        signInBtn.layer.borderWidth = 1
        signInBtn.layer.borderColor = UIColor(red: 222/255.0, green: 222/255.0, blue: 222/255.0, alpha: 1).cgColor
        signUpBtn.layer.cornerRadius = 23
        signUpBtn.layer.borderWidth = 1
        signUpBtn.layer.borderColor = UIColor(red: 222/255.0, green: 222/255.0, blue: 222/255.0, alpha: 1).cgColor
    }
}

