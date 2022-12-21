//
//  Other+Viewable.swift
//  NavStackLab
//
//  Created by JN on 2022-12-21.
//

import SwiftUI

extension Other: Viewable {
    var view: any View {
        OtherView(viewModel: OtherViewModel(other: self))
    }
}
