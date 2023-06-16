//
//  dailyQuizView.swift
//  F.LITERACYpocketFinance
//
//  Created by Kylie Nguyen on 6/13/23.
//

import SwiftUI

struct dailyQuizView: View {
    @State var question = ""
    // have an array full of questions and then do a random number generator
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("myGreen"), Color("sage")], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            VStack{
                HStack{
                    Text("Financial Literacy")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Image(systemName: "lightbulb")
                        .imageScale(.large)
                        .foregroundColor(Color.white)
                }
                
                Text("Daily Quiz")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(question)
                Button("Option 1") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                } .tint(Color("myGreen"))
                    .buttonStyle(.borderedProminent)
                
                Button("Option 2") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                } .tint(Color("myGreen"))
                    .buttonStyle(.borderedProminent)
                
                Button("Option 3") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                } .tint(Color("myGreen"))
                    .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct dailyQuizView_Previews: PreviewProvider {
    static var previews: some View {
        dailyQuizView()
    }
}
