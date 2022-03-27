//
//  LottieView.swift
//  Beatly
//
//  Created by Артем Хлопцев on 27.03.2022.
//

import Lottie
import SwiftUI

struct LottieView: UIViewRepresentable {
    var fileName: String 
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let rootView = UIView(frame: .zero)
        let animationView = AnimationView(name: fileName)
        animationView.contentMode = .scaleAspectFit
        rootView.addSubview(animationView)
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.loopMode = .repeat(2)
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: rootView.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: rootView.heightAnchor)
        ])
        return rootView
    }
    func updateUIView(_ uiView: UIView, context: Context) { }
}
