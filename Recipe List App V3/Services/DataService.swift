//
//  DataService.swift
//  Recipe List App V3
//
//  Created by Jason Zhang on 1/9/22.
//

import Foundation

class DataService {
    static func getLocalData() -> [Recipe]{
        
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "data")
        
        // Check if path string is not nil
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a json decoder
            var decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Add the unique IDs
                for r in recipeData {
                    r.id=UUID()
                }
                
                // Return the recipes
                return recipeData
            }
            catch {
                // Decoding json error
                print(error)
            }
            

        }
        catch {
            // Reading json error
            print(error)
        }
        
       
        

        
        return [Recipe]()
    }
}


