//
//  Item.swift
//  iOS_App
//
//  Created by Ansari Amir Alam Nisar Ahmad on 19/04/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
