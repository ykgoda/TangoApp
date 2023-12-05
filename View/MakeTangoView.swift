//
//  MakeTangoView.swift
//  TangoApp
//
//  Created by YukiOgoda on 2023/10/12.
//

import SwiftUI

//class MakeTangoSetting: ObservableObject {
//    
//}

struct MakeTangoView: View {    
    @State var val: String = ""
    @State var isBack: Bool = false
    @State var frontVal: String = ""
    @State var backVal: String = ""     
    @State var pageIndex: Int = 0
    @State var settingContents: Array<SettingContent> = [
        SettingContent(id: "title", label: "タイトル", val: ""),
        SettingContent(id: "front", label: "表の内容", val: ""),
        SettingContent(id: "back", label: "裏の内容", val: "")
    ]
    @State var contents: Array<Content> = []
    @State private var doneMaking: Bool = false
//    @ObservedObject var vm = MakeTangoViewModel()
    
    func addContent() -> (){
        contents.append(Content(front: frontVal, back: backVal))
    }
    
    var body: some View {
        VStack {
            if pageIndex < 3 {
                Text("\(settingContents[pageIndex].label)を決めてください")
                    .font(.system(size: 32))
                TextField("\(settingContents[pageIndex].label)を入力してください",text: $val)
                    .multilineTextAlignment(TextAlignment.center)
                    .border(.secondary)
                Button(action: {
                    pageIndex += 1
                    val = ""
                }, label: {Text("決定")})
            } else {
                HStack {
                    VStack {
                        Text("表")
                            .font(.system(size: 32))
                        TextField("表の内容を入力してください",text: $frontVal)
                    }
                    VStack{
                        Text("裏")
                            .font(.system(size: 32))
                        TextField("裏の内容を入力してください",text: $backVal)
                    }
                    
                }
                    
                    
                Button(action: {addContent()}, label: {Text("追加")})
                    .disabled(frontVal.isEmpty || backVal.isEmpty)
                NavigationStack{
                    
                }.navigationDestination(isPresented: $doneMaking, destination: {
                    MenuView()
                })
                Button(action: {}, label: {Text("作成完了")})
                    .disabled(contents.count == 0)
            }
            
            
//            BottomButtonsView(pageIndex: $pageIndex,leftAction: leftBtnTap(),  rightAction: rightBtnTap())
        }
        .padding(.all,64.0)
    }
}

struct MakeTangoView_Previews: PreviewProvider {
    static var previews: some View {
        MakeTangoView()
    }
}


