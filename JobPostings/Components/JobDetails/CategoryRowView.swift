//
//  CategoryRowView.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/26/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import SwiftUI

struct CategoryRowView: View {
    var categories: [String]
    var body: some View {
        HStack {
            ForEach(categories, id:\.self) { cat in
                CategoryBox(text: cat)
            }
        }
    }
}

struct CategoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRowView(categories: ["iOS", "Developer"])
    }
}
