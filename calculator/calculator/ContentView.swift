//
//  ContentView.swift
//  calculator
//
//  Created by 최동현 on 2022/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var answer: Int = 0
    @State private var tempInput: Int = 0
    @State private var tempSymbol: String = "+"
    private let buttonData: [[String]] = [
        ["7", "8", "9", "X"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", "0", ".", "="]
    ]
    
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    
                    Text(String(tempInput))
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: 73))
                }
                
                HStack {
                    Button {
                        tempInput = 0
                    } label: {
                        Text("C")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                   
                    Button {
                        tempInput *= -1
                    } label: {
                        Image(systemName: "plus.forwardslash.minus")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                   
                    Button {
                        tempSymbol = "%"
                    } label: {
                        Text("%")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        
                    }
                    
                    Button {
                        tempSymbol = "/"
                    } label: {
                        Text("÷")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                   
                }
                
                HStack {
                    Button {
                        tempInput = tempInput * 10 + 7
                    } label: {
                        Text("7")
                            .frame(width: 80, height: 80)
                            .background(Color("grayDark"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        
                    }
                    
                    Button {
                        tempInput = tempInput * 10 + 8
                    } label: {
                        Text("8")
                            .frame(width: 80, height: 80)
                            .background(Color("grayDark"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        
                    }
                    
                    Button {
                        tempInput = tempInput * 10 + 9
                    } label: {
                        Text("9")
                            .frame(width: 80, height: 80)
                            .background(Color("grayDark"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    
                    Button {
                        tempSymbol = "*"
                    } label: {
                        Text("×")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                            .bold()
                    }
                    
                }
                HStack {
                    Button {
                        tempInput = tempInput * 10 + 4
                    } label: {
                        Text("4")
                            .frame(width: 80, height: 80)
                            .background(Color("grayDark"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    
                    
                    Button {
                        tempInput = tempInput * 10 + 5
                    } label: {
                        Text("5")
                            .frame(width: 80, height: 80)
                            .background(Color("grayDark"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        
                    }
                    
                    Button {
                        tempInput = tempInput * 10 + 6
                    } label: {
                        Text("6")
                            .frame(width: 80, height: 80)
                            .background(Color("grayDark"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        
                    }
                    
                    Button {
                        tempSymbol = "-"
                    } label: {
                        Text("−")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                            .bold()
                    }
                    
                }
                HStack {
                    Button {
                        tempInput = tempInput * 10 + 1
                    } label: {
                        Text("1")
                            .frame(width: 80, height: 80)
                            .background(Color("grayDark"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        
                    }
                    
                    Button {
                        tempInput = tempInput * 10 + 2
                    } label: {
                        Text("2")
                            .frame(width: 80, height: 80)
                            .background(Color("grayDark"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        
                    }
                    
                    Button {
                        tempInput = tempInput * 10 + 3
                    } label: {
                        Text("3")
                            .frame(width: 80, height: 80)
                            .background(Color("grayDark"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        
                    }
                    
                    Button {
                        tempSymbol = "+"
                    } label: {
                        Text("+")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                            .bold()
                    }
                    
                }
                
                HStack {
                    Button {
                        tempInput = tempInput * 10 + 0
                    } label: {
                        Text("0")
                            .padding(30)
                            .frame(width: 170.0, height: 80, alignment: .leading)
                            .background(Color("grayDark"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                
//                    Text("0")
//                        .frame(width: 80, height: 80)
//                        .background(Color("grayDark"))
//                        .cornerRadius(40)
//                        .foregroundColor(.white)
//                        .font(.system(size: 33))
                    
                    Button {
                        print(".")
                    } label: {
                        Text(".")
                            .frame(width: 80, height: 80)
                            .background(Color("grayDark"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    
                    }
                    
                    Button {
                        print("=")
                    } label: {
                        Text("=")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                            .bold()
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
