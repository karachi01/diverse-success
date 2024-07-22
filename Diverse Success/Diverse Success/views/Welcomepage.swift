// welcomepage.swift
//  Diverse Success
//
//  Created by Karachi Onwuanibe on 3/19/24.
//

import SwiftUI

struct Welcomepage: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            
            VStack {
                VStack(spacing: 20) {
                    Text("'LIKE WHAT YOU DO, AND THEN YOU WILL DO YOUR BEST'-Katherine Johnson.")
                        .font(.title)
                        .fontWeight(.semibold)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(.white)
                    
                    Text("Diverse Success is an app designed for minority individuals in tech seeking inspiration, guidance, and resources to fuel their journey in the ever-evolving tech landscape.")
                        .font(.title3)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(.white)
                }
                
                NavigationLink(destination: Homepage()) {
                    Text("Enter")
                }
                .foregroundColor(.black)
                .font(.title)
                .onTapGesture {
                    print("NavigationLink tapped")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct Welcomepage_Previews: PreviewProvider {
    static var previews: some View {
        Welcomepage()
    }
}
