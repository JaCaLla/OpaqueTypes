//
//  ContentView.swift
//  OpaqueTypes
//
//  Created by Javier Calatrava on 5/3/25.
//

import SwiftUI

struct myCustomAnyViewA: View {
    var body: some View {
        Text("myCustomAnyViewA")
    }
}

struct myCustomAnyViewB: View {
    var body: some View {
        Text("myCustomAnyViewB")
    }
}

struct ContentView: View {
    let views: [AnyView] = [AnyView(myCustomAnyViewA()),
                            AnyView(myCustomAnyViewB())]
    var body: some View {
        VStack {
            myCustomSomeViewA()
            myCustomSomeViewB()
            ForEach(0..<views.count, id: \.self) { index in
                views[index]
            }
        }
    }
    
    func myCustomSomeViewA() -> some View {
        Text("myCustomSomeViewA")
     }
    
    func myCustomSomeViewB() -> some View {
        Text("myCustomSomeViewB")
     }
}

#Preview {
    ContentView()
}
