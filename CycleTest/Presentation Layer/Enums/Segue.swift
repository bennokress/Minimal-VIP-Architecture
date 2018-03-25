//
//  Segue.swift
//  CycleTest
//
//  Created by Benno Kress on 24.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import UIKit

enum Segue: String {
    
    // MARK: - Cases
    // NOTE: They have to be identically named to the identifier of the UIStoryboardSegue they represent!
    
    // MARK: Normal Segues
    case mainToSecond
    
    // MARK: Unwind Segues
    case unwindToMain
    
    // MARK: - Public functions
    
    /// Passes data from the source view controller to the destination view controller of a normal segue.
    func prepare(for segue: UIStoryboardSegue, with passOnData: ViewSetupData?) {
        guard let destinationViewController = segue.destination as? VIPViewController else { return }
        destinationViewController.setSetupData(to: passOnData)
    }
    
    /// Performs a normal segue.
    func perform(from sourceViewController: VIPViewController) {
        sourceViewController.performSegue(withIdentifier: self.rawValue, sender: nil)
    }
    
    /// Passes data from the source view controller to the destination view controller of an unwind segue.
    func prepare(from unwindSegue: UIStoryboardSegue, to destinationViewController: VIPViewController) {
        guard let sourceViewController = unwindSegue.source as? VIPViewController else { return }
        destinationViewController.setSetupData(to: sourceViewController.passOnData)
    }
    
}
