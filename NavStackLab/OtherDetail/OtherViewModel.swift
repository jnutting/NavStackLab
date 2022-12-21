//
//  OtherViewModel.swift
//  NavStackLab
//
//  Created by JN on 2022-12-21.
//

import Foundation

class OtherViewModel: ObservableObject {
    @Published var other: Other?

    init(other: Other) {
        self.other = other
    }
}
