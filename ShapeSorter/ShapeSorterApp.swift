//
//  ShapeSorterApp.swift
//  ShapeSorter
//
//  Created by Shakhnoza Mirabzalova on 12/13/22.
//

import SwiftUI

   @main
struct ShapeSorterApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TestDropCancellingIntercept()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
