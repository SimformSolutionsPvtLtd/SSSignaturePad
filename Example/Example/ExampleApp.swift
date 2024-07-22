//
//  ExampleApp.swift
//  Example
//
//  Created by Krupanshu Sharma on 19/07/24.
//

import SwiftUI

@main
struct ExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(signatureImage: .constant(.init()), signaturePDF: .constant(.init()))
        }
    }
}
