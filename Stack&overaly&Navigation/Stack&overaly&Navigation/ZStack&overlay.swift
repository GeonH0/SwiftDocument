//
//  ZStack&overlay.swift
//  Stack&overaly&Navigation
//
//  Created by 김건호 on 1/7/24.
//

import SwiftUI

struct ZStack_overlay: View {
    let colors : [Color] = [.red,.green,.yellow,.orange,.blue,.purple]
    var body: some View {
//        ZStack{
//            ForEach(0..<colors.count){
//                Rectangle()
//                    .fill(colors[$0])
//                    .frame(width: 200,height: 200)
//                    .offset(
//                        x: CGFloat($0)*10.0,
//                        y: CGFloat($0)*10.0
//                    )
//            }
//        }
        Rectangle()
            .fill(Color.green)
            .frame(width: 100,height: 100)
            .cornerRadius(10)
            .zIndex(1)
            .overlay(
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 100,height: 100)
                    .cornerRadius(10)
                    .offset(x:20,y:20)
                )

    }
}

#Preview {
    ZStack_overlay()
}
