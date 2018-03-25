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
        print("✅ Main Presenter")
        self.view = view
    }
    
    deinit {
        print("🛑 Main Presenter")
    }
    
}

// MARK: - MainPresenter Protocol
protocol MainPresenter: class {
    
    /// Display the provided data on the Main View
    func setup(with setupData: ViewSetupData?)
    
    /// Perform Segue to the Secondary View and provide it with some data
    func goToSecondaryViewWithData(counter: Int)
    
}

// MARK: - MainPresenter Conformance
extension MainPresenterImplementation: MainPresenter {
    
    func setup(with setupData: ViewSetupData?) {
        guard let data = setupData, case let ViewSetupData.main(alreadyVisitedSecondary) = data else { return }
        let newText = alreadyVisitedSecondary ? "Tap the Button again" : "Tap the Button to go to next View"
        view.setVisitSecondaryCounterLabelText(to: newText)
    }
    
    func goToSecondaryViewWithData(counter: Int) {
        let secondaryViewData = ViewSetupData.secondary(visitCount: counter)
        view.setPassOnData(to: secondaryViewData)
        view.perform(Segue.mainToSecondary)
    }
    
}

