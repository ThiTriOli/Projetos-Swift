//
//  ContentView.swift
//  TercaFeiraAula1
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI


struct ContentView: View {
    @State private var idadeHumana: String = ""
    @State private var idadeDoCachorro: String = ""
    @State private var exibindoErro: Bool = false
    
    func calcularIdadeCanina() {
        if let idade = Int(idadeHumana), idade > 0 {
            let idadeConvertida = idade * 7
            idadeDoCachorro = "\(idadeConvertida) anos"
            exibindoErro = false
        } else {
            idadeDoCachorro = "Digite um número válido!"
            exibindoErro = true
        }
    }
    
    var body: some View {
        VStack {
            Image(systemName: "pawprint.fill")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("Calculadora de Idade Canina")
                .font(.title)
                .padding()
            
            TextField(
                "Digite a idade do humano",
                text: $idadeHumana
            )
            .keyboardType(.numberPad)
            .padding()
            
            Button(action: calcularIdadeCanina) {
                Text("Calcular Idade do Cachorro")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            Text(idadeDoCachorro)
                .font(.title2)
                .padding()
                .foregroundColor(exibindoErro ? .red : .green)
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
