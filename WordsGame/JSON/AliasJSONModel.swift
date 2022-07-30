//
//  AliasJSONModel.swift
//  WordsGame
//
//  Created by ALEKSEY SUSLOV on 29.07.2022.
//

import Foundation


struct AliasJSONModel: Decodable {
    let aliasWordsPacks: [AliasWordsPack]
}

struct AliasDataManager {
    
    static func fetchData() -> [AliasWordsPack]? {
        
        guard let sourcesURL = Bundle.main.url(forResource: "AliasWordsCategories", withExtension: "json") else {
            print("1")
            return nil
        }
        
        guard let aliasData = try? Data(contentsOf: sourcesURL) else {
            print("2")
            return nil
        }
        
        let decoder = JSONDecoder()
        
        guard let aliasWordPacksFromJSON = try? decoder.decode(AliasJSONModel.self, from: aliasData) else {
            print("3")
            return nil
        }
        
        let aliasWordPacks = aliasWordPacksFromJSON.aliasWordsPacks
        return aliasWordPacks
    }
}
