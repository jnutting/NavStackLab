//
//  ThingView.swift
//  NavStackLab
//
//  Created by JN on 2022-12-12.
//

import SwiftUI

struct ThingView: View {
    @ObservedObject var viewModel: ThingViewModel

    var body: some View {
        if let thing = viewModel.thing {
            Text(thing.description)
                .font(.largeTitle)
        } else {
            Text("No Thing")
                .font(.largeTitle)
        }
    }

    init(viewModel: ThingViewModel) {
        self.viewModel = viewModel
    }
}

struct ThingView_Previews: PreviewProvider {
    static var previews: some View {
        ThingView(viewModel: ThingViewModel(thing: Thing(description:"Preview Thing")))
    }
}
