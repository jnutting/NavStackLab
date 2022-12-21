//
//  Viewable.swift
//  NavStackLab
//
//  Created by JN on 2022-12-20.
//

import SwiftUI

// Implement this protocol on anything (e.g. a model object) that you want to represent a target
// to navigate to using NavigationStack and NavigationPath. This property will be read to populate
// the view for any type that has been configured within the NavigationStack using the
// `applyViewableNavigationDestination()` function.
protocol Viewable: Hashable {
    var view: any View { get }
}

// This provides a NavigationStack with a navigation destination, for any Viewable type.
// Marking this fileprivate, because the view extension below should be used instead.
fileprivate struct ViewableNavigationDestinationModifier<V>: ViewModifier where V: Viewable {
    let viewableType: V.Type
    func body(content: Content) -> some View {
        content
            .navigationDestination(for: viewableType) { v in
                AnyView(v.view)
            }
    }
}

extension View {
    // Use this inside a NavigationStack to give the stack an automatic mapping from a type
    // to a view, for any type that implements Viewable. Instead of doing something like this:
    //
    //     .navigationDestination(for: Thing.self) { thing in
    //         AnyView(thing.view)
    //     }
    //
    // you can instead do something like this:
    //
    //     .applyViewableNavigationDestination(for: Thing.self)
    //
    func applyViewableNavigationDestination<V>(for viewableType: V.Type) -> some View where V: Viewable {
        self.modifier(ViewableNavigationDestinationModifier(viewableType: viewableType))
    }

    // The idea here is to let you simply pass in a list of types, instead of placing multiple calls to
    // the singular `applyViewableNavigationDestination` function in your code.
    //
    // This doesn't actually work, because at the call site it complains that the types we pass in,
    // which all implement Viewable, are different types (because their concrete types do differ).
    // Which makes sense, because there's only one "V" in here. This will require further study.
    /*
    func applyViewableNavigationDestinations<V>(for viewableTypes: V.Type...) -> some View where V: Viewable {
        var result: any View = self
        for t in viewableTypes {
            result = result.applyViewableNavigationDestination(for: t)
        }
        return AnyView(result)
    }
     */
}
