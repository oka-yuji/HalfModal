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
