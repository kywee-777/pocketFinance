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
            ZStack{
                LinearGradient(colors: [Color("myGreen"), Color("sage")], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                NavigationView {
                    List {
                        Text("SUBSCRIPTIONS")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .bold()
                            .padding()
                        Text("You have currently spent $517.93 this month.")
                            .multilineTextAlignment(.center)
                        
                        
                        Section(header: Text("Spendings")){
                            ForEach(Array(subscriptionText.keys), id: \.self) { key in
                                
                                NavigationLink(key, destination:  subscripts[key]
                                               //
                                               //
                                               //                            .onDelete(perform: deleteItems)
                                )}
                        }
                    }
                    Text("Select an item")
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
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
