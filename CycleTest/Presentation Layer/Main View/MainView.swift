//
//  MainView.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import UIKit

class MainViewController: VIPViewController {
    
    // Those comments will be added to the template:
    // FIXME: Add [name with lowercase first character] to enum ViewSetupData
    // FIXME: Add possible segues to enum Segue
    
    private var interpreter: MainInterpreter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeVIP()
        // Do any additional setup after loading the view
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        interpreter?.viewWillAppear(with: setupData)
    }
    
    // MARK: 📱 Presentation Layer Cycle (View - Interpreter - Presenter)
    
    /// Initializes corresponding Interpreter and Presenter
    private func initializeVIP() {
        let presenter = MainPresenterImplementation(for: self as MainView)
        self.interpreter = MainInterpreterImplementation(with: presenter)
    }
    
    /// Unwind Segue Setup
    @IBAction func unwindToMainView(sender: UIStoryboardSegue) {
        Segue.unwindToMain.prepare(from: sender, to: self as VIPViewController)
    }

}

// MARK: - MainView Protocol
protocol MainView: class {
    
    /// Makes the method from the superclass VIPViewController visible in order to pass data to a segue destination view controller.
    func setPassOnData(to passOnData: ViewSetupData?)
    
    /// Normally used to display the value, but used in console for demonstration purposes here.
    func doSomething(with someBoolValue: Bool)
    
}

// MARK: - MainView Conformance
extension MainViewController: MainView {
    
    func doSomething(with someBoolValue: Bool) {
        print(someBoolValue ? "yup" : "nope")
    }
    
}
