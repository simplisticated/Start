//
//  DefaultsManager.swift
//  Start
//
//  Created by Igor Matyushkin on 31.08.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

internal class DefaultsManager {
    
    // MARK: Class variables & properties
    
    static let shared = {
        return DefaultsManager()
    }()
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    fileprivate init() {
        self.userDefaults = UserDefaults.standard
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    fileprivate var userDefaults: UserDefaults!
    
    // MARK: Public object methods
    
    public func writeValue(_ value: Any?, forKey key: String) {
        self.userDefaults.set(value, forKey: key)
    }
    
    public func readValue(forKey key: String) -> Any? {
        return self.userDefaults.value(forKey: key)
    }
    
    public func readValue<Value>(ofType type: Value.Type, forKey key: String, defaultValue: Value) -> Value {
        if let value = self.userDefaults.value(forKey: key) as? Value {
            return value
        } else {
            return defaultValue
        }
    }
    
    // MARK: Private object methods
    
}

/*
 * Keys.
 */
extension DefaultsManager {
    
    fileprivate struct Keys {
        static let launchCount = "com.visuality.start.launch-count"
    }
    
}

/*
 * Settings.
 */
extension DefaultsManager {
    
    var launchCount: Int {
        get {
            return self.readValue(ofType: Int.self, forKey: Keys.launchCount, defaultValue: 0)
        }
        set {
            self.writeValue(newValue, forKey: Keys.launchCount)
        }
    }
    
}
