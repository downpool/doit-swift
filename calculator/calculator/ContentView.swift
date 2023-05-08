//
//  ContentView.swift
//  calculator
//
//  Created by 최동현 on 2022/10/23.
//

import SwiftUI

enum ButtonType {
    case one, two, three, four, five, six, seven, eight, nine, zero, dot
    case equal, plus, minus, multiple, divide
    case percent, opposite, clear
    
    var ButtonDisplayName: String {
        switch self {
            case .one:
                return "1"
            case .two:
                return "2"
            case .three:
                return "3"
            case .four:
                return "4"
            case .five:
                return "5"
            case .six:
                return "6"
            case .seven:
                return "7"
            case .eight:
                return "8"
            case .nine:
                return "9"
            case .zero:
                return "0"
            case .dot:
                return "."
            case .equal:
                return "="
            case .plus:
                return "+"
            case .minus:
                return "-"
            case .multiple:
                return "×"
            case .divide:
                return "÷"
            case .percent:
                return "%"
            case .opposite:
                return "/"
            case .clear:
                return "C"
        }
    }
    
    var backgroundColor: Color {
        switch self {
            case .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .zero, .dot:
                return Color("grayDark")
                
            case .equal, .plus, .minus, .multiple, .divide:
                return Color(.orange)
                
            case .percent, .opposite, .clear:
                return Color(.gray)
        }
    }
    
    var foregroundColor: Color {
        switch self {
            case .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .zero, .dot:
                return Color(.white)
                
            case .equal, .plus, .minus, .multiple, .divide:
                return Color(.white)
                
            case .percent, .opposite, .clear:
                return Color(.black)
        }
    }
}

struct ContentView: View {
    
    @State private var answer: Int = 0
    @State private var input: String = "0"
    @State private var temp: String = "0"
    @State private var tempSymbol: ButtonType = .plus
    
    private let buttonData: [[ButtonType]] = [
        [.clear, .opposite, .percent, .divide],
        [.seven, .eight, .nine, .multiple],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .plus],
        [.zero, .dot, .equal]
    ]
    
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    
                    Text(input)
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: 73))
                }
               
                ForEach(buttonData, id: \.self) { line in
                    HStack {
                        
                        ForEach(line, id: \.self) { item in
                            
                            Button {
                                calc(item: item)
                            } label: {
                                Text(item.ButtonDisplayName)
                                    .padding(item == .zero ? 33 : 0)
                                    .frame(width: item == .zero ? 170 : 80, height: 80, alignment: item == .zero ? .leading : .center)
                                    .background(item.backgroundColor)
                                    .cornerRadius(40)
                                    .foregroundColor(item.foregroundColor)
                                    .font(.system(size: 33))
                                
                            }
                        }
                    }

                }
            }
        }
    }
    func calc(item: ButtonType) {
        switch item {
            case .equal:
                switch tempSymbol {
                    case .plus:
                        input = String(Int(temp)! + Int(input)!)
                    
                    case .minus:
                        input = String(Int(temp)! - Int(input)!)
                        
                    case .multiple:
                        input = String(Int(temp)! * Int(input)!)
                        
                    case .divide:
                        if temp != "0" {
                            input = String(Int(temp)! / Int(input)!)
                        }
                        
                    default:
                        break;
                }
                temp = "0"
                tempSymbol = .plus
                
            case .plus:
                temp = input
                input = "0"
                tempSymbol = .plus
                
            case .minus:
                temp = input
                input = "0"
                tempSymbol = .minus
            
            case .multiple:
                temp = input
                input = "0"
                tempSymbol = .multiple
            
            case .divide:
                temp = input
                input = "0"
                tempSymbol = .divide
                
            case .percent, .opposite:
                input = "Unimplemented Function"
            
            case .clear:
                input = "0"
                temp = "0"
            
            case .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .zero, .dot:
                if(input != "0") {
                    input += item.ButtonDisplayName
                } else {
                    input = item.ButtonDisplayName
                }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
