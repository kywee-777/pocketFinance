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
            HStack{
                VStack{
                    HStack{
                        Image("h&m")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width:180)
                        VStack{
                            Button("H&M") {
                                openURL(URL(string: "https://www2.hm.com/en_us/index.html")!)
                            }
                            .padding(.leading, -25.0)
                            Text("$6.99 last charged \n on June 13th")
                                .multilineTextAlignment(.center)
                                .padding(.leading, -25.0)
                                .font(.caption)
                        }
                    }
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
                }
            }
        }
    }
struct clothes_Previews: PreviewProvider {
    static var previews: some View {
        clothes()
                }
            }
        }
 
