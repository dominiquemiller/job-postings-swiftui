//
//  Job.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/20/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import Foundation

struct Location: Codable {
    var city: String
    var state: String
    var country: String
}

struct Job: Codable, Identifiable {
    var id: Int
    var title: String
    var categories: [String]
    var date: Date
    var location: Location
    var type: String
    var schedule: String
    var travelRequired: Bool
    var summary: String
}

