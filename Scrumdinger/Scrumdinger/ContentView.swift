//
//  ContentView.swift
//  Scrumdinger
//
//  Created by 김건호 on 2023/09/19.
//

import SwiftUI

struct ContentVeiw: View {
    var body : some View {
        VStack{
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews : PreviewProvider {
    static var previews: some View{
        ContentVeiw()
    }
}
