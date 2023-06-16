//
//  clothes.swift
//  FinalProjectMyPart
//
//  Created by esther jeong on 6/15/23.
//

import SwiftUI

struct clothes: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("myGreen"), Color("sage")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            HStack{
                VStack{
                    HStack{
                        Text("Subscriptions\n Clothes")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("myGreen"))
                            .multilineTextAlignment(.center)

                    }
                    HStack{
                        Image("h&m")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width:110)
                        VStack{
                            Button("H&M") {
                                openURL(URL(string: "https://www2.hm.com/en_us/index.html")!)
                            }
                            .padding(.leading, -21.0)
                            Text("$6.99 last charged \n on June 13th")
                                .multilineTextAlignment(.center)
                                .padding(.leading, -25.0)
                                .font(.caption)
                        }
                    }  .padding(.horizontal, 10.0)
                    
                    HStack{
                        Image("shein")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width:110)
                        VStack{
                            Button("Shein  ") {
                                openURL(URL(string: "https://us.shein.com")!)
                            }
                            Text("$79.99 last spent on \n June 5th")
                                .multilineTextAlignment(.center)
                                .padding(.leading, 7.0)
                                .font(.caption)
                        }
                    }
                    .padding(.horizontal, 10.0)
                } .padding(.all, 30.0)
                    .background(Rectangle() .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(radius: 20))
                    .padding()
            }
        }
    }
struct clothes_Previews: PreviewProvider {
    static var previews: some View {
        clothes()
                }
            }
        }
 
