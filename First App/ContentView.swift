//
//  ContentView.swift
//  First App
//
//  Created by Thiago de Oliveira Sousa on 02/03/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isHearted = false
    @State private var numHearts = 999
    
    
    var body: some View {
        
        VStack{
            
            Image("pinkbuilding")
                .resizable()
                .cornerRadius(30)
                .padding()
                .shadow(radius: 10)
            
            HStack{
        
                Button(action: {
                    self.isHearted.toggle() // Muda o estado do botao
                    
                    if self.isHearted{
                        self.numHearts += 1
                    } else {
                        self.numHearts -= 1
                    }
                    
                }){
                    if isHearted {
                        Image(systemName: "heart.fill")
                    } else {
                        Image(systemName: "heart")
                    }
                } // Button
                
                Text(String(numHearts))
                
            } // HStack
            
            
            if self.isHearted {
                Text("This Pink building is totally amazing !")
                                .fontWeight(.heavy)
                                .foregroundColor(.pink)
                                .font(.largeTitle)
                                .multilineTextAlignment(.center)
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 0.1, x: 2, y: 2)
            }else {
                Text("They are just buildings but...")
            }
            
            
            
            
        } // VStack
        
    } // Body
} // ContentView


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
