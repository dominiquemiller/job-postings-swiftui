//
//  NavLinkText.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/20/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import SwiftUI

struct NavLinkText: View {
    var value: String
    var body: some View {
        Text(value)
            .frame(width: 200, height: 50, alignment: .center)
            .background(Color.yellow)
            .cornerRadius(24)
            .foregroundColor(Color.red)
    }
}
