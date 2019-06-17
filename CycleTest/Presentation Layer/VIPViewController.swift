//
//  VIPViewController.swift
//  CycleTest
//
//  Created by Benno Kress on 25.03.18.
//  Copyright © 2018 bennokress. All rights reserved.
//

import UIKit

class VIPViewController: UIViewController {
    
    private(set) var setupData: VIPViewSetupData? = nil
    
    func setup(with setupData: VIPViewSetupData?) {
        self.setupData = setupData
    }
    
}
