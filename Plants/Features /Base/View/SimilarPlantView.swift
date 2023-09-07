//
//  SimilarPlantView.swift
//  Plants
//
//  Created by Ramar Parham on 9/6/23.
//

import SwiftUI

struct SimilarPlantView: View {
    let plant: Plant
    
    var body: some View {
        VStack {
            plant.image
                .resizable()
                .scaledToFill()
                .frame(
                    width: screenWidth * 0.40,
                    height: screenHeight * 0.15
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Text(plant.name)
                .withBoldParagraphFormat()
        }
        .padding(5)
    }
}

struct SimilarPlantView_Previews: PreviewProvider {
    static var previews: some View {
        SimilarPlantView(plant: PlantService.instance.getPlants()[3])
    }
}
