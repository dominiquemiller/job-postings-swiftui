//
//  Job.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/20/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import Foundation

enum DateFormat {
    case numeric, monthDay
    
    var format: String {
        switch self {
        case .numeric:
            return "M/d/yy"
        case .monthDay:
            return "MMM d"
        }
    }
}

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

// MARK: - Convienance methods
extension Job {
    func categoriesAsString() -> String {
        return categories.joined(separator: ", ")
    }
    
    func locationAsString() -> String {
        return "\(location.city), \(location.state) \(location.country)"
    }
    
    func formatDate(for formatting: DateFormat) -> String {
        let df = DateFormatter()
        df.dateFormat = formatting.format
        return df.string(from: date)
    }
}

