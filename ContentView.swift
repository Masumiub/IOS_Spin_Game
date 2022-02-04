//
//  ContentView.swift
//  Spin Game
//
//  Created by Md. Masum  on 28/1/22.
//

import SwiftUI

struct ContentView: View {
    @State var card1 = "1"
    @State var card2 = "2"
    @State var card3 = "3"
    @State var score = 100
    @State var rand1 = 0
    @State var rand2 = 0
    @State var rand3 = 0
    var body: some View {
        
        VStack{
            Spacer()
            
            Text("IOS Spin Game")
            .font(.system(size: 50))
            
            Spacer()
            
            Text("score: ")
            Text(String(score)).font(.system(size: 30))
            
            Spacer()
            
            HStack{
                Spacer()
                Image(card1).resizable().frame(width: 120.0, height: 120.0)
                Spacer()
                Image(card2).resizable().frame(width: 120.0, height: 120.0)
                Spacer()
                Image(card3).resizable().frame(width: 120.0, height: 120.0)
                Spacer()
            }
            
            Spacer()
            
            Button(action: {
                rand1 =  Int.random(in: 1...5)
                rand2 = Int.random(in: 1...5)
                rand3 = Int.random(in: 1...5)
                card1 = String(rand1)
                card2 = String(rand2)
                card3 = String(rand3)
                
                if((rand1 == rand2) || (rand1 == rand3) || (rand2 == rand3)){
                    score += 5
                }
                else if((rand1 != rand2) && (rand1 != rand3) && (rand2 != rand3)){
                    score -= 5
                }
            }, label: {
                Image("spin_button")
                    .resizable()
                    .frame(width: 250.0, height: 90.0)
            })
            
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
