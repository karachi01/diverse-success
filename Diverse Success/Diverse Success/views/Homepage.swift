//
//  infoView.swift
//  Diverse Success
//
//  Created by Karachi Onwuanibe on 3/19/24.
//

import SwiftUI

struct Homepage: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Peoplepage()) {
                    Label("People", systemImage: "person")
                }
                Label("Resources", systemImage: "globe")
            }
            .navigationTitle("Learn")
        }
    }
}



struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}


