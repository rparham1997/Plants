//
//  HomeViewModel.swift
//  Plants
//
//  Created by Ramar Parham on 9/5/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var categories = PlantService.instance.getPlantCategories()
    @Published var plants = PlantService.instance.getPlants().filter {
        $0.showOnHomeScreen
    }
    @Published var selectedPlant: Plant? = nil
}
