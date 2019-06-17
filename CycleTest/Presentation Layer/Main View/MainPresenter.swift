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
    
    init(for view: MainView) {
        self.view = view
    }
    
}

// MARK: - VIP Cycle
// --> Separation of View, Interpreter and Presenter (see https://github.com/bennokress/Minimal-VIP-Architecture)

protocol MainPresenter: class {
    
    /// Populates the GamesView with data.
    /// - Parameter setupData: [Optional] Data needed to populate the view. Set by the preceeding view controller.
    func setup(with setupData: VIPViewSetupData?)
    
    // Function naming here could describe what to do in a view without concrete implementation details
    // * updateXY(with …)
    // * display(_ xy)
    // * concludeYZ()
    // * …
    
}

extension MainPresenterImplementation: MainPresenter {
    
    func setup(with setupData: VIPViewSetupData?) {
        guard let data = setupData, case let VIPViewSetupData.main(someBoolValue) = data else { return }
        view.doSomething(with: someBoolValue)
    }
    
}

// MARK: - Private Helpers

extension MainPresenterImplementation {
    
    // private functions …
    
}
