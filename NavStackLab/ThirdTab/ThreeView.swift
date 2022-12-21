//
//  ThreeView.swift
//  NavStackLab
//
//  Created by JN on 2022-12-12.
//

import SwiftUI

struct ThreeView: View {
    @StateObject var viewModel = ThreeViewModel()
    @EnvironmentObject var appRouter: AppRouter
    
    var body: some View {
        VStack {
            NavigationStack(path: $appRouter.navPathThree) {
                List(viewModel.things) { thing in
                    Button(thing.description) {
                        appRouter.display(thing)
                    }
                }
                .listStyle(.plain)
                List(viewModel.others) { other in
                    Button(other.description) {
                        appRouter.display(other)
                    }
                }
                .listStyle(.plain)
                .applyAppNavigationDestinations()
                .navigationTitle("View 3")
            }
        }
    }
}



struct ThreeView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeView()
    }
}
