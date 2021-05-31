//
//  ReviewCheckViewController.swift
//  pizzaAdministratorApp
//
//  Created by 선민승 on 2021/05/31.
//

import UIKit

class InfoListViewController: UIViewController {

    var customerInfoList: [String] = ["선민승","조재경", "김승아", "최윤아", "김컴공", "김피자", "최부자", "김멋사", "최자랑", "최사랑", "김꽃", "김갑부", "미란이", "죠르디"]
    var orderInfoList: [String] = ["포테이토 피자 2판", "페퍼로니 피자 10판", "포테이토 피자 1판", "파인애플 피자 40판", "포테이토 피자 10판", "핫소스 피자 1판", "페퍼로니 피자 10판", "포테이토 피자 1판", "파인애플 피자 40판", "포테이토 피자 10판" ]
    var employeeInfoList: [String] = [ "김피자", "최부자", "김멋사", "최자랑", "최사랑", "김꽃", "김갑부", "미란이", "죠르디","선민승","조재경", "김승아", "최윤아", "김컴공"]

    
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "InfoListTableViewCell") as? InfoListTableViewCell else {
            return UITableViewCell()
        }
        cell.selectionStyle = .none
        
        return cell
        
    }
}
