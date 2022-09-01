//
//  RecipeModel.swift
//  Recipe List App V3
//
//  Created by Jason Zhang on 1/9/22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init(){
        recipes = DataService.getLocalData()
        
        
    }
    
    
    
    
}
