//
//  LoginView.swift
//  Plants
//
//  Created by Ramar Parham on 9/5/23.
//

import SwiftUI

struct LoginView: View {
    @State private var isUserLoggedIn = false
    var body: some View {
        ZStack(alignment: .bottom) {
            Image.LoginBackground
                .resizable()
                .scaledToFit()
                .frame(maxHeight: .infinity, alignment: .top)
                .ignoresSafeArea()
            
            LinearGradient(
                colors: [.clear, .clear, Color.AppDarkGreenColor],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 15) {
                Text("Buy Your Favorite\nPlants, Only Here!")
                    .withLargeTitle()
                    .foregroundColor(.white)
                
                Button {
                    isUserLoggedIn.toggle()
                } label: {
                    Text("Log In")
                        .withHeadingFormat()
                        .foregroundColor(.white)
                        .padding(15)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.AppLightkGreenColor)
                        )
                }
                
                Button {
                    isUserLoggedIn.toggle()
                } label: {
                    Text("Sign Up")
                        .withHeadingFormat()
                        .foregroundColor(.white)
                        .padding(15)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .strokeBorder(Color .AppDarkGreenColor,
                                              lineWidth: 2)
                        )
                }
                
                Button {
                    isUserLoggedIn.toggle()
                } label: {
                    Text("Guest")
                        .withHeadingFormat()
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                }
            }
            .padding()
        }
        .fullScreenCover(isPresented: $isUserLoggedIn) {
            HomeView()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
