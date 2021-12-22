//
//  ContentView.swift
//  HalfModal
//
//  Created by oka yuuji on 2021/12/21.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @State var showFull = false
    @State var showMenu = false
    @State var bottomState = CGSize.zero
    @State var amount = UIScreen.main.bounds
    var body: some View {
        VStack {
            Button {
                show.toggle()
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
