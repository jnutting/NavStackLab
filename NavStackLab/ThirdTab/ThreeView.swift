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
                List(viewModel.elements) { thing in
                    Button(thing.description) {
                        appRouter.show(thing)
                    }
                }
                .listStyle(.plain)
                .navigationDestination(for: Thing.self) { thing in
                    ThingView(viewModel: ThingViewModel(thing: thing))
                }
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
