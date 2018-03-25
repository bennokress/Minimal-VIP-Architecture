//
//  MainPresenter.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import Foundation

class MainPresenterImplementation {
    
    private unowned var view: MainView
    
    /// This initializer is called when a new MainView is created.
    init(for view: MainView) {
        self.view = view
    }
    
}

// MARK: - MainPresenter Protocol
protocol MainPresenter: class {
    
    /// Display the provided data on the Main View
    func setup(with setupData: ViewSetupData?)
    
}

// MARK: - MainPresenter Conformance
extension MainPresenterImplementation: MainPresenter {
    
    func setup(with setupData: ViewSetupData?) {
        guard let data = setupData, case let ViewSetupData.main(someBoolValue) = data else { return }
        view.doSomething(with: someBoolValue)
    }
    
}
