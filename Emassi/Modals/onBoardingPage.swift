//
//  onBoardingPage.swift
//  Emassi
//
//  Created by MacBook Pro on 18.01.2022.
//

import Foundation

struct Page : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
}

var Slide = [
    Page(id: 0, image: "0", title: "Emassi", descrip: " "),
    Page(id: 1, image: "1", title: "Удобно", descrip: "Вы получаете возможность в любой момент найти, нанять и вызвать специалиста."),
    Page(id: 2, image: "2", title: "Безопасно", descrip: "Emassi дает возможность вызвать специалиста без предоплаты."),
    Page(id: 3, image: "3", title: "Начнем", descrip: "Войдите или зарегистрируйтесь в Emassi.")
]
