//
//  OtherView.swift
//  NavStackLab
//
//  Created by JN on 2022-12-21.
//

import SwiftUI

struct OtherView: View {
    @ObservedObject var viewModel: OtherViewModel

    var body: some View {
        ZStack {
            Color.purple
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            Text(viewModel.other?.description ?? "No other")
                .font(.largeTitle)
        }
    }

    init(viewModel: OtherViewModel) {
        self.viewModel = viewModel
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView(viewModel: OtherViewModel(other: Other(description:"Preview Other")))
    }
}
