//
//  MainView.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import UIKit

class MainViewController: VIPViewController {
    
    private var interpreter: MainInterpreter?
    
    // Data
    // … data for the view (ideally set by the presenter at some point)
    
    // View Components
    // … UIViews, UIControllers and other UI components
    
    // View State
    // … some things like isSearchActive or computed properties relying on data above
    
}

// MARK: - View Lifecycle

extension MainViewController {
    
    override func loadView() {
        super.loadView()
        initializeVIP()
        setupView()
        interpreter?.viewIsLoading(with: setupData)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // setupConstraints()
    }
    
}

// MARK: - View Setup

extension MainViewController {
    
    private func setupView() {
        view.backgroundColor = .white
        // setup table view, navigation bar, etc.
    }
    
}

// MARK: - Private Helpers

extension MainViewController {
    
    
    
}

// MARK: - VIP Cycle
// --> Separation of View, Interpreter and Presenter (see https://github.com/bennokress/Minimal-VIP-Architecture)

extension MainViewController {
    
    private func initializeVIP() {
        let presenter = MainPresenterImplementation(for: self as MainView)
        self.interpreter = MainInterpreterImplementation(with: presenter)
    }

}

// MARK: - MainView Protocol
// --> Every action provided to the Presenter

protocol MainView: class {
    
    /// Normally used to display the value, but used in console for demonstration purposes here.
    func doSomething(with someBoolValue: Bool)
    
}

extension MainViewController: MainView {
    
    func doSomething(with someBoolValue: Bool) {
        print(someBoolValue ? "yup" : "nope")
    }
    
}
