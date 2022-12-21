//
//  OneView.swift
//  NavStackLab
//
//  Created by JN on 2022-12-12.
//

import SwiftUI

struct OneView: View {
    @EnvironmentObject var appRouter: AppRouter

    var body: some View {
        NavigationStack(path: $appRouter.navPathOne) {
            Color.red
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .applyAppNavigationDestinations()
                .navigationTitle("View 1")
        }
    }
}

struct OneView_Previews: PreviewProvider {
    static var previews: some View {
        OneView()
    }
}
