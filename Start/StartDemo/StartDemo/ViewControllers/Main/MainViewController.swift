//
//  MainViewController.swift
//  StartDemo
//
//  Created by Igor Matyushkin on 31.08.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit
import Start

class MainViewController: UIViewController {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Outlets
    
    @IBOutlet fileprivate weak var launchCountLabel: UILabel!
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initializeLaunchCountLabel()
        self.updateLaunchCountLabel(withNumberOfLaunches: Start.launches.count)
    }
    
    // MARK: Private object methods
    
    fileprivate func initializeLaunchCountLabel() {
        self.launchCountLabel.text = ""
    }
    
    fileprivate func updateLaunchCountLabel(withNumberOfLaunches numberOfLaunches: Int) {
        self.launchCountLabel.text = String(
            format: "Launch count: %d",
            numberOfLaunches
        )
    }
    
    // MARK: Actions
    
}
