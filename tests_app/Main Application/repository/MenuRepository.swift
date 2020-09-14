//
//  MenuRepository.swift
//  tests_app
//
//  Created by Pedro  on 9/13/20.
//  Copyright © 2020 ballustra. All rights reserved.
//

import Foundation

class MenuRepository {
    init() {
    }
    
    func getMenus() -> [TestViewControllerReference] {
        return self.menuList
    }
    
    var menuList: [TestViewControllerReference] {
        get {
            return [
                TestViewControllerReference(
                    title: "Menu Principal",
                    viewController: MenuView.getInstance()
                ),
            ]
        }
    }
}
