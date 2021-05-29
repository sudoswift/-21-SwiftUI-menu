//
//  ContentView.swift
//  SwitUI_menu
//
//  Created by izvern on 2021/05/29.
//

import SwiftUI

struct ContentView: View {
    
    @State private var ShowingAlert: Bool = false
    @State private var myText: String = ""
    
    var body: some View {
        NavigationView{
            Text("Hello, world!")
                .padding()
                .navigationTitle("하위하위")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Menu{
                            Button{
                                print("flame clicked")
                                self.ShowingAlert.toggle()
                                myText = "플레임 클릭됨"
                            }label: {
                                Label("빡코딩", systemImage: "flame.fill")
                            }
                            Button{
                                print("house clicked")
                                ShowingAlert = true
                                myText = "하우스 클릭됨"
                            }label: {
                                Label("자바", systemImage: "house.fill")
                            }
                        } label: {
                            // Custom Color 적용하는 방법
                            Circle().foregroundColor(Color.init(#colorLiteral(red: 0.7804669738, green: 0, blue: 1, alpha: 1)))
                                .frame(width: 50, height: 50)
                                .overlay(
                                    Label("더보기", systemImage: "ellipsis")
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                )
                        } // 메뉴
                            }
                        }// ToolBar
                .alert(isPresented: $ShowingAlert){
                    Alert(title: Text("Alert 테스트"), message: Text("alert 를 이용한 메시지"), dismissButton: .cancel(Text("확인")))
                }
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
