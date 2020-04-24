//
//  JobDetails.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/23/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import SwiftUI

struct JobDetails: View {
    var posting: Job
    var body: some View {
        VStack {
            HStack {
                Text("Date Posted:").bold()
                Text(posting.formatDate(for: .numeric))
                Spacer()
            }
            HStack {
                Text("Location:").bold()
                Text(posting.location.country)
                Spacer()
            }
            HStack {
                Text("Job Type:").bold()
                Text(posting.type)
                Spacer()
            }
            HStack {
                Text("Job Schedule:").bold()
                Text(posting.schedule)
                Spacer()
            }
            HStack {
                Text("Travel Required:").bold()
                Text(travelRequired())
                Spacer()
            }
            HStack {
                Text("Categories:").bold()
                Text(posting.categoriesAsString())
                Spacer()
            }
        }
    }
    
    private func travelRequired() -> String {
        return posting.travelRequired ? "Yes" : "No"
    }
}

struct JobDetails_Previews: PreviewProvider {
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
        
        return JobDetails(posting: job)
    }
}
