//
//  PostingsView.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/20/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import SwiftUI

struct PostingsView: View {
    @ObservedObject var viewModel: PostingsViewModel
    @State private var sorted = false
    
    var postings: [Job] {
        return viewModel.postings
    }
    
    init(viewModel: PostingsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text(TextContent.Lables.todaysJobPostings)
            List(postings) { post in
                NavigationLink(destination: self.postingDestination(for: post)) {
                    PostingRow(job: post)
                }
            }
        }.padding()
    }
}

extension PostingsView {
    var emptySection: some View {
      Section {
        Text(TextContent.Lables.noResults)
          .foregroundColor(.gray)
      }
    }
    
    func postingDestination(for post: Job) -> PostingView {
        PostingView(viewModel: PostingViewModel(service: JobService(), id: post.id))
    }
}

#if DEBUG
struct PostingsView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = PostingsViewModel(service: JobService())
        return PostingsView(viewModel: vm)
    }
}
#endif
