//
//  Localizable.swift
//  Localizable
//
//  Created by Grigory Avdyushin on 14/05/2020.
//  Copyright © 2020 Grigory Avdyushin. All rights reserved.
//

import Foundation

@propertyWrapper
public struct Localizable {

    private var key: String

    public var wrappedValue: String {
        get { NSLocalizedString(key, comment: "") }
        set { key = newValue }
    }

    public init(wrappedValue: String) {
        key = wrappedValue
    }
}
