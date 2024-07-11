//
//  CustomButtonStyle.swift
//  TechnicalTest
//
//  Created by Ramiro Gutierrez de la Paz on 11/07/24.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        .padding(16)
        .foregroundStyle(.white)
        .background(.orange)
        .clipShape(.rect(cornerRadius: 10))
        .shadow(color: .gray, radius: 10, y: 5)
    }
}

