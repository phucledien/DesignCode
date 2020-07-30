//
//  UpdateList.swift
//  DesignCode2
//
//  Created by phucld on 7/31/20.
//  Copyright © 2020 phucledien. All rights reserved.
//

import SwiftUI

struct UpdateList: View {
    var body: some View {
        NavigationView {
            List(updateData) { update in
                NavigationLink(destination: UpdateDetail(update: update)) {
                    HStack {
                        Image(update.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                            .background(Color.black)
                            .cornerRadius(20)
                            .padding(.trailing, 4)
                        
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text(update.title)
                                .font(.system(size: 20, weight: .bold))
                            
                            Text(update.text)
                                .lineLimit(2)
                                .font(.subheadline)
                                .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                            
                            Text(update.date)
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            .navigationBarTitle("Updates")
        }
    }
}

struct UpdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
    }
}

struct Update: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var text: String
    var date: String
}

let updateData = [
    Update(image: "Card1", title: "SwiftUI Advanced", text: "Take your SwiftUI app to the App Store would advanced techniques like API data, packages and CMS.", date: "JAN 1"),
    Update(image: "Card2", title: "Webflow", text: "Take your SwiftUI app to the App Store would advanced techniques like API data, packages and CMS.", date: "JAN 1"),
    Update(image: "Card3", title: "Protopie", text: "Take your SwiftUI app to the App Store would advanced techniques like API data, packages and CMS.", date: "JAN 1"),
    Update(image: "Card4", title: "SwiftUI", text: "Take your SwiftUI app to the App Store would advanced techniques like API data, packages and CMS.", date: "JAN 1"),
    Update(image: "Card5", title: "Framer Playground", text: "Take your SwiftUI app to the App Store would advanced techniques like API data, packages and CMS.", date: "JAN 1"),
]
