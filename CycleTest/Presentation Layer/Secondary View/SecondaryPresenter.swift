//
//  SecondaryPresenter.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import Foundation

class SecondaryPresenterImplementation {
    
    private unowned var view: SecondaryView
    
    /// This initializer is called when a new SecondaryView is created.
    init(for view: SecondaryView) {
        print("✅ Secondary Presenter")
        self.view = view
    }
    
    deinit {
        print("🛑 Secondary Presenter")
    }
    
}

// MARK: - SecondaryPresenter Protocol
protocol SecondaryPresenter: class {
    
    /// Display the provided data on the Secondary View
    func setup(with setupData: ViewSetupData?)
    
    func setSecondaryViewVisited()
    
}

// MARK: - SecondaryPresenter Conformance
extension SecondaryPresenterImplementation: SecondaryPresenter {
    
    func setup(with setupData: ViewSetupData?) {
        guard let data = setupData, case let ViewSetupData.secondary(visitCount) = data else {
            return
        }
        let newText = "View visited \(visitCount) \(visitCount == 1 ? "time" : "times")."
        view.setVisitCounterLabelText(to: newText)
    }
    
    func setSecondaryViewVisited() {
        let secondaryViewVisitedData = ViewSetupData.main(alreadyVisitedSecondary: true)
        view.setPassOnData(to: secondaryViewVisitedData)
    }
    
}
