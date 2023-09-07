//
//  PlantCategoryView.swift
//  Plants
//
//  Created by Ramar Parham on 9/5/23.
//

import SwiftUI

struct PlantCategoryView: View {
    let category: PlantCategory
    
    
    var body: some View {
        VStack {
            category.image
                .frame(width: 30, height: 30)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.AppLightkGreenColor.opacity(0.05))
                        .frame(width: 70, height: 70)
                )
            
            Text(category.name)
                .withBoldParagraphFormat()
                .padding(.top, 10)
        }
        .padding(5)
    }
}

struct PlantCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        PlantCategoryView(category: PlantService.instance.getPlantCategories()[0])
    }
}
