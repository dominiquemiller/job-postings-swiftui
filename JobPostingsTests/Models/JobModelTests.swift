//
//  JobModelTests.swift
//  JobPostingsTests
//
//  Created by Dominique Miller on 4/24/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import XCTest
@testable import JobPostings

class JobModelTests: XCTestCase {
    let todaysDate = Date()
    let dateFormatter = DateFormatter()
    var job: Job!
    
    override func setUp() {
        job = Job(id: 1,
                  title: "ios Developer",
                  categories: ["iOS", "developer", "Apple"],
                  date: Date(),
                  location: Location(city: "FakeTown", state: "FL", country: "USA"),
                  type: "Flexible Schedule",
                  schedule: "Flexible Schedule",
                  travelRequired: true,
                  summary: "Short and sweet summary")
    }

    override func tearDown() {
    }

    func testJob_returns_location_as_string() {
        let location = job.locationAsString()
        XCTAssertTrue(location == "FakeTown, FL USA")
    }
    
    func testJob_returns_categories_as_string() {
        let categories = job.categoriesAsString()
        XCTAssertTrue(categories == "iOS, developer, Apple")
    }
    
    func testJob_returns_date_with_month_and_day() {
        let monthDay = job.formatDate(for: .monthDay)
        dateFormatter.dateFormat = "MMM d"
        let formattedDate = dateFormatter.string(from: todaysDate)
        XCTAssertTrue(monthDay == formattedDate)
    }
    
    func testJob_returns_date_formatted_numerically() {
        let monthDay = job.formatDate(for: .numeric)
        dateFormatter.dateFormat = "M/d/yy"
        let formattedDate = dateFormatter.string(from: todaysDate)
        XCTAssertTrue(monthDay == formattedDate)
    }
}
