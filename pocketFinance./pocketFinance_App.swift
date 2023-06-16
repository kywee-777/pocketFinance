//
//  pocketFinance_App.swift
//  pocketFinance.
//
//  Created by Kylie Nguyen on 6/15/23.
//

import SwiftUI

@main
struct pocketFinance_App: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            OpeningView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
