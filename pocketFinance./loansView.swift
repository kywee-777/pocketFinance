//
//  loansView.swift
//  pocketFinance.
//
//  Created by Kylie Nguyen on 6/15/23.
//

import SwiftUI

struct loansView: View {
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
                        Text("Loans: Fixed-Rate vs. Variable Rates\n")
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 25)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("What is a Loan?\n")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("  A loan is a sum of money that you borrow from a financial institution — a bank, credit union or online lender — or a person, like a family member, and pay back in full at a later date, typically with interest.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 15)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("  Loans are made up of four components: \n\n• Principal: the original amount of money being borrowed \n• Loan Term: amount of time the borrower has to repay the loan\n • Interest Rate: rate the amount of money increases, usually by year\n• Loan Payments: an amount of money that must be paid every month or week in order to satisfy the terms of the loan")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 15)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("The Loan Lifetime\n")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("  1. When someone needs money, they apply for a loan from a bank, corporation, government, or other entity. The borrower may be required to provide specific details such as the reason for the loan, their financial history, Social Security number (SSN), and other information. The lender reviews this information as well as a person's debt-to-income (DTI) ratio to determine if the loan can be paid back. \n")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 15)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("  2. Based on the applicant's credit report, credit score, and payment history- the lender either denies or approves the application. The lender must provide a reason should the loan application be denied. If the application is approved, both parties sign a contract that outlines the details of the agreement. The lender advances the proceeds of the loan, after which the borrower must repay the amount including any additional charges, such as interest. If the lender requires collateral, the lender outlines this in the loan documents. \n")
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

struct loansView_Previews: PreviewProvider {
    static var previews: some View {
        loansView()
    }
}
