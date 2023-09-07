//
//  DetailView.swift
//  Plants
//
//  Created by Ramar Parham on 9/6/23.
//

import SwiftUI

struct DetailView: View {
    @StateObject private var vm: DetailViewModel
    @Environment(\.presentationMode) var presentationMode
    
    init(plant: Plant) {
        _vm = StateObject(wrappedValue: DetailViewModel(plant: plant))
    }
    var body: some View {
        VStack {
            HStack {
                Image.BackArrow
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                Spacer()
                Text(vm.plant.name)
                    .withHeadingFormat()
                Spacer()
                Image.HeartIcon
            }
            .padding()
            
            ScrollView {
                VStack {
                    vm.plant.bannerImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: screenWidth)
                    
                    VStack(alignment: .leading) {
                        Text("Description")
                            .withHeadingFormat()
                        Text(vm.plant.desc)
                            .withParagrapghFormat()
                        
                        HStack(spacing: 20) {
                            VStack(alignment: .leading) {
                                Text("Type")
                                    .withParagrapghFormat()
                                Text(vm.plant.type.rawValue)
                                    .withBoldParagraphFormat()
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Size")
                                    .withParagrapghFormat()
                                Text(vm.plant.size.rawValue.capitalized)
                                    .withBoldParagraphFormat()
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Level1")
                                    .withParagrapghFormat()
                                Text(vm.plant.level.rawValue.capitalized)
                                    .withHeadingFormat()
                            }
                        }
                        .padding(.top, 15)
                        
                        Text("Similar Type")
                            .withHeadingFormat()
                            .padding(.top, 15)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(vm.similarPlants) { plant in
                                    SimilarPlantView(plant: plant)
                                }
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            Text("Add To Cart")
                                .withHeadingFormat()
                                .padding(20)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.AppDarkGreenColor)
                                )
                        }
                    }
                    .multilineTextAlignment(.leading)
                    .padding()
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(plant: PlantService.instance.getPlants()[0])
    }
}
