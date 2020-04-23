//
//  JobService.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/20/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import Foundation
import Combine

protocol JobRetrieval {
    func index() -> AnyPublisher<[Job], Never>
    func show(with: Int) -> AnyPublisher<Job?, Never>
}

class JobService: JobRetrieval {
    func index() -> AnyPublisher<[Job], Never> {
        let jobs = Bundle.main.decode([Job].self, from: "jobs.json")
        return Just(jobs).eraseToAnyPublisher()
    }
    
    func show(with id: Int) -> AnyPublisher<Job?, Never> {
        let jobs = Bundle.main.decode([Job].self, from: "jobs.json")
        let job = jobs.first{ $0.id == id }
        return Just(job).eraseToAnyPublisher()
    }
}
