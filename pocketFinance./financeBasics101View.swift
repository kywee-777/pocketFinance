//
//  financeBasics101View.swift
//  F.LITERACYpocketFinance
//
//  Created by Kylie Nguyen on 6/13/23.
//

import SwiftUI

struct financeBasics101View: View {
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
                        Text("Banks & Bank Accounts:\nWhat are they?\n")
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 25)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("Introduction to Bank Accounts\n")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("  These are the first financial acounts you'll open. They hold and build the money you'll need for major purposes. You might be wondering, why is it so important to open a bank account? The answer is- it's safer than holding cash! All assets held in a bank account are insured by the Federal Deposit Insurance Corporation (FDIC).")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 25)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("\n  Two Different Types of Banks")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("\n  Retail Banks: This is the most common type of bank at which people have accounts. Retail banks are for-profit companies that offer checking and savings accounts, loans, credit cards, and insurance. Retail banks can have physical, in-person buildings that you can visit or they can be online only.  They often have more locations and ATMs nationwide")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 25)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("\n  Credit Unions:  Credit unions provide savings and checking accounts, issue loans, and offer other financial products, just like banks do. However, they are not-for-profit organizations owned by their members. Credit unions tend to have lower fees and better interest rates on savings accounts and loans. Although they usually have far fewer branches and ATMs.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 25)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("\n  Two Main Bank Account Types")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("\n  1. Savings Account: A savings account is a place to deposit money you want to accumulate. Savings accounts typically have several features in place to encourage you to leave your money in the account for as long as possible. Many pay interest, meaning the value of the deposit will grow over time. The amount of interest an account earns will vary based on market conditions and the financial institution. They usually have some legal limitations on how often you can withdraw money.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 25)
                            .foregroundColor(Color("myGreen"))
                        
                        Text("\n  2. Checking Account:  A checking account is also a deposit account at a bank or other financial institution that allows you to make deposits and withdrawals. Checking accounts allow numerous withdrawals per month (as opposed to less liquid savings or investment accounts) though they earn little to no interest. Money can be deposited at banks and ATMs, through direct deposit, or through another type of electronic transfer. Account holders can withdraw funds via banks and ATMs, by writing checks, or using debit cards linked to their accounts.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 25)
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

struct financeBasics101View_Previews: PreviewProvider {
    static var previews: some View {
        financeBasics101View()
    }
}
