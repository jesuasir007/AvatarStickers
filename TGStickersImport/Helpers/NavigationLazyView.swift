//
//  NavigationLazyView.swift
//  TGStickersImport
//
//  Created by Dmitry Starkov on 01/07/2021.
//

import SwiftUI

struct NavigationLazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    var body: Content {
        build()
    }
}
