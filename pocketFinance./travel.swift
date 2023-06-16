//
//  travel.swift
//  FinalProjectMyPart
//
//  Created by esther jeong on 6/15/23.
//

import SwiftUI

struct travel: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("myGreen"), Color("sage")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            HStack{
                VStack{
                    HStack{
                        Text("Subscriptions\n Travel")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("myGreen"))
                            .multilineTextAlignment(.center)

                    }
                    HStack{
                        Image("expedia")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width:120)
                        VStack{
                            Button("Expedia \n ") {
                                openURL(URL(string: "https://www.expedia.com")!)
                            }
                            .padding(.bottom)
                            .padding(.bottom, -61.0)
                            Text("\n $189.99 last charged on \nWed, June 13")
                                .multilineTextAlignment(.center)
                                .font(.footnote)
                        }
                    }
                    HStack{
                        Image("airbnb")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width:110)
                        VStack{
                            Button("Airbnb  ") {
                                openURL(URL(string: "https://www.airbnb.com")!)
                            }
                            Text("$208.99 last charged on \n Wed, June 13")
                                .multilineTextAlignment(.center)
                                .padding(.leading, 7.0)
                                .font(.caption)
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
    struct travel_Previews: PreviewProvider {
        static var previews: some View {
            travel()
        }
    }
}
