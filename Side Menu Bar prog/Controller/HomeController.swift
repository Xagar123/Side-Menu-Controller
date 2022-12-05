//
//  HomeController.swift
//  Side Menu Bar prog
//
//  Created by Admin on 25/11/22.
//

import UIKit

class HomeController: UIViewController {

    var delegate:HomeControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        view.backgroundColor = .groupTableViewBackground
        
        
    }
    

    func configureNavigationBar(){
        print("navigation bar")
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Side Menu"
        var menubtn = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .done, target: self, action: #selector(handleMenuToggle))
        self.navigationItem.leftBarButtonItem = menubtn
        menubtn.tintColor = UIColor.black
    }
    @objc func handleMenuToggle(){
        print("menu button clicked")
        delegate?.handleMenuToggle(forMenuOption: nil)
    }

}
