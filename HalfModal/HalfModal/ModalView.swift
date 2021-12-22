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
                .foregroundColor(Color.green)
                .background(Color.green)
            VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 60, height: 6)
                .foregroundColor(Color.gray)
                Spacer()
            }
            .offset(y: 20)
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
