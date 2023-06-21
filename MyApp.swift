//
//  MyApp.swift
//  WWDC23 Trial
//
//  Created by Evelyn Megawati Tiffany on 13/04/23.
//

import SwiftUI

@main
struct MyApp: App {
    @StateObject var dataDiri:DataDiri = DataDiri()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(dataDiri)
        }
    }
}
