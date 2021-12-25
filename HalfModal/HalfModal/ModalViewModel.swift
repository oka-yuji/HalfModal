//
//  ModalViewModel.swift
//  HalfModal
//
//  Created by oka yuuji on 2021/12/22.
//

import SwiftUI

class ModalViewModel: ObservableObject {
    @Published var show = true
    @Published var showFull = false
    @Published var bottomState = CGSize.zero
    @Published var amount = UIScreen.main.bounds
}
