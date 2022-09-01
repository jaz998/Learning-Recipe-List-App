//
//  DataService.swift
//  Recipe List App V3
//
//  Created by Jason Zhang on 1/9/22.
//

import Foundation

class DataService {
    func getLocalData() -> [Recipe]{
        
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "data")
        
        // Check if path string is not nil
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        // Create a data object
        
        // Decode the data with a json decoder
        
        // Add the unique IDs
        
        // Return the recipes
        
        return [Recipe]()
    }
}


