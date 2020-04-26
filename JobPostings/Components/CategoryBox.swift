//
//  CategoryBox.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/26/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import SwiftUI

struct CategoryBox: View {
    var text: String
    var body: some View {
        Text(text)
            .frame(minWidth: 50,
                   maxWidth: 100,
                   minHeight: 25,
                   maxHeight: 25,
                   alignment: .center)
            .foregroundColor(Color.JobPostings.barney)
            .border(Color.JobPostings.barney)
            .background(Color.JobPostings.gray)
    }
}

struct CategoryBox_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBox(text: "Developer")
    }
}
