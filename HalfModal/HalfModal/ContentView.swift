//
//  ContentView.swift
//  HalfModal
//
//  Created by oka yuuji on 2021/12/21.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @State var bottomState = CGSize.zero
    @State var showFull = false
    @State var showMenu = false
    var body: some View {
        VStack {
            Button {
                show.toggle()
            } label: {
                Text("ボタン")
            }

            ZStack {
                ModalView()
                    .offset(y:show ? 360 : 2000)
                    .offset(y: bottomState.height)
                    .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
                
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
                                    self.showMenu = false
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
