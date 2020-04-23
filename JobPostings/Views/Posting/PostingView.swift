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
    
    init(viewModel: PostingViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PostingView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = PostingViewModel(service: JobService(), id: 1)
        return PostingView(viewModel: vm)
    }
}
