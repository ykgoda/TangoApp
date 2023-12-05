//
//  FloatingButton.swift
//  TangoApp
//
//  Created by YukiOgoda on 2023/10/31.
//

import Foundation
import SwiftUI

struct FloatingActionButton: View {
    var imageSystemName: String
    var action: Void
    var top: CGFloat
    var leading: CGFloat
    var bottom: CGFloat
    var trailing: CGFloat
    var disabled: Bool = false
    
    var body: some View {
                Button(action: {
                    action
                }, label: {
                    Image(systemName: imageSystemName)
                })
                .frame(width: 60, height: 60)
                .background(Color.white)
                .cornerRadius(30)
                .shadow(color: Color.gray, radius: 3, x: 3, y: 3)
                .padding(EdgeInsets(top: top, leading: leading, bottom: bottom, trailing: trailing))
                .disabled(disabled)
    
    }
}
