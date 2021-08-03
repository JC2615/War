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
                HStack(spacing: 50.0) {
                    Image("card3")
                    Image("card4")
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack(spacing: 50.0) {
                    VStack(spacing: 25.0){
                        Text("Player")
                            .foregroundColor(Color.white)
                            .fontWeight(.heavy)
                        Text("0")
                            .foregroundColor(Color.white)
                            .fontWeight(.heavy)
                    }
                    VStack(spacing: 25.0){
                        Text("CPU")
                            .foregroundColor(Color.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                        Text("0")
                            .foregroundColor(Color.white)
                            .fontWeight(.heavy)
                    }
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
