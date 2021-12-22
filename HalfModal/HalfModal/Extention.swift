//
//  Extention.swift
//  HalfModal
//
//  Created by oka yuuji on 2021/12/22.
//

import SwiftUI

struct CustomModalModifier: ViewModifier {
    @Binding var show: Bool
    @Binding var showFull: Bool
    @Binding var showMenu: Bool
    @Binding var bottomState: CGSize
    @Binding var amount: UIScreen
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .offset(y:show ? $amount.height * 0.4 : $amount.height)
            .offset(y: bottomState.height)
            .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.9), value: show)
        
            .gesture(
                DragGesture().onChanged { value in
                    self.bottomState = value.translation
                    if self.showFull {
                        self.bottomState.height += -300
                    }
                    if self.bottomState.height < -300 {
                        self.bottomState.height = -300
                    }
                }
                    .onEnded { value in
                        if self.bottomState.height > 50 {
                            self.show = false
                           // self.showMenu = false
                        }
                        if (self.bottomState.height < -100 && !self.showFull) || (self.bottomState.height < -250 && self.showFull) {
                            self.bottomState.height = -300
                            self.showFull = true
                        } else {
                            self.bottomState = .zero
                            self.showFull = false
                            
                        }
                    }
            )

    }
}


extension View {
    //customTextFieldModifier
    func customModalModifier() -> some View {
        modifier(CustomModalModifier())
    }
}
