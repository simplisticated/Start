//
//  LaunchCounter.swift
//  Start
//
//  Created by Igor Matyushkin on 31.08.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public final class LaunchCounter {
    
    // MARK: Class variables & properties
    
    internal static let shared = {
        return LaunchCounter()
    }()
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    fileprivate init() {
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    public var count: Int {
        get {
            return DefaultsManager.shared.launchCount
        }
    }
    
    // MARK: Public object methods
    
    public func increment() {
        let defaultsManager = DefaultsManager.shared
        let currentLaunchCount = defaultsManager.launchCount
        let newLaunchCount = currentLaunchCount + 1
        defaultsManager.launchCount = newLaunchCount
    }
    
    public func reset() {
        DefaultsManager.shared.launchCount = 0
    }
    
    // MARK: Private object methods
    
}

public extension LaunchCounter {
    
    public var isFirst: Bool {
        get {
            return DefaultsManager.shared.launchCount == 1
        }
    }
    
}
