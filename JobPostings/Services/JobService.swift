//
//  JobService.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/20/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import Foundation
import Combine

enum ApiErrorResponse: Error {
    case notFound
    case badRequest
    case unauthorized
    case internalServerError
    case recordInvalid
}

protocol JobRetrieval {
    func index() -> AnyPublisher<[Job], Never>
    func show(with: Int) -> AnyPublisher<Job, ApiErrorResponse>
}

class JobService: JobRetrieval {
    var jobs: [Job]

    init() {
        jobs = Bundle.main.decode([Job].self, from: "jobs.json")
    }

    func index() -> AnyPublisher<[Job], Never> {
        return Just(jobs).eraseToAnyPublisher()
    }

    func show(with id: Int) -> AnyPublisher<Job, ApiErrorResponse> {
        return Future<Job, ApiErrorResponse> { promise in
            if let job = self.jobs.first(where: { $0.id == id }) {
                promise(.success(job))
            } else {
                promise(.failure(.notFound))
            }
        }.eraseToAnyPublisher()
    }
}
