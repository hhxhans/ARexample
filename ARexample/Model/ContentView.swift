//
//  ContentView.swift
//  ARexample
//
//  Created by niudan on 2023/3/4.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView : View {
    let picnames:[String]=["biplane_2x","gramophone_2x"]
    var body: some View {
       scrollview(picname: picnames, vertical: 10)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
