//
//  Viewable.swift
//  NavStackLab
//
//  Created by JN on 2022-12-20.
//

import SwiftUI

protocol Viewable: Hashable {
    var view: any View { get }
}
