//
//  Marcador.swift
//  Contador
//
//  Created by MAC on 17/11/26.
//

import SwiftUI

struct Marcador: View {
    @State private var t1count = 0
    @State private var t2count = 0
    
    var body: some View {
        VStack (spacing: 24){
            HStack (spacing: 12) {
                VStack (spacing: 8) {
                    Text("Equipo 1")
                        .font(.system(size: 18))
                        .foregroundStyle(Color.blue)
                        .bold()
                    Text("\(t1count)")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundStyle(t1count >= 10 ? Color.blue : Color.primary)
                        .contentTransition(.numericText())
                    HStack {
                        Button {
                            withAnimation {
                                t1count -= 1
                            }
                        } label: {
                            Image(systemName: "minus").frame(width: 40, height: 22)
                        }
                        .buttonStyle(.bordered)
                        .disabled(t1count == 0)
                        
                        Button {
                            withAnimation {
                                t1count += 1
                            }
                        } label: {
                            Image(systemName: "plus").frame(width: 40, height: 22)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .font(.title)
                    
                }
                .tint(.blue)
                .padding()
                
                Text("vs")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundStyle(Color.gray)
                
                VStack (spacing: 8) {
                    Text("Equipo 2")
                        .font(.system(size: 18))
                        .foregroundStyle(Color.orange)
                        .bold()
                    Text("\(t2count)")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundStyle(t2count >= 10 ? Color.orange : Color.primary)
                        .contentTransition(.numericText())
                    HStack () {
                        Button {
                            withAnimation {
                                t2count -= 1
                            }
                        } label: {
                            Image(systemName: "minus").frame(width: 40, height: 22)
                        }
                        .buttonStyle(.bordered)
                        .disabled(t2count == 0)
                        
                        Button {
                            withAnimation {
                                t2count += 1
                            }
                        } label: {
                            Image(systemName: "plus").frame(width: 40, height: 22)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .font(.title)
                    
                }
                .tint(.orange)
                .padding()
            }
            
            Button("Reinciar", role: .destructive) {
                t1count = 0
                t2count = 0
            }
            
            if t1count == t2count {
                Text("Empate")
                    .font(.headline)
            }
            else if t1count > t2count {
                Text("Va ganando Equipo 1")
                    .font(.headline)
            }
            else {
                Text("Va ganando Equipo 2")
                    .font(.headline)
            }
        }
    }
}

#Preview {
    Marcador()
}
