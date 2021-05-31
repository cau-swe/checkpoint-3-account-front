//
//  MenuAdminPageViewController.swift
//  pizzaAdministratorApp
//
//  Created by 선민승 on 2021/05/31.
//

import UIKit

class MenuAdminPageViewController: UIViewController{

    let menuList:[String] = ["치즈 피자", "베이컨 피자", "치킨 피자", "페퍼로니 피자", "포테이토 피자"]
    let imageList: [String] = ["pizza1","pizza2","pizza3","pizza4","pizza5"]
    
    @IBOutlet var menuTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView.dataSource = self
    }
    
}

extension MenuAdminPageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GeneralTableViewCell") as? GeneralTableViewCell else {
            return UITableViewCell()
        }
        cell.selectionStyle = .none
        cell.pizzaImage.image = UIImage(named: imageList[indexPath.row])
        cell.pizzaName.text = menuList[indexPath.row]
        return cell

    }
    
    
    
}
