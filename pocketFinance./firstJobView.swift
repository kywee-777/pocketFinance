//
//  firstJobView.swift
//  pocketFinance.
//
//  Created by Kylie Nguyen on 6/15/23.
//

import SwiftUI

struct firstJobView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("myGreen"), Color("sage")], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
        ScrollView{
            VStack(alignment:.leading, spacing:20){
                HStack{
                    Text("Financial Literacy")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("myGreen"))
                    
                    Image(systemName: "lightbulb")
                        .imageScale(.large)
                        .foregroundColor(Color("myGreen"))
                }
            }
            .padding()
            .background(Rectangle() .foregroundColor(.white)
                .cornerRadius(20)
                .shadow(radius: 20))
            .padding()
            
            NavigationStack{
                    VStack{
                        Text("Your First Job:\nNow What Do I Do?\n")
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 15)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("  Think of these as fast-food or retail jobs, roles that students often take on to get some extra money on the side. The first step is to create a budget! It's important that YOU decide how your money should be categorized. However, looping in your parents and guardians is always a good idea to give advice and a different perspective.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 15)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("\n  Your budget can have as many categories as you'd like. Some examples of common categories used are:\n\n• Savings\n• Eating Out \n• Bills")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 15)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("\n  Many individuals also utilize the 50/30/20 rule: 50% needs, 30% wants, and 20% savings/debt. From a high-school student perspective, this may be switched around to 50% savings if your plan is to go to college. It all depends on what your short-term and long-term goals are.\n")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 15)
                            .foregroundColor(Color("myGreen"))
                        
                        Image("budgetChart")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width:200)
                        
                        Text("\n Setting up direct deposit is another convenient way to save money and even avoid maintenance fees. Some banks allow your paycheck to be split into different accounts while utilizing direct deposit, meaning you can send the right amount of money to your savings instantly!\n")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 15)
                            .foregroundColor(Color("myGreen"))
                        
                        Text(" The application for a direct deposit is fairly simple as well. Your comapny's human resource department can give you the form when prompt and you just need to fill out your bank information and attach a void check.\n")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 15)
                            .foregroundColor(Color("myGreen"))
                        
                    } .padding()
                    .background(Rectangle() .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(radius: 20))
                    .padding()
                }
            }
        }
    }
}

struct firstJobView_Previews: PreviewProvider {
    static var previews: some View {
        firstJobView()
    }
}
