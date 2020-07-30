//
//  UpdateDetail.swift
//  DesignCode2
//
//  Created by phucld on 7/31/20.
//  Copyright © 2020 phucledien. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    var update: Update = updateData[0]
    var body: some View {
        List {
            VStack(spacing: 20) {
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(update.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }.navigationBarTitle(update.title)
        }
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
