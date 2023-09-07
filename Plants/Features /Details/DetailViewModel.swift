//
//  DetailViewModel.swift
//  Plants
//
//  Created by Ramar Parham on 9/6/23.
//

import Foundation

class DetailViewModel: ObservableObject {
    let plant: Plant
    @Published var similarPlants: [Plant] = []
    
    init(plant: Plant) {
        self.plant = plant
        similarPlants = PlantService.instance.getPlants()
            .filter { $0.type == plant.type && !$0.showOnHomeScreen }
    }
}
