//
//  RootTabView.swift
//  NavStackLab
//
//  Created by JN on 2022-12-12.
//

import SwiftUI

struct RootTabView: View {
    @EnvironmentObject var appRouter: AppRouter

    var body: some View {
        TabView(selection: $appRouter.selectedRootTab) {
            OneView()
                .tabItem {
                    Text("1")
                }
                .tag(RootTabState.one)
            TwoView()
                .tabItem {
                    Text("2")
                }
                .tag(RootTabState.two)
            ThreeView()
                .tabItem {
                    Text("3")
                }
                .tag(RootTabState.three)

        }
        .onAppear {
            // We can force the app to navigate to any tab, and if that tab has a NavigationStack,
            // to make it drill down to any object we want, as long as that NavigationStack knows
            // how to display a view for that object (or for that array of objects).
            //
            // This code is here just as an example, to demonstrate how the `forceNavigate` function
            // actually works. In reality, we wouldn't use `onAppear` this way, but would probably
            // use something like the `onOpenURL` that follows.

            var appRoute: AppRoute?

            // These six routes represent everything that a user can actually navigate to in this
            // simple app:
//            appRoute = AppRoute(rootTab: .one, navigationPath: NavigationPath())
//            appRoute = AppRoute(rootTab: .two, navigationPath: NavigationPath())
//            appRoute = AppRoute(rootTab: .three, navigationPath: NavigationPath())
//            appRoute = AppRoute(rootTab: .three, navigationPath: NavigationPath([Thing(description: "AAA")]))
//            appRoute = AppRoute(rootTab: .three, navigationPath: NavigationPath([Thing(description: "BBB")]))
//            appRoute = AppRoute(rootTab: .three, navigationPath: NavigationPath([Thing(description: "CCC")]))

            // We can also navigate to things that might not otherwise be visible at all. Our set
            // of `Thing` objects we present in the third tab doesn't include either of these items,
            // but we can still navigate to them. Even to a "stack" of them!
//            appRoute = AppRoute(rootTab: .three, navigationPath:
//                                    NavigationPath([
//                                        Thing(description: "Hello"),
//                                        Thing(description: "Hello Again")
//                                    ]))

            // We can't currently navigate to things through a path if the tab's NavigationStack doesn't
            // know what view to use for an object. This one doesn't work, for example, because tab one's
            // NavigationStack doesn't know what to do with a Thing instance:
//            appRoute = AppRoute(rootTab: .one, navigationPath: NavigationPath([Thing(description: "AAA")]))

            if let appRoute { appRouter.forceNavigate(to: appRoute) }
        }
        .onOpenURL { url in
            // If we had any inbound URLs and could generate a route, this would force the app to
            // navigate to the correct place.
            if let route = AppRoute(url: url) {
                appRouter.forceNavigate(to: route)
            }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
