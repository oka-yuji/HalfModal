//
//  Extention.swift
//  HalfModal
//
//  Created by oka yuuji on 2021/12/22.
//

import SwiftUI

struct CustomModalModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .disableAutocorrection(true)
            .autocapitalization(.none)
            .keyboardType(.URL)
    }
}


extension View {
    //customTextFieldModifier
    func customModalModifier() -> some View {
        modifier(CustomModalModifier())
    }
}
