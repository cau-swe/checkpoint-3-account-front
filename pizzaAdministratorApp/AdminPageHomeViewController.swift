//
//  AdminPageHomeViewController.swift
//  pizzaAdministratorApp
//
//  Created by 선민승 on 2021/05/31.
//

import UIKit

class AdminPageHomeViewController: UIViewController {

    @IBAction func menuAdminPageButtonPressed(_ sender: Any) {
        guard let menuAdminPageViewController
 = self.storyboard?.instantiateViewController(identifier: "MenuAdminPageViewController") as? MenuAdminPageViewController else { return }
        
        // 다음 뷰로 연결
        self.navigationController?.pushViewController(        menuAdminPageViewController, animated: true)
    }
    @IBAction func employeeAdminPageButtonPressed(_ sender: Any) {
        
    }
    @IBAction func CustomerAdminPageButtonPressed(_ sender: Any) {
    }
    @IBAction func orderAdminPageButtonPressed(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
