//
//  ThreeViewModel.swift
//  NavStackLab
//
//  Created by JN on 2022-12-12.
//

import Combine
import Foundation
import SwiftUI

class ThreeViewModel: ObservableObject {
    @Published var things = [
        Thing(description: "AAA"),
        Thing(description: "BBB"),
        Thing(description: "CCC")
    ]
    @Published var others = [
        Other(description: "XXX"),
        Other(description: "YYY"),
        Other(description: "ZZZ")
    ]
}
