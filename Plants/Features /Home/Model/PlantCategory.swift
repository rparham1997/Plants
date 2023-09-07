//
//  PlantCategory.swift
//  Plants
//
//  Created by Ramar Parham on 9/5/23.
//

import SwiftUI

struct PlantCategory: Identifiable {
    let id = UUID().uuidString
    let image: Image
    let name: String 
}
