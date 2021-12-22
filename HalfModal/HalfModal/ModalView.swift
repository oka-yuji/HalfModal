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
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 60, height: 6)
                .foregroundColor(Color.gray)
        }
        .foregroundColor(Color.green)
        .background(Color.green)
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
