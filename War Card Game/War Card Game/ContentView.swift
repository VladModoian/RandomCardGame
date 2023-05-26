//
//  ContentView.swift
//  War Card Game
//
//  Created by Vlad Modoian on 26.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Color.green.ignoresSafeArea()
            
            VStack{
                Image("logo")
                
                HStack{
                    Image(playerCard)
                    Image(cpuCard)
                }.padding()
                
                Button{
                    deal()
                } label: {
                    Image("button")
                }
                
                HStack(alignment: .center){
                    VStack{
                        Text("Player").font(.headline)
                        Text(String(playerScore)).font(.largeTitle)
                    }.padding()
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline)
                        Text(String(cpuScore)).font(.largeTitle)
                    }.padding()
                    
                }.padding(.all).foregroundColor(.white)
                
            }.padding(.all, 30.0)
        }
    }
    
    func deal(){
        let playerCardValue = Int.random(in: 2...14)
        let cpuCardValue = Int.random(in: 2...14)
        

        randPlayerCard(playerValue: playerCardValue)
        randCpuCard(cpuValue: cpuCardValue)
        
        
        if playerCardValue > cpuCardValue{
            playerScore = playerScore + 1
        }
        else if playerCardValue < cpuCardValue
        {
            cpuScore = cpuScore + 1
        }
        else {
            cpuScore = cpuScore + 1
            playerScore = playerScore + 1
        }
        
    }
    
    func randPlayerCard(playerValue: Int){
        playerCard = "card" +  String(playerValue)
    }
    
    func randCpuCard(cpuValue: Int){
        cpuCard = "card" +  String(cpuValue)
    }
    
    func updateScore(){
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
