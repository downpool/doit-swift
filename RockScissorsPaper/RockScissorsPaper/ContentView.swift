//
//  ContentView.swift
//  RockScissorsPaper
//
//  Created by 최동현 on 2022/11/17.
//

import SwiftUI

func randomComputer() -> Int {
    return Int.random(in: 0...2)
}

func winAndLose(computer: Int, player: Int) -> String {
    if (computer == 0) {
        if (player == 1) {
            return "computer"
        } else if (player == 2) {
            return "player"
        } else {
            return "tie!"
        }
    } else if (computer == 1) {
        if (player == 0) {
            return "player"
        } else if (player == 2) {
            return "computer"
        } else {
            return "tie!"
        }
    } else {
        if (player == 0) {
            return "computer"
        } else if (player == 1) {
            return "player"
        } else {
            return "tie!"
        }
    }
}

struct ContentView: View {
    
    let rockScissorsPaper: [String] = ["rock", "scissors", "paper"]
    let symbols: [String] = ["✊", "✌️", "🖐️"]
    
    @State var nowRockScissorsPaper: Int = 1;
    @State var computerNow: Int = randomComputer()
    var body: some View {
        
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                
                Text(winAndLose(computer: computerNow, player: nowRockScissorsPaper))
                    .font(.system(size: 80))
                    .foregroundColor(.white)
                
                Spacer()
                
                Text(symbols[computerNow])
                    .font(.system(size: 100))
                
                
                Text(rockScissorsPaper[computerNow])
                    .padding(.top, 30)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                
                Spacer()
                
                Text(symbols[nowRockScissorsPaper])
                    .font(.system(size: 100))
                
                
                Text(rockScissorsPaper[nowRockScissorsPaper])
                    .padding(.top, 30)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        nowRockScissorsPaper = 0
                    } label: {
                        Text("rock")
                    }
                    
                    Spacer()
                    
                    Button {
                        nowRockScissorsPaper = 1
                    } label: {
                        Text("scissors")
                    }
                    
                    Spacer()
                    
                    Button {
                        nowRockScissorsPaper = 2
                    } label: {
                        Text("paper")
                    }
                    
                    Spacer()
                    
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
