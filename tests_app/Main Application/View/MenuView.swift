//
//  MenuView.swift
//  tests_app
//
//  Created by Pedro  on 9/13/20.
//  Copyright © 2020 ballustra. All rights reserved.
//

import UIKit

class MenuView: UIViewController {
    
    static let Identifier = "MenuView"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    private var tests: [TestViewControllerReference]?
    private var presenter: MainMenuPresenter = MainMenuPresenter(repository: MenuRepository())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()        
        
        presenter.attach(view: self)
        presenter.getTestsList()
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.estimatedRowHeight = 50
        tableView.separatorStyle = .none
        registerCells()
        
        let tableViewBackground = UIImageView(image: UIImage(named: "homero"))
        tableViewBackground.frame = tableView.frame
        tableViewBackground.contentMode = .scaleAspectFill
        
        self.tableView.backgroundView = tableViewBackground
        
        
    }
        
    private func registerCells() {
        MenuTestOptionCell.registerOn(tableView)
    }
    
    func setOptionList(test references: [TestViewControllerReference]) {
        self.tests = references
        self.tableView.reloadData()
    }
    
    static func getInstance() -> MenuView {
        let storyBoard = UIStoryboard(name: "MenuView", bundle: nil)
        let MenuViewVC = storyBoard.instantiateInitialViewController() as! MenuView
        
        return MenuViewVC
    }
}

extension MenuView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tests?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MenuTestOptionCell.Identifier) as? MenuTestOptionCell else {return UITableViewCell()}
        
        cell.titleLabel.text = tests?[indexPath.row].title
        cell.selectionStyle = .none
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let testVC = tests?[indexPath.row].viewController else {return}
        
        self.navigationController?.pushViewController(testVC, animated: true)
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
}
