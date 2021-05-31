//
//  ReviewCheckViewController.swift
//  pizzaAdministratorApp
//
//  Created by 선민승 on 2021/05/31.
//

import UIKit

class InfoListViewController: UIViewController {

    @IBOutlet var infoListTableView: UITableView!
    @IBOutlet var headerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoListTableView.dataSource = self
    }
    

}

extension InfoListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        14
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "InfoListTableViewCell") as? GeneralTableViewCell else {
            return UITableViewCell()
        }
        cell.selectionStyle = .none
        cell.pizzaImage.image = UIImage(named: imageList[indexPath.row])
        cell.pizzaName.text = menuList[indexPath.row]
        cell.pizzaDetail.text = menuDetail[indexPath.row]
        return cell
        
    }
}
