//
//  TextContent.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/20/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import Foundation

struct TextContent {
    struct Errors {
        static let jobIndex = "Could not retrieve nay jobs, please try again."
    }
    
    struct Images {
        static let jobsBackground = "jobs_background"
    }
    
    struct Lables {
        static let todaysJobPostings = "Most Recent Job Postings"
        static let welcome           = "Welcome"
        static let noResults         = "No results"
    }
    
    struct Navigation {
        static let mainBarTitle = "Dom's Job Board!"
        static let browseJobsLink = "Browse Jobs"
    }
}
