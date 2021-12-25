//
//  ModalView.swift
//  HalfModal
//
//  Created by oka yuuji on 2021/12/21.
//

import SwiftUI

struct ModalView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.green.opacity(0.3))
                .background(Color.green)
            VStack {
                Text("top")
                Spacer()
                Text("bottom")
                    
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
