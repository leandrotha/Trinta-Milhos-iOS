//
//  AppCoordinator.swift
//  30 Milhos
//
//  Created by Leandro Tha on 17/10/25.
//

import SwiftUI

@MainActor
final class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
    
    func push(_ route: AppRoute) {
        path.append(route)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}
