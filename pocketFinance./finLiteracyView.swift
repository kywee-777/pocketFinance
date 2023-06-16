//
//  finLiteracyView.swift
//  F.LITERACYpocketFinance
//
//  Created by Kylie Nguyen on 6/13/23.
//

import SwiftUI

struct finLiteracyView: View {
    @State private var showDailyQuiz = false
    var body: some View {
        NavigationStack{
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
                        
                        NavigationLink(destination: dailyQuizView()) {
                            Text("Daily Quiz")
                                .font(.title3)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        .tint(Color("lightGreen"))
                        .buttonStyle(.borderedProminent)
                        
                        Image("pixelPond")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    .padding()
                    .background(Rectangle() .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(radius: 20))
                    .padding()
                    
                    
                    VStack(alignment:.leading, spacing:20){
                        Text("Categories to Learn From")
                            .fontWeight(.bold)
                            .foregroundColor(Color("lightGreen"))
                            .font(.title2)
                        
                        NavigationLink(destination:financeBasics101View()
                            .font(.title)
                        ){
                            Text("Banks & Bank Accounts: What are they?")
                        } .tint(Color("myGreen"))
                            .buttonStyle(.borderedProminent)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        
                        NavigationLink(destination:creditVsDebitView()
                            .font(.title)){
                                Text("Credit vs. Debit: Which is better?")
                            } .tint(Color("myGreen"))
                            .buttonStyle(.borderedProminent)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        NavigationLink(destination:firstJobView()
                            .font(.title)
                            .multilineTextAlignment(.center)){
                                Text("Your First Job- Now What Do I Do?")
                            } .tint(Color("myGreen"))
                            .buttonStyle(.borderedProminent)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        NavigationLink(destination:loansView()
                            .font(.title)
                            .multilineTextAlignment(.center)){
                                Text("Loans: Fixed-Rate VS. Variable Rates")
                            } .tint(Color("myGreen"))
                            .buttonStyle(.borderedProminent)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                    } .padding()
                        .background(Rectangle() .foregroundColor(.white)
                            .cornerRadius(20)
                            .shadow(radius: 20))
                        .padding()
                    
                    
                    NavigationStack {
                        HStack {
                            
                        }
                        .toolbar {
                            ToolbarItemGroup(placement: .status) {
                                NavigationLink(destination: budgetView()) {
                                    Image("budgetIcon2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:100)
                                }

                                NavigationLink(destination: subscriptionsView()) {
                                    Image("subscriptIcon2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:100)
                                }
                                
                                NavigationLink(destination: finLiteracyView()) {
                                    Image("literacyIcon2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:100)
                                }
                            }
                        }
                    } .padding()
                        .background(Rectangle() .foregroundColor(.white)
                            .cornerRadius(20)
                            .shadow(radius: 20))
                        .padding()
                    
                } .navigationBarHidden(true)
                
            }
        }
    }
    
    struct finLiteracyView_Previews: PreviewProvider {
        static var previews: some View {
            finLiteracyView()
        }
    }
}
