//
//  secondView.swift
//  Final Project
//
//  Created by Tessa Tran on 6/14/23.
//

import SwiftUI

struct secondView: View {
    @Binding var username: String
    var body: some View {
        NavigationStack{
            ZStack {
                LinearGradient(colors: [Color("myGreen"), Color("sage")], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
               
                VStack {
                    Text("")
                    Text("Welcome \(username)!")
                        .font(.largeTitle)
                        .foregroundColor(Color("myGreen"))
                        .multilineTextAlignment(.center)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Text("Click one of the icons below to start your finance journey!")
                        .font(.title2)
                        .foregroundColor(Color("myGreen"))
                        .bold()
                        .padding()
                    
                    Text("")
                    
                    HStack{
                        NavigationLink(destination: ContentView()) {
                            Image("budgetIcon2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:65)
                        }

                        NavigationLink(destination: subscriptionsView()) {
                            Image("subscriptIcon2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:65)
                        }
                        
                        NavigationLink(destination: finLiteracyView()) {
                            Image("literacyIcon2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:65)
                        }
                    }
                    
                    Text("")
                    
                } .padding()
                    .background(Rectangle() .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(radius: 20))
                    .padding()
            }
        }
    } 
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
