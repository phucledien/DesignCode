//
//  UpdateStore.swift
//  DesignCode2
//
//  Created by phucld on 7/31/20.
//  Copyright © 2020 phucledien. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}

