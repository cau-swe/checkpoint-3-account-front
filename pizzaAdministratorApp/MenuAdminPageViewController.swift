//
//  MenuAdminPageViewController.swift
//  pizzaAdministratorApp
//
//  Created by 선민승 on 2021/05/31.
//

import UIKit

class MenuAdminPageViewController: UIViewController{

    let menuList:[String] = ["치즈 피자", "베이컨 피자", "치킨 피자", "페퍼로니 피자", "포테이토 피자"]
    let menuDetail:[String] = ["#토마토 소스와 풍부한 모차렐라", "#베이컨 매니아들의 원 픽", "#짭짤한 풍미가 일품", "#다채로운 토핑의 미국 피자 오리진 스타일", "#No.1 레전드"]
    
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
        cell.pizzaDetail.text = menuDetail[indexPath.row]
        return cell

    }
    
    
    
}
