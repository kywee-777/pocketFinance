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
            HStack{
                VStack{
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
                        
                    }
                    
                }
            }
        }
    }
    
struct entertainment_Previews: PreviewProvider {
    static var previews: some View {
        entertainment()
    }
}
