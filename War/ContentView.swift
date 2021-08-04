//
//  ContentView.swift
//  War
//
//  Created by Joshua Curry on 8/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card6"
    @State private var cpuCard = "card10"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack() {
            
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack(){
                
                Image("logo")
                Spacer()
                HStack() {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    // Generate random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    //Update score
                    if(playerRand > cpuRand){
                        playerScore += 1
                    }
                    else if(cpuRand > playerRand){
                        cpuScore += 1
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack() {
                    Spacer()
                    VStack(spacing: 25.0){
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .fontWeight(.heavy)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .fontWeight(.heavy)
                    }
                    Spacer()
                    VStack(spacing: 25.0){
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .fontWeight(.heavy)
                    }
                    Spacer()
                }
                
                
                Spacer()
            }
            
            
        }
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
