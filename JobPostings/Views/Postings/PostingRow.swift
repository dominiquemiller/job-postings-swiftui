//
//  PostingRow.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/21/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import SwiftUI

struct PostingRow: View {
    var job: Job
    var body: some View {
        VStack {
            HStack {
                Text(job.title)
                Spacer()
                Text(job.formatDate(for: .monthDay))
            }
            HStack {
                Text(job.type)
                Text("|")
                Text(job.location.country)
                Spacer()
            }
            Text(job.summary).padding(.top, 10)
        }.padding([.leading, .trailing])
    }
}

struct PostingRow_Previews: PreviewProvider {
    static var previews: some View {
        let job = Job(id: 1,
                      title: "ios Developer",
                      categories: ["iOS"],
                      date: Date(),
                      location: Location(city: "Sunrise", state: "FL", country: "USA"),
                      type: "Flexible Schedule",
                      schedule: "Flexible Schedule",
                      travelRequired: true,
                      summary: "Developer needed for a partially remote position requiring exceptional communication skills, iOS application development experience, familiarity with Swift, Objective-C, Cocoa Touch, APIs, and iOS frameworks.")
        return PostingRow(job: job)
    }
}
