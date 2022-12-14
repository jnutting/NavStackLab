//
//  TwoView.swift
//  NavStackLab
//
//  Created by JN on 2022-12-12.
//

import SwiftUI

struct TwoView: View {
    @EnvironmentObject var appRouter: AppRouter

    var body: some View {
        NavigationStack(path: $appRouter.navPathTwo) {
            Color.green
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .navigationTitle("View 2")
        }
    }
}

struct TwoView_Previews: PreviewProvider {
    static var previews: some View {
        TwoView()
    }
}
