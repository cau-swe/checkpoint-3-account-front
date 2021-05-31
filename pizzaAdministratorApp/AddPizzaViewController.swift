//
//  AddPizzaViewController.swift
//  pizzaAdministratorApp
//
//  Created by 선민승 on 2021/05/31.
//

import UIKit

class AddPizzaViewController: UIViewController {

    var isAddingOrEditing: Bool?
    var detail: String?
    var name: String?
    var price: String?
    var imageName: String?
    
    @IBOutlet var detailTextView: UITextView!
    @IBOutlet var headerLabel: UILabel!
    @IBOutlet var menuImage: UIImageView!
    @IBOutlet var nameTextField: UITextField!
    @IBAction func addButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: .none)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigation bar 없애기
        if let isAdding = isAddingOrEditing {
            if isAdding {
                headerLabel.text = "메뉴 추가하기"
                detailTextView.text = "설명을 작성해주세요."
                menuImage.image = UIImage(named: "pizza1")
            } else {
                headerLabel.text = "메뉴 수정하기"
                nameTextField.text = name!
                detailTextView.text = detail!
                menuImage.image = UIImage(named: imageName!)
                
            }
        }
    }
    

}
