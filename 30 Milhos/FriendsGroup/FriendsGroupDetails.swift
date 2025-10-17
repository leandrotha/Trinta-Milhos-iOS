//
//  FriendsGroupDetails.swift
//  30 Milhos
//
//  Created by Leandro Tha on 17/10/25.
//

import SwiftUI

struct FriendsGroupDetails: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Text("Señor Profano Thá")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.headline)
                
                Text("Arabão")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.headline)
                
                Text("AL Taq")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.headline)
                
                Text("Tonhão")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.headline)
                
                Text("Tia Gão")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.headline)
                
                Text("Palagringo 🇪🇪")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.headline)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
            .padding(.vertical, 30)
        }
        .background(Color.background)
        .foregroundStyle(Color.onBackground)
        .navigationTitle("Los Maculeros")
    }
}
