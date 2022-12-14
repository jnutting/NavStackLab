//
//  ThreeViewModel.swift
//  NavStackLab
//
//  Created by JN on 2022-12-12.
//

import Foundation
import SwiftUI

class ThreeViewModel: ObservableObject {
    @Published var elements = [
        Thing(description: "AAA"),
        Thing(description: "BBB"),
        Thing(description: "CCC")
    ]
}
