//
//  ContentView.swift
//  Contador
//
//  Created by MAC on 17/11/26.
//

import SwiftUI

struct ContentView: View {
    @State private var contador = 0
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Contador")
                .font(.largeTitle)
                .bold()
            Text("\(contador)")
                .font(.system(size: 96, weight: .bold))
                .foregroundStyle(contador >= 10 ? Color.orange : Color.primary)
                .contentTransition(.numericText())
            HStack (spacing: 16) {
                Button {
                    withAnimation {
                        contador -= 1
                    }
                } label: {
                    Image(systemName: "minus").frame(width: 60, height: 44)
                }
                .buttonStyle(.bordered)
                .disabled(contador == 0)
                
                Button {
                    withAnimation {
                        contador += 1
                    }
                } label: {
                    Image(systemName: "plus").frame(width: 60, height: 44)
                }
                .buttonStyle(.borderedProminent)
            }
            .font(.title)
            
            Button("Reinciar", role: .destructive) {
                contador = 0
            }
            
            if contador >= 10 {
                Text("¡Llegaste a 10!")
                    .font(.headline)
            }
        }
        .tint(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}
