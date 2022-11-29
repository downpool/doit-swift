//
//  ContentView.swift
//  lockScreen
//
//  Created by 최동현 on 2022/11/19.
//

import SwiftUI

struct ContentView: View {
    
    private let lockNumber: [Int] = [1, 2, 3, 4];
    
    @State var answerNumber: [String] = ["● ○"]
    
    var body: some View {
        
        ZStack {
            Color.blue.ignoresSafeArea().opacity(0.5)
            VStack {
                Text("*")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
        
                HStack {
                    Button {
                        print("")
                    } label: {
                        Text("7")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .opacity(0.5)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 45))
                    }
                    Button {
                        print("")
                    } label: {
                        Text("8")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .opacity(0.5)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 45))
                            .padding()
                    }
                    Button {
                        print("")
                    } label: {
                        Text("9")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .opacity(0.5)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 45))
                    }
                }
                
                HStack {
                    Button {
                        print("")
                    } label: {
                        Text("4")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .opacity(0.5)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 45))
                    }
                    Button {
                        print("")
                    } label: {
                        Text("5")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .opacity(0.5)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 45))
                            .padding()
                    }
                    Button {
                        print("")
                    } label: {
                        Text("6")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .opacity(0.5)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 45))
                    }
                }
                
                HStack {
                    Button {
                        print("")
                    } label: {
                        Text("1")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .opacity(0.5)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 45))
                    }
                    Button {
                        print("")
                    } label: {
                        Text("2")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .opacity(0.5)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 45))
                            .padding()
                    }
                    Button {
                        print("")
                    } label: {
                        Text("3")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .opacity(0.5)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 45))
                    }
                }

                HStack {
                    
                    Text("")
                        .frame(width: 80)
                    
                    Button {
                        print("")
                    } label: {
                        Text("0")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .opacity(0.5)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 45))
                            .padding()
                    }
                    
                    Button {
                        
                    } label: {
                        Text("삭제")
                            .frame(width: 80)
                            
                    }

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
