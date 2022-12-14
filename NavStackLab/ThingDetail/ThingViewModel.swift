//
//  ThingViewModel.swift
//  NavStackLab
//
//  Created by JN on 2022-12-12.
//

import Foundation

class ThingViewModel: ObservableObject {
    @Published var thing: Thing?

    init(thing: Thing) {
        self.thing = thing
    }
}
