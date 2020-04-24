//
//  PostingsViewModel.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/20/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import SwiftUI
import Combine

class PostingsViewModel: ObservableObject {
    @Published var header: String = TextContent.Lables.todaysJobPostings
    @Published var postings: [Job] = []
    var sortedByNewest = true {
        didSet {
            sortedByDate(newest: sortedByNewest)
        }
    }
    
    private let jobService: JobRetrieval
    private var disposables = Set<AnyCancellable>()
    
    init(service: JobRetrieval) {
        jobService = service
        getIndex()
    }
    
    func sortedByDate(newest: Bool) {
        var sorted: [Job] = []
        if newest {
            sorted = postings.sorted { $0.date > $1.date }
        } else {
            sorted = postings.sorted { $0.date < $1.date }
        }
        
        postings = sorted
    }
    
    private func getIndex() {
        jobService.index()
            .receive(on: DispatchQueue.global(qos: .userInitiated))
            .sink(receiveValue: { jobs in
                let sorted = jobs.sorted { $0.date > $1.date }
                self.postings.append(contentsOf: sorted)
            }).store(in: &disposables)
    }
}
