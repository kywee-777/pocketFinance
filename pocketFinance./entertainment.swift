//
//  entertainment.swift
//  FinalProjectMyPart
//
//  Created by esther jeong on 6/15/23.
//

import SwiftUI

struct entertainment: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("myGreen"), Color("sage")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            HStack{
                VStack{
                    HStack{
                        Text("Subscriptions \nEntertainment")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("myGreen"))
                            .multilineTextAlignment(.center)

                    }
                    HStack{
                        Image("netflix")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width:120)
                        VStack{
                            Button("Netflix") {
                                openURL(URL(string: "https://www.netflix.com")!)
                            }
                            Text("$10.99 last charged on \n June 1st")
                                .font(.caption)
                                .multilineTextAlignment(.center)
                        }
                    }
                    HStack{
                        Image("spotify")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width:120)
                            .padding(.horizontal, 1.0)
                        VStack{
                            Button("Spotify") {
                                openURL(URL(string: "https://open.spotify.com/")!)
                            }
                            Text("$9.99 last charged on \n June 1st")
                                .font(.footnote)
                                .multilineTextAlignment(.center)
                        }
                    }
                        
                } .padding(.all, 30.0)
                    .background(Rectangle() .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(radius: 20))
                    .padding()
                    
                }
            }
        }
    }
    
struct entertainment_Previews: PreviewProvider {
    static var previews: some View {
        entertainment()
    }
}
