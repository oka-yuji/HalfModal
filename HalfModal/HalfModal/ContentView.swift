//
//  ContentView.swift
//  HalfModal
//
//  Created by oka yuuji on 2021/12/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: ModalViewModel
    var body: some View {
        VStack {
            Button {
                viewModel.show.toggle()
                viewModel.bottomState = .zero
            } label: {
                Text("ボタン")
            }
            Spacer()
                ZStack {
                    ModalView()
                        .environmentObject(ModalViewModel())
                    VStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 60, height: 6)
                        .foregroundColor(Color.gray)
                        Spacer()
                    }
                    .offset(y: 20)
                }
                .customModalModifier()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModalViewModel())
    }
}
