//
//  MainMenuPresenter.swift
//  tests_app
//
//  Created by Pedro  on 9/13/20.
//  Copyright © 2020 ballustra. All rights reserved.
//

import Foundation

class MainMenuPresenter: NSObject {
    
    weak private var menuView: MenuView?
    private let menuRepository: MenuRepository
    
    init(repository: MenuRepository) {
        self.menuRepository = repository
    }
    
    func attach(view: MenuView) {
        self.menuView = view
    }
    
    func getTestsList() {
        
        let menuList = menuRepository.getMenus()
        self.menuView?.setOptionList(test: menuList)
        
    }
    
    
}
