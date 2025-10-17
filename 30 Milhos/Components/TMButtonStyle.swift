//
//  TMButtonStyle.swift
//  30 Milhos
//
//  Created by Leandro Tha on 17/10/25.
//

import SwiftUI

enum TMButtonStyle {
    case primary
}

extension View {
    func tmButtonStyle(_ style: TMButtonStyle) -> some View {
        return self.modifier(TMButtonStyler(style: style))
    }
}

struct TMButtonStyler: ViewModifier {
    let style: TMButtonStyle
    
    func body(content: Content) -> some View {
        switch style {
        case .primary:
            content.buttonStyle(TMPrimaryButton())
        }
    }
}

struct TMPrimaryButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding(15)
            .background(backgroundColor(configuration: configuration))
            .foregroundStyle(Color.onPrimary)
            .cornerRadius(8)
            .font(.buttonText)
    }
    
    func backgroundColor(configuration: Configuration) -> LinearGradient {
        if configuration.isPressed {
           return LinearGradient(colors: [.tmPrimary, .tmSecondary],
                                 startPoint: .bottomTrailing, endPoint: .topLeading)
        } else {
            return LinearGradient(colors: [.tmSecondary, .tmPrimary],
                                  startPoint: .bottomTrailing, endPoint: .topLeading)
        }
    }
}

#Preview {
    Button("Hello World!") {
        
    }
    .tmButtonStyle(.primary)
    .padding(16)
}
