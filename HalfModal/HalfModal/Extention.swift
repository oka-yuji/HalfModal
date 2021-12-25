//
//  Extention.swift
//  HalfModal
//
//  Created by oka yuuji on 2021/12/22.
//

import SwiftUI

struct CustomModalModifier: ViewModifier {
    @EnvironmentObject var viewModel: ModalViewModel
    @State var fullAmount = 0.35
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .offset(y:viewModel.show ? viewModel.amount.height * 0.4 : viewModel.amount.height)
            .offset(y: viewModel.bottomState.height)
            .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.9), value: viewModel.show)
        
            .gesture(
                DragGesture().onChanged { value in
                    viewModel.bottomState = value.translation
                    if viewModel.showFull {
                        viewModel.bottomState.height += -(viewModel.amount.height * fullAmount)
                    }
                    if viewModel.bottomState.height < -(viewModel.amount.height * fullAmount) {
                        viewModel.bottomState.height = -(viewModel.amount.height * fullAmount)
                    }
                }
                    .onEnded { value in
                        if viewModel.bottomState.height > 50 {
                            viewModel.show = false
                        }
                        if (viewModel.bottomState.height < -100 && !viewModel.showFull) || (viewModel.bottomState.height < -250 && viewModel.showFull) {
                            viewModel.bottomState.height = -(viewModel.amount.height * fullAmount)
                            viewModel.showFull = true
                        } else {
                            viewModel.bottomState = .zero
                            viewModel.showFull = false
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


struct CustomModalModifier_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModalViewModel())
    }
}
