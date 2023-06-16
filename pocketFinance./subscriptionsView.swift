//
//  subscriptionsView.swift
//  pocketFinance.
//
//  Created by Kylie Nguyen on 6/15/23.
//

import SwiftUI

struct subscriptionsView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    private var subscription = ["Entertainment", "Food", "Clothes", "Travel"]
    var subscriptionText = ["Entertainment": entertainment(),
                            // netflix, spotify, youtube
                            "Food": food(),
                            // starbucks, mcd's
                            "Clothes": clothes(),
                            //
                            "Travel" : travel()] as [String :  any View]
                            // expedia, airbnb,
    
    var body: some View {
        NavigationStack{
            NavigationView {
                    ZStack{
                    LinearGradient(colors: [Color("myGreen"), Color("sage")], startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
                    VStack{
                        Group{
                            Text("Subscriptions")
                                .multilineTextAlignment(.center)
                                .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("myGreen"))
                                .padding()
                            Text("You have currently spent $517.93 this month.")
                                .multilineTextAlignment(.center)
                                .fontWeight(.bold)
                                .foregroundColor(Color("teal"))
                        } .padding()
                            .background(Rectangle() .foregroundColor(.white)
                                .cornerRadius(20)
                                .shadow(radius: 20))
                            .padding()
                        
                        List {
                            
                            
                            Section(header: Text("Spendings")){
                                ForEach(Array(subscriptionText.keys), id: \.self) { key in
                                    
                                    NavigationLink(key, destination:  subscripts[key]
                                                   //
                                                   //
                                                   //                            .onDelete(perform: deleteItems)
                                    )}
                            }
                            
                        }
                    }
                    .scrollContentBackground(.hidden)
                }
            }
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
            } .padding(-1.0)
                .background(Rectangle() .foregroundColor(.white)
                    .cornerRadius(20)
                    .shadow(radius: 20))
                .navigationBarHidden(true)
        }
        }
        enum subscripts {
            @ViewBuilder static subscript(string: String) -> some View {
                switch string {
                case "Food":
                    food()
                case "Entertainment":
                    entertainment()
                case "Clothes":
                    clothes()
                case "Travel":
                    travel()
                    
                default:
                    fatalError()
                }
            }
        }
        
        
        func addItem() {
            withAnimation {
                let newItem = Item(context: viewContext)
                newItem.timestamp = Date()
                
                do {
                    try viewContext.save()
                } catch {
                    
                    let nsError = error as NSError
                    fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
                }
            }
        }
        
        func deleteItems(offsets: IndexSet) {
            withAnimation {
                offsets.map { items[$0] }.forEach(viewContext.delete)
                
                do {
                    try viewContext.save()
                } catch {
                    
                    let nsError = error as NSError
                    fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            
            }
        }
    }
}

struct subscriptionsView_Previews: PreviewProvider {
    static var previews: some View {
        subscriptionsView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
