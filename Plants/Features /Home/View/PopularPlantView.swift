//
//  PopularPlantView.swift
//  Plants
//
//  Created by Ramar Parham on 9/5/23.
//

import SwiftUI

struct PopularPlantView: View {
    let plant: Plant
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            ZStack(alignment: .topLeading) {
                plant.image
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: screenWidth * 0.65,
                        height: screenHeight * 0.40
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                HStack {
                    Circle()
                        .fill(plant.type == .outdoor ? .green : .orange)
                        .frame(width: 7, height: 7)
                    
                    Text(plant.type.rawValue)
                        .withParagrapghFormat()
                }
                .padding(5)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white.opacity(0.8))
                )
                .padding(10)
            }
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text(plant.name)
                        .withParagrapghFormat()
                    Text(plant.price)
                        .withBoldParagraphFormat()
                }
                Spacer()
                Image.HeartIcon
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white.opacity(0.8))
            )
            .padding(10)
        }
        .frame(
            width: screenWidth * 0.65,
            height: screenHeight * 0.40
        )
        .padding(5)
    }
}

struct PopularPlantView_Previews: PreviewProvider {
    static var previews: some View {
        PopularPlantView(plant: PlantService.instance.getPlants()[0])
    }
}
