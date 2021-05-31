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
        guard let infoListViewController
                = self.storyboard?.instantiateViewController(identifier: "InfoListViewController") as? InfoListViewController else { return }
        infoListViewController.listCategory = 1
        // 다음 뷰로 연결
        self.navigationController?.pushViewController(infoListViewController, animated: true)
    }
    @IBAction func CustomerAdminPageButtonPressed(_ sender: Any) {
        guard let infoListViewController
                = self.storyboard?.instantiateViewController(identifier: "InfoListViewController") as? InfoListViewController else { return }
        infoListViewController.listCategory = 2
        // 다음 뷰로 연결
        self.navigationController?.pushViewController(infoListViewController, animated: true)
    }
    @IBAction func orderAdminPageButtonPressed(_ sender: Any) {
        guard let infoListViewController
                = self.storyboard?.instantiateViewController(identifier: "InfoListViewController") as? InfoListViewController else { return }
        infoListViewController.listCategory = 3
        // 다음 뷰로 연결
        self.navigationController?.pushViewController(infoListViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigation bar 없애기
        self.navigationController?.title = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 뷰 클릭 시 키보드 내리기
        view.endEditing(true)
    }
}
