//
//  ViewController.swift
//  pizzaAdministratorApp
//
//  Created by 선민승 on 2021/05/30.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func loginButtonPressed(_ sender: Any) {
        guard let adminPageHomeViewController = self.storyboard?.instantiateViewController(identifier: "AdminPageHomeViewController") as? AdminPageHomeViewController else {
            return
        }
        
        // 다음 뷰로 연결
        self.navigationController?.pushViewController(adminPageHomeViewController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigation bar 없애기
        self.navigationController?.isNavigationBarHidden = true
    }


}

