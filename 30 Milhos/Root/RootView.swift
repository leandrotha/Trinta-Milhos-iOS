//
//  RootView.swift
//  30 Milhos
//
//  Created by Leandro Tha on 17/10/25.
//

import SwiftUI

struct RootView: View {
    @StateObject private var coordinator = Coordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            HomeView()
                .navigationDestination(for: AppRoute.self) { route in
                    switch route {
                    case .home:
                        HomeView()
                    }
                }
        }
        .environmentObject(coordinator)
    }
}
