//
//  AliasWordsPack.swift
//  Alias
//
//  Created by Дмитрий Х on 28.07.22.
//
typealias Word = String

struct AliasWordsPack {
    let title: String
    let words: [Word]
}
extension AliasWordsPack {
    static func getAliasWordsCategories() -> [AliasWordsPack] {
        let words = [
            
            AliasWordsPack(title: "Животные",
                                       words: [
                                        "Осел",
                                        "Жираф",
                                        "Бегемот",
                                        "Барсук",
                                        "Броненосец",
                                        "Альпака",
                                        "Панда",
                                        "Вомбат",
                                        "Фенек",
                                        "Морская свинка",
                                        "Сурикат",
                                        "Ленивец",
                                        "Лемур",
                                        "Коала",
                                        "Выдра",
                                        "Кошка",
                                        "Капибара",
                                        "Гепард",
                                        "Лев",
                                        "Скорпион",
                                        "Попугай",
                                        "Мышь",
                                        "Суслик",
                                        "Коза",
                                        "Крот",
                                        "Воробей",
                                        "Орёл",
                                        "Жираф",
                                        "Шимпанзе",
                                        "Жучок",
                                        "Лягушка",
                                        "Кузнечик",
                                        "Свинья",
                                        "Корова",
                                        "Осёл",
                                        "Бабочка",
                                        "Сова",
                                        "Человек",
                                        "Белка",
                                        "Утка"
                                       ]),
        ]
        
        return words
    }
}
