//
//  TabBView.swift
//  nerugaku1
//
//  Created by Shunsuke Takagi on 2020/07/22.
//  Copyright © 2020 Shunsuke Takagi. All rights reserved.
//


import SwiftUI

extension UIApplication {
    func closeKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct TabBView: View {
    @State private var text: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView  ( showsIndicators: false){
                
//                ここから検索窓の実装
                ZStack {
                    Color.white
                        .edgesIgnoringSafeArea(.all)
                    
                    TextField("キーワードを入力して検索", text: $text)
                        .padding(.horizontal, -20.0)
                        .frame(width:300)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                }
                .gesture(
                    TapGesture()
                        .onEnded { _ in
                            UIApplication.shared.closeKeyboard()
                            
                    }
                    
                    
                )
                
                
                //        ここからタグ？カテゴリー？が並んだ要素がはじまる
                Group{
                    VStack{
                        HStack{
                            Future()
                            Spacer()
                            Future()
                        }
                        HStack{
                            Future()
                            Spacer()
                            Future()
                        }
                        .padding(.top, -5.0)
                    }
                    .padding([.top, .leading, .trailing])
                    VStack{
                        HStack{
                            Future()
                            Spacer()
                            Future()
                        }
                        HStack{
                            Future()
                            Spacer()
                            Future()
                        }
                        .padding(.top, -5.0)
                    }
                    .padding([.leading, .trailing])
                    VStack{
                        HStack{
                            Future()
                            Spacer()
                            Future()
                        }
                        HStack{
                            Future()
                            Spacer()
                            Future()
                        }
                        .padding(.top, -5.0)
                    }
                    .padding([.leading, .trailing])
                    VStack{
                        HStack{
                            Future()
                            Spacer()
                            Future()
                        }
                        HStack{
                            Future()
                            Spacer()
                            Future()
                        }
                        .padding(.top, -5.0)
                    }
                    .padding([.leading, .trailing])
                }
                
                
                
                
            }.navigationBarTitle(Text("Search"))
        }
        
    }
}


struct TabBView_Previews: PreviewProvider {
    static var previews: some View {
        TabBView()
    }
}
