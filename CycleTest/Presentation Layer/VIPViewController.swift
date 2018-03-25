//
//  VIPViewController.swift
//  CycleTest
//
//  Created by Benno Kress on 25.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import UIKit

class VIPViewController: UIViewController {
    
    private(set) var setupData: ViewSetupData? = nil
    private(set) var passOnData: ViewSetupData? = nil
    
    func setSetupData(to setupData: ViewSetupData?) {
        self.setupData = setupData
    }
    
    func setPassOnData(to passOnData: ViewSetupData?) {
        self.passOnData = passOnData
    }
    
    /// Passes the data in passOnData to the next VIPViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueIdentifier = segue.identifier, let pendingSegue = Segue(rawValue: segueIdentifier) else { return }
        pendingSegue.prepare(for: segue, with: passOnData)
    }
    
}
