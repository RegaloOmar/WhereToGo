//
//  ContentView.swift
//  WhereToGoApp
//
//  Created by Omar Regalado on 24/11/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        Text("Hola Mundo")
            
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

struct TitleLabel: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.title
            .font(.largeTitle)
            .foregroundColor(.red)
    }
}
