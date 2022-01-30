//
//  categoryList.swift
//  Emassi
//
//  Created by MacBook Pro on 21.01.2022.
//

import Foundation

struct CategoryScroll : Identifiable {
    var id : Int
    var image : String
    var title : String
}

var Scroll = [
    CategoryScroll(id: 0100, image: "Перевозки и курьерские услуги", title: "Перевозки и курьерские услуги"),
    CategoryScroll(id: 0200, image: "Строительство и ремонтные работы", title: "Строительство и ремонтные работы"),
    CategoryScroll(id: 0300, image: "Быт и клининговые услуги", title: "Быт и клининговые услуги"),
    CategoryScroll(id: 0400, image: "Перевод и копирайтинг", title: "Перевод и копирайтинг"),
    CategoryScroll(id: 0500, image: "WEB-разработка и IT услуги", title: "WEB-разработка и IT услуги"),
    CategoryScroll(id: 0600, image: "Дизайн", title: "Дизайн"),
    CategoryScroll(id: 0700, image: "Красота и здоровье, спорт", title: "Красота и здоровье, спорт"),
    CategoryScroll(id: 0800, image: "Фото и видео", title: "Фото и видео"),
    CategoryScroll(id: 0900, image: "Репетиторы и обучение", title: "Репетиторы и обучение"),
    CategoryScroll(id: 1000, image: "Обслуживание и ремонт транспорта", title: "Обслуживание и ремонт транспорта"),
    CategoryScroll(id: 1100, image: "Организация мероприятий и праздников", title: "Организация мероприятий и праздников"),
    CategoryScroll(id: 1200, image: "Профессиональная помощь", title: "Профессиональная помощь"),
]
