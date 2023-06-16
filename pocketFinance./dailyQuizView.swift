//
//  dailyQuizView.swift
//  F.LITERACYpocketFinance
//
//  Created by Kylie Nguyen on 6/13/23.
//

import SwiftUI

struct dailyQuizView: View {
//    @State var question = ""
    // have an array full of questions and then do a random number generator
    
    @State var answer = ""
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("myGreen"), Color("sage")], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            VStack{
                HStack{
                    Text("Financial Literacy")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("myGreen"))
                    Image(systemName: "lightbulb")
                        .imageScale(.large)
                        .foregroundColor(Color("myGreen"))
                } .padding()
                    .background(Rectangle() .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(radius: 20))
                    .padding()
                
                VStack{
                    Text("Daily Quiz")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("myGreen"))
                    
    //                Text(question)
                    Text("\nHow many digits are in a credit score?\n")
                        
                        .fontWeight(.bold)
                        .foregroundColor(Color("darkGreen"))
                    
                    Button("300-850") {
                        answer = "Correct! Check the Credit vs. Debit lesson to learn more!"
                    } .tint(Color("myGreen"))
                        .buttonStyle(.borderedProminent)
                        .font(.title2)
                    
                    Button("300-800") {
                        answer = "Incorrect, the right answer was 300-850 :( \nCheck the Credit vs. Debit lesson to learn more!"
                    } .tint(Color("myGreen"))
                        .buttonStyle(.borderedProminent)
                        .font(.title2)
                    
                    Button("350-850") {
                        answer = "Incorrect, the right answer was 300-850 :( \nCheck the Credit vs. Debit lesson to learn more!"
                    } .tint(Color("myGreen"))
                        .buttonStyle(.borderedProminent)
                        .font(.title2)
                    
                    Text("")
                    Text(answer)
                        .multilineTextAlignment(.center)
                    
                } .padding()
                    .background(Rectangle() .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(radius: 20))
                    .padding()
            }
        }
    }
}

struct dailyQuizView_Previews: PreviewProvider {
    static var previews: some View {
        dailyQuizView()
    }
}
