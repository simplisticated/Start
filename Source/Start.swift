//
//  Start.swift
//  Start
//
//  Created by Igor Matyushkin on 31.08.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public struct Start {
    
    public static var launches: LaunchCounter {
        get {
            return LaunchCounter.shared
        }
    }
    
}
