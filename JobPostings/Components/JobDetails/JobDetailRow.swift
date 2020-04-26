//
//  JobDetailRow.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/25/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import SwiftUI

struct JobDetailRow: View {
    var rowTitle: String
    var rowData: String
    var rowColor: Color
    
    var body: some View {
        HStack {
            Text(rowTitle)
                .bold()
                .frame(minWidth: 0, maxWidth: 150, alignment: .leading)
            Text(rowData)
            Spacer()
        }.background(rowColor)
    }
}

struct JobDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        JobDetailRow(rowTitle: "Date Posted:",
                     rowData: "4/12/202",
                     rowColor: Color.JobPostings.gray)
    }
}
