//
//  Thing.swift
//  NavStackLab
//
//  Created by JN on 2022-12-12.
//

import Foundation

struct Thing: Hashable, Identifiable {
    var id = UUID()

    let description: String
}
