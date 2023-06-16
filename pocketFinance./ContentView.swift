//
//  ContentView.swift
//  Final Project
//
//  Created by esther jeong on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var isLoggedIn = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.20))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white.opacity(0.30))
                Circle()
                    .scale(1.05)
                    .foregroundColor(.white.opacity(0.40))
                VStack {
                    Spacer()
                    
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.549, green: 0.755, blue: 0.665)/*@END_MENU_TOKEN@*/)
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    Button("Enter") {
                        isLoggedIn = true
                    }
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.549, green: 0.755, blue: 0.665)/*@END_MENU_TOKEN@*/)
                    .frame(width: 300, height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    
                    Spacer()
                }
                .padding()
            }
            .navigationBarHidden(true)
            .fullScreenCover(isPresented: $isLoggedIn) {
                secondView(username:$username)
            }
        }
    }
}
