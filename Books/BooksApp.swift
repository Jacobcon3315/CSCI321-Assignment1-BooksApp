//
//  BooksApp.swift
//  Books
//
//  Created by Madi Lumsden on 10/4/22.
//

import SwiftUI

@main
struct BooksApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
