//
//  ContentView.swift
//  SwitUI_menu
//
//  Created by izvern on 2021/05/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Text("Hello, world!")
                .padding()
                .navigationTitle("하위하위")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Menu(content: {
                            Text("하하하")
                        }, label: {
                            // Custom Color 적용하는 방법
                            Circle().foregroundColor(Color.init(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
                            Label("더보기", systemImage: "ellipsis")
                                .foregroundColor(.black)
                        })
                            }
                        }
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
