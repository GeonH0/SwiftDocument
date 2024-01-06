//
//  ContentView.swift
//  Stack&overaly&Navigation
//
//  Created by 김건호 on 1/4/24.
//

import SwiftUI


struct ContentView: View {
    @State var stack = NavigationPath()
    
    var body: some View {
        NavigationStack(path:$stack)
        {
            NavigationLink("GO to Child View", value: "10")
                .navigationDestination(for: String.self){ value in
                    VStack{
                        NavigationLink("GO to Child's Child View", value: "20")
                        
                        Text("Child Number is\(value)")
                        
                        Button("Go to ParentView"){
                            stack.removeLast()
                        }
                        
                        Button("GO to Root View"){
                            stack = .init()
                        }
                    }
                    
                }
            
        }
    }
}

#Preview {
    ContentView()
}
