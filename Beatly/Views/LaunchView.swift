//
//  LaunchView.swift
//  Beatly
//
//  Created by Артем Хлопцев on 27.03.2022.
//

import SwiftUI

struct LaunchView: View {
    @Binding var showLaunchView: Bool
    @State var count = 0.0
    let timer = Timer.publish(every: 0.5, on: .main, in: .default).autoconnect()
    var body: some View {
        ZStack {
            Color("LaunchBackground")
            VStack {
                Spacer()
            LottieView(fileName: "soundWave")
                .frame(width: 140, height: 140)
                Spacer()
                Text("Beatly")
                    .foregroundColor(Color("LaunchAccentColor"))
                    .font(.system(size: 30, weight: .semibold, design: .default))
                    .padding(.bottom, 44)
            }
        }.ignoresSafeArea().onReceive(timer) { out in
            if count == 2.5 {
                count = 0.0
                withAnimation(.default) {
                    showLaunchView = false
                }
                timer.upstream.connect().cancel()
            }
            count += 0.5
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(showLaunchView: .constant(true))
    }
}
