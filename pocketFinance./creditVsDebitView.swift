//
//  creditVsDebitView.swift
//  F.LITERACYpocketFinance
//
//  Created by Kylie Nguyen on 6/14/23.
//

import SwiftUI

struct creditVsDebitView: View {
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
                        Text("Credit vs. Debit: Which is better?\n")
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .foregroundColor(Color("myGreen"))
                        
                        Group{
                            Text("First, what are credit cards really?\n")
                                .font(.title3)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 2)
                                .foregroundColor(Color("myGreen"))
                            
                            Text("  Credit cards are accounts that let you borrow money from the credit card issuer and pay it back over time. For every month that you don’t pay back the money in full, you’ll be charged interest on your remaining balance.")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 15)
                                .foregroundColor(Color("myGreen"))
                            
                            Text("\n  What's the difference between credit and debit cards?")
                                .font(.title3)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 10)
                                .foregroundColor(Color("myGreen"))
                            
                            Text("\n  Debit cards take money directly out of your checking account. You can’t borrow money with debit cards, which means that you can’t spend more cash than you have in the bank. And debit cards don’t help you to build a credit history and credit rating.")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 15)
                                .foregroundColor(Color("myGreen"))
                            
                            Text("\n  Credit cards allow you to borrow money and do not pull cash from your bank account. This can be helpful for large, unexpected purchases. But carrying a balance every month—not paying back in full the money that you borrowed—means that you’ll owe interest to the credit card issuer.")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 15)
                                .foregroundColor(Color("myGreen"))
                            
                            Text("\n  On the other hand, using a credit card judiciously and paying your credit card bills on time helps you establish a credit history and a good credit score. We'll get into what that means and why it's good in just a second!")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 15)
                                .foregroundColor(Color("myGreen"))
                        }
                        
                        Group{
                            Text("\n  What is a credit score?")
                                .font(.title3)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 20)
                                .foregroundColor(Color("myGreen"))
                            
                            Text("\n  A credit score is a three-digit number that rates your creditworthiness. Scores range from 300 to 850. The higher the score, the more likely you are to get approved for loans and for better rates. Furthermore, it helps show others that you're trustworthy and responsible. When making larger purchases such as renting an apartment or buying insurance, a good credit score will give you an advantage and usually the best rates.")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 15)
                                .foregroundColor(Color("myGreen"))
                            
                            Text("\n  A credit score is based on your credit history, which includes information like the number accounts, total levels of debt, repayment history, and other factors. Lenders use credit scores to evaluate your credit worthiness, or the likelihood that you will repay loans in a timely manner.")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 15)
                                .foregroundColor(Color("myGreen"))
                            
                            Text("\n  Additionally, you can build (and hurt) your credit score before you even receive a credit card! Some examples are through loans, by paying them off consistently and quickly, you can start building your credit score!")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 15)
                                .foregroundColor(Color("myGreen"))
                        }
                        
                        Text("\n  Do I qualify for a debit/credit card?")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("\n  To receive a debit card, you'll need a checking account: which means you need to either be 18+ OR have an adult co-sign on the account.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 15)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("\n  For US banks, the minimum age is 13 years old to get a DEBIT card. However it does vary, so make sure to check with you bank first.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 15)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("\n  To receive a credit card, you need to be at least 18. However many more factors come into play when getting a credit card. Some key things to consider are: keeping your credit history clean, choosing the right type of card, figuring out if you're pre-approved, and having a repayment strategy in mind.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 15)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("\n  To receive a credit card, you need to be at least 18. However many more factors come into play when getting a credit card. Some key things to consider are: keeping your credit history clean, choosing the right type of card, figuring out if you're pre-approved, and having a repayment strategy in mind.")
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

struct creditVsDebitView_Previews: PreviewProvider {
    static var previews: some View {
        creditVsDebitView()
    }
}
