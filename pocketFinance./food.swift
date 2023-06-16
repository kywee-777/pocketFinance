//
//  food.swift
//  FinalProjectMyPart
//
//  Created by esther jeong on 6/15/23.
//

import SwiftUI

struct food: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        ZStack{
            HStack {
                VStack{
                    HStack{
                        Image("starbucks")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width:230)
                            .padding(.horizontal, -30.0)
                        VStack{
                            Button("Starbucks ") {
                                openURL(URL(string: "https://www.starbucks.com")!)
                            }
                            Text("$20.00 saved on \n account")
                                .font(.footnote)
                                .multilineTextAlignment(.center)
                        }
                    }
                    HStack {
                                Image("mcds")
                                    .resizable()
                                    .aspectRatio(contentMode:.fit)
                                    .frame(width:120)
                                    .padding(.leading, 15.0)
                                    .padding()
                        VStack{
                            
                            Button("McDonald's") {
                                openURL(URL(string: "https://www.mcdonalds.com/us/en-us.html")!)
                            }
                            Text("$10.99 last spent on \n June 1st")
                                .font(.footnote)
                                .multilineTextAlignment(.center)
                                
                            
                        }
                        
                        //                VStack{
                        //                    Image("mcds")
                        //                        .resizable()
                        //                        .aspectRatio(contentMode:.fit)
                        //                        .frame(width:120, height:120)
                        //
                        //
                        //                    Button("McDonald's \n ") {
                        //                        openURL(URL(string: "https://www.mcdonalds.com/us/en-us.html")!)
                        //                    }
                        //                    Text("\n $10.99 last spent on Thurs, June 1")
                        //                        //.padding(.leading, -65.0)
                        //                        .font(.caption)
                        //                }
                    }
                }
            }
        }
    }
    struct food_Previews: PreviewProvider {
        static var previews: some View {
            food()
        }
    }
}
