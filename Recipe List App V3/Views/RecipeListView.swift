//
//  ContentView.swift
//  Recipe List App V3
//
//  Created by Jason Zhang on 31/8/22.
//

import SwiftUI

struct RecipeListView: View {
    
    // Reference the view model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        Text("Hello, everyone!")
            .padding()
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
