//
//  ContentView.swift
//  AppTutorial
//
//  Created by HBCU-c2-14 on 8/3/21.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack() {
                    Spacer()
                    VStack(spacing: 25.0){
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .fontWeight(.heavy)
                        Text("0")
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
                        Text("0")
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
