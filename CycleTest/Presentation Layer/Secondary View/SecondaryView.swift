//
//  SecondaryView.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import UIKit

class SecondaryViewController: VIPViewController {
    
    // Those comments will be added to the template:
    // FIXME: Add [name with lowercase first character] to enum ViewSetupData
    // FIXME: Add possible segues to enum Segue
    
    private var interpreter: SecondaryInterpreter?
    
    @IBOutlet private(set) var visitCounterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeVIP()
        // Do any additional setup after loading the view
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        interpreter?.viewWillAppear(with: setupData)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        interpreter?.viewDidAppear()
    }
    
    deinit {
        print("🛑 Secondary View")
    }
    
    // MARK: 📱 Presentation Layer Cycle (View - Interpreter - Presenter)
    
    /// Initializes corresponding Interpreter and Presenter   
    private func initializeVIP() {
        let presenter = SecondaryPresenterImplementation(for: self as SecondaryView)
        self.interpreter = SecondaryInterpreterImplementation(with: presenter)
    }

}

// MARK: - SecondaryView Protocol
protocol SecondaryView: class {
    
    /// Makes the method from the superclass VIPViewController visible in order to pass data to a segue destination view controller.
    func setPassOnData(to passOnData: ViewSetupData?)
    
    /// Set visit counter label text
    func setVisitCounterLabelText(to newLabelText: String)
    
}

// MARK: - SecondaryView Conformance
extension SecondaryViewController: SecondaryView {
    
    func setVisitCounterLabelText(to newLabelText: String) {
        DispatchQueue.main.async {
            self.visitCounterLabel.text = newLabelText
        }
    }
    
}
