//
//  PostingViewModel.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/21/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import Foundation
import Combine

class PostingViewModel: ObservableObject {
    @Published var header: String = TextContent.Labels.todaysJobPostings
    @Published var posting: Job?
        
    private let jobService: JobRetrieval
    private var disposables = Set<AnyCancellable>()
    
    init(service: JobRetrieval, id: Int) {
        jobService = service
        getPosting(with: id)
    }
    
    private func getPosting(with id: Int) {
        jobService.show(with: id)
            .receive(on: DispatchQueue.global(qos: .userInitiated))
            .sink(receiveValue: { job in
                self.posting = job
            }).store(in: &disposables)
    }
}
