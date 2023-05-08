//
//  ContentView.swift
//  WebView
//
//  Created by 최동현 on 2023/05/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        MyWebview(urlToLoad: "https://www.naver.com")
//
        NavigationView{
            
            HStack {
                NavigationLink {
                    MyWebview(urlToLoad: "https://www.naver.com")
                        .edgesIgnoringSafeArea(.all)
                } label: {
                    Text("네이버")
                }
                
                NavigationLink {
                    MyWebview(urlToLoad: "https://www.daum.net")
                        .edgesIgnoringSafeArea(.all)
                } label: {
                    Text("다음")
                }
                
                NavigationLink {
                    MyWebview(urlToLoad: "https://www.google.com")
                        .edgesIgnoringSafeArea(.all)
                } label: {
                    Text("구글")
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
