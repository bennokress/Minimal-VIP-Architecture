//
//  MainInterpreter.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import Foundation

class MainInterpreterImplementation {
    
    private let presenter: MainPresenter
    
    init(with presenter: MainPresenter) {
        self.presenter = presenter
    }
    
}

// MARK: - VIP Cycle
// --> Separation of View, Interpreter and Presenter (see https://github.com/bennokress/Minimal-VIP-Architecture)

protocol MainInterpreter: class {
    
    /// Takes actions when the GamesView is loading.
    /// - Parameter setupData: [Optional] Data needed to populate the view. Set by the preceeding view controller.
    func viewIsLoading(with setupData: VIPViewSetupData?)
    
    // Function naming here could be …
    // * func view…     --> viewIsLoading(), viewDidAppear()
    // * func user…     --> userSearched(for …), userTappedXY()
    // * func delegate… --> delegateWasNotifiedAboutXY()
    
}

extension MainInterpreterImplementation: MainInterpreter {
    
    // MARK: View Actions
    
    func viewIsLoading(with setupData: VIPViewSetupData?) {
        presenter.setup(with: setupData)
    }
    
    // MARK: User Actions
    
    // …
    
    // MARK: Delegate Actions
    
    // …
    
}

// MARK: - Private Helpers

extension MainInterpreterImplementation {
    
    // private functions …
    
}
