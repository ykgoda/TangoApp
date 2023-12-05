//
//  Menu.swift
//  TangoApp
//
//  Created by YukiOgoda on 2023/10/12.
//

struct Book: Hashable {
    let id: String
    let title: String
    let frontTheme: String
    let backTheme: String
    let contens: Array<BookContents>
}

struct BookContents: Decodable, Hashable {
    let front: String
    let back: String
}

