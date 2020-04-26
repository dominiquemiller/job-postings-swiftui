//
//  TextContent.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/20/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import Foundation

struct TextContent {
    struct Buttons {
        static let sortPostingsByNewest = "Sort by most recent"
        static let sortPostingsByOldes = "Sort by oldest"
        static let retrievePost = "Could not retrieve job, please try again."
        static let alertTitle = "Oh No!"
    }
    
    struct Images {
        static let jobsBackground = "jobs_background"
    }
    
    struct Labels {
        static let datePosted        = "Date Posted:"
        static let location          = "Location:"
        static let jobType           = "Job Type:"
        static let jobSchedule       = "Job Schedule:"
        static let travelRequired    = "Travel Required:"
        static let categories        = "Categories:"
        static let jobDescription    = "Job Description"
        static let jobDetails        = "Job Details"
        static let ok                = "OK"
        static let noResults         = "No results"
        static let posted            = "Posted"
        static let todaysJobPostings = "Most Recent Job Postings"
        static let welcome           = "Welcome"
    }
    
    struct Navigation {
        static let mainBarTitle = "Dom's Job Board!"
        static let browseJobsLink = "Browse Jobs"
    }
}
