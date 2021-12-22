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
            } label: {
                Text("ボタン")
            }

            ZStack {
                ZStack {
                ModalView()
                }
                .customModalModifier()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
