//
//  HomeView.swift
//  30 Milhos
//
//  Created by Leandro Tha on 17/10/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        List {
            Section(header: Text("Meus grupos")) {
                NavigationLink("Los Maculeros") {
                    FriendsGroupDetails()
                }
                .listRowBackground(Color.surface)
                .foregroundStyle(Color.onSurface)
            }
        }
        .scrollContentBackground(.hidden)
        .frame(maxWidth: .infinity)
        .navigationTitle("30 🌽")
        .background(Color.background)
        .foregroundStyle(Color.onBackground)
        .safeAreaInset(edge: .bottom, content: {
            Button("Novo Jogo") {
                
            }
            .tmButtonStyle(.primary)
            .padding(16)
        })
    }
}
