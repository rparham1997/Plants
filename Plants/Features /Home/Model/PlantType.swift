//
//  PlantType.swift
//  Plants
//
//  Created by Ramar Parham on 9/5/23.
//

import Foundation

enum PlantType: String {
    case outdoor, indoor
    
    var rawValue: String {
        switch self {
        case .outdoor:
            return "Outdoor Plant"
        case .indoor:
            return "Indoor Plant"
        }
    }
}
