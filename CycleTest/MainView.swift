//
//  MainView.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    private var interpreter: MainInterpreter?
    
    @IBOutlet private(set) var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }
    
    @IBAction private func counterButtonTapped() {
        interpreter?.counterButtonTapped()
    }
    
    // MARK: 📲 Presentation Layer Cycle (View - Interpreter - Presenter)
    
    /// Standard Init + Custom Setup of Interpreter and Presenter
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)   {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    /// Standard Init + Custom Setup of Interpreter and Presenter
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    /// Initializes Interpreter and Presenter
    private func setup() {
        let presenter = MainPresenterImplementation(for: self as MainView)
        self.interpreter = MainInterpreterImplementation(with: presenter)
    }

}

// MARK: - MainView Protocol
protocol MainView: class {
    func updateCounterLabel(to newText: String)
}

// MARK: - MainView Conformance
extension MainViewController: MainView {
    
    func updateCounterLabel(to newText: String) {
        DispatchQueue.main.async {
            self.counterLabel.text = newText
        }
    }
    
}
