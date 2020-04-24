//
//  HeaderText.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/23/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import SwiftUI

struct HeaderText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.system(size: 30))
            .bold()
            .foregroundColor(Color.JobPostings.azure)
    }
}

struct HeaderText_Previews: PreviewProvider {
    static var previews: some View {
        HeaderText(text: "Hello World!")
    }
}
