//
//  ContentView.swift
//  TabbedApp
//
//  Created by Jutian Feng on 2020/9/17.
//  Copyright © 2020 Jutian Feng. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            VStack(alignment: .trailing,spacing: 0){
                Text("First View")
                Text("First View")
                }.padding(0).tabItem {
                VStack {
                    Image("first")
                    Text("首页")
                }
            }.tag(0)
            
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("微淘")
                    }
                }
                .tag(1)
            Text("3")
               .font(.title)
               .tabItem {
                   VStack {
                       Image("second")
                       Text("消息")
                   }
               }
               .tag(2)
            Text("4")
               .font(.title)
               .tabItem {
                   VStack {
                       Image("second")
                       Text("购物车")
                   }
               }
               .tag(3)
            Text("4")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("我的淘宝")
                    }
                }
                .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
