//
//  MenuView.swift
//  TangoApp
//
//  Created by YukiOgoda on 2023/10/12.
//

import SwiftUI

struct MenuView: View {
    @State private var isMakePage: Bool = false
    
    let bookList: Array<Book> = [Book(id: "0",title: "英単語",frontTheme:"英語",backTheme:"日本語",contens: [BookContents(front: "cat", back: "猫"),BookContents(front: "dog", back: "犬")]),
    Book(id: "1", title: "動詞英単語", frontTheme: "日本語", backTheme: "英語", contens: [
    BookContents(front: "見る", back: "see"),BookContents(front: "言う", back: "say")
    ])
    ]
    
    var body: some View {
        VStack {
            if isMakePage {
                MakeTangoView()
            } else {
                VStack {
                    
                    List(self.bookList,id: \.self) { book in
                        VStack (alignment: .leading){
                            Text(book.title)
                                .padding(.all, 4)
                                .frame(maxWidth: .infinity, alignment: .center)
                            Text("\(book.frontTheme) / \(book.backTheme)")
                                .frame(maxWidth: .infinity, alignment: .center)
                                
                                
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.all,16)
                        .cornerRadius(16)
                        .background(Color.white)
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                        }
                    .listStyle(.plain)
                    .background(Color(UIColor(red: 185/255, green: 247/255, blue: 69/255, alpha: 1.0)))
                    
                }
                
        }
            
            NavigationView{
                
            }.toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button("List"){isMakePage = false}
                    Spacer()
                    Button("Make"){isMakePage = true}
                }
            }
            
        }
        
        
    }
}
