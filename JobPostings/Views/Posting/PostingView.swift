//
//  PostingView.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/21/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import SwiftUI

struct PostingView: View {
    @ObservedObject var viewModel: PostingViewModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    init(viewModel: PostingViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            VStack {
                HeaderText(text: TextContent.Lables.jobDescription)
                viewModel.posting.map { Text($0.summary) }
            }
            VStack {
                HeaderText(text: TextContent.Lables.jobDetails)
                viewModel.posting.map { JobDetails(posting: $0)}
            }
        }.padding()
    }
}

#if DEBUG
struct PostingView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = PostingViewModel(service: JobService(), id: 1)
        return PostingView(viewModel: vm)
    }
}
#endif
