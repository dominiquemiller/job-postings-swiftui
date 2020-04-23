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
    @Published var posting: Job?
    
    private let jobService: JobRetrieval
    private var disposables = Set<AnyCancellable>()
    
    init(service: JobRetrieval) {
        jobService = service
        getIndex()
    }
    
    private func getIndex() {
        jobService.index()
            .receive(on: DispatchQueue.global(qos: .userInitiated))
            .sink(receiveValue: { jobs in
                self.postings.append(contentsOf: jobs)
            }).store(in: &disposables)
            
    }
}