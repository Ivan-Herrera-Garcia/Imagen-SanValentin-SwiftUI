//
//  ContentView.swift
//  Imagen-SanValentin-SwiftUI
//
//  Created by Guest User on 14/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var estado: Bool = false;
    @State var estado2: Bool = false;
    var body: some View {
        VStack {
            Image("Piolin")
                .resizable()
                .scaledToFit()
                .border(Color.black)
                //.frame(width: 200.0, height: 200.0)
                .padding(50)
            
            Button("¡Presioname!") {
                estado=true
                
            }.alert(isPresented: $estado, content: {
                Alert(title: Text("San Valentin"), message: Text("Feliz dia desde el campus ITL 🥰"),
                      dismissButton: .default(Text("💞")))
            })
            .foregroundColor(Color.pink)
            .font(.system(.largeTitle, design: .monospaced))
            
           
            Button("Acerca de") {
                estado2=true
            }.alert(isPresented: $estado2, content: {
                Alert(title: Text("Autor"), message: Text("Ivan Herrera Garcia, ITL"), dismissButton: .default(Text("🇲🇽")))
            }).foregroundColor(Color.green)
              .font(.system(.body, design: .monospaced))
              .padding()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
