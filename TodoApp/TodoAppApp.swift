//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Mary Moreira on 26/10/2022.
//

import SwiftUI

@main
struct TodoAppApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var iconNames: IconNames = IconNames()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(iconNames)
        }
    }
}
