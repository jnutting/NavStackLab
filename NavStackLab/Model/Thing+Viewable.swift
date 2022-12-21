//
//  Thing+Viewable.swift
//  NavStackLab
//
//  Created by JN on 2022-12-20.
//

import SwiftUI

extension Thing: Viewable {
    var view: any View {
        ThingView(viewModel: ThingViewModel(thing: self))
    }
}
