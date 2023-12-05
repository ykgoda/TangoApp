//
//  BottomButtonsView.swift
//  TangoApp
//
//  Created by YukiOgoda on 2023/11/01.
//

import Foundation
import SwiftUI

struct BottomButtonsView: View {
    @Binding var pageIndex: Int
//    @Binding var contents: Array<Content>
//    @Binding var val: String
//    @Binding var frontVal: String
//    @Binding var backVal: String
    let leftAction: Void
//    let plusAction: Void
    let rightAction: Void
    @ObservedObject var vm = MakeTangoViewModel()
    
    func tap() -> (){
        print("a")
    }
    
    var body: some View {
        HStack {
            FloatingActionButton(imageSystemName: "arrowshape.left", action: leftAction, top: 0, leading: 0, bottom: 0, trailing: 0, disabled: pageIndex == 0)
            Spacer()
//            FloatingActionButton(imageSystemName: "plus", action: plusAction, top: 0, leading: 0, bottom: 0, trailing: 0, disabled: pageIndex < 3)
            Spacer()
            FloatingActionButton(imageSystemName: "arrowshape.right", action: rightAction, top: 0, leading: 0, bottom: 0, trailing: 0)
        }
    }
}
