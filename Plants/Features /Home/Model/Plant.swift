//
//  Plant.swift
//  Plants
//
//  Created by Ramar Parham on 9/5/23.
//

import SwiftUI

struct Plant: Identifiable {
    let id = UUID().uuidString
    let name: String
    let price: String
    let desc: String
    let image: Image
    let type: PlantType
    let size: PlantSize
    let level: PlantLevel
    let bannerImage: Image
    var showOnHomeScreen = true 
}
