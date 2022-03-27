//
//  LoaderView.swift
//  Beatly
//
//  Created by Артем Хлопцев on 27.03.2022.
//

import SwiftUI

struct LoaderView: View {
    @State var showLoading = false
    var body: some View {
        VStack {
            Circle()
                .trim(from: 0, to: 0.7)
                .stroke(lineWidth: 4)
                .padding()
                .frame(width: 70, height: 70)
                .foregroundColor(.red)
                .rotationEffect(.degrees(showLoading ? 720 : 0))
                .onAppear {
                    withAnimation(Animation.default.speed(0.3).repeatForever(autoreverses: false)) {
                        showLoading.toggle()
                    }
                }
        }
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView()
    }
}
