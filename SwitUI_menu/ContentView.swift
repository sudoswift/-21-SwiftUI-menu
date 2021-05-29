//
//  ContentView.swift
//  SwitUI_menu
//
//  Created by izvern on 2021/05/29.
//

import SwiftUI

let myPets = ["댕댕이","껄룩이","찍찍이"]

struct ContentView: View {
    
    @State private var ShowingAlert: Bool = false
    @State private var myText: String = ""
    @State private var selected: Int = 0
    
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
                                myText = "플레임"
                            } label: {
                                Label("불꽃", systemImage: "flame.fill")
                            }
                            Section{
                                Button{
                                    print("house clicked")
                                    ShowingAlert.toggle()
                                    myText = "하우스"
                                }label: {
                                    Label("집", systemImage: "house.fill")
                                }
                            }
                            Section{
                                Button{
                                    print("house clicked")
                                    ShowingAlert.toggle()
                                    myText = "파일"
                                }label: {
                                    Label("새 파일 만들기", systemImage: "doc")
                                }
                                Button{
                                    print("house clicked")
                                    ShowingAlert.toggle()
                                    myText = "폴더"
                                }label: {
                                    Label("새 폴더 만들기", systemImage: "folder")
                                }
                            }
                            Section{
                                Button{
                                    print("house clicked")
                                    ShowingAlert.toggle()
                                    myText = "삭제"
                                }label: {
                                    Label("파일 모두 삭제", systemImage: "trash")
                                }
                            }
                            Picker(selection: $selected, label: Text("애완동물 선택")) {
                                ForEach(myPets.indices){ index in
                                    Text("\(myPets[index])").tag(index)
                                }
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
                    Alert(title: Text("\(myText) 클릭됨"), message: Text("alert 를 이용한 메시지"), dismissButton: .cancel(Text("확인")))
                }
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
