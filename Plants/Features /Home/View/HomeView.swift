//
//  HomeView.swift
//  Plants
//
//  Created by Ramar Parham on 9/5/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var vm = HomeViewModel()
    @State private var searchTxt = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Image.MenuIcon
                Spacer()
                Image.CartIcon
            }
            
            Text("Discover Your Plant")
                .withLargeHeadingFormat()
            
            HStack {
                Image.SearchIcon
                Spacer()
                TextField("Find your plant", text: $searchTxt)
                Spacer()
                Image.SearchIcon
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.AppLightkGreenColor.opacity(0.05))
            
            )
            
            Text("Plant Category")
                .withHeadingFormat()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(vm.categories) { category in
                        PlantCategoryView(category: category)
                    }
                }
            }
            
            Text("Popular Plant")
                .withHeadingFormat()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(vm.plants) { plant in
                        PopularPlantView(plant: plant)
                            .onTapGesture {
                                vm.selectedPlant = plant
                            }
                    }
                }
            }
            
            Spacer()
            
        }
        .padding()
        .fullScreenCover(item: $vm.selectedPlant) { plant in
            DetailView(plant: plant)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
