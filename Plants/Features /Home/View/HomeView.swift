//
//  HomeView.swift
//  Plants
//
//  Created by Ramar Parham on 9/5/23.
//

import SwiftUI

struct HomeView: View {
    @State private var searchTxt = ""
    var body: some View {
        VStack(alignment: .leading) {
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
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
