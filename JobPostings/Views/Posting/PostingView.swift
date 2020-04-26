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
            HStack {
                Text("Posted")
                viewModel.posting.map { Text($0.formatDate(for: .numeric)) }
                Spacer()
            }.padding([.top, .bottom])
            
            viewModel.posting.map { HeaderText(text: $0.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top) }
            HStack {
                ForEach(viewModel.posting!.categories, id:\.self) { cat in
                    CategoryBox(text: cat)
                }
            }.frame(maxWidth: .infinity, alignment: .leading)
             .padding(.bottom)
            VStack {
                HeaderText(text: TextContent.Lables.jobDescription)
                    .frame(maxWidth: .infinity, alignment: .leading)
                viewModel.posting.map { Text($0.summary) }
            }.padding([.top, .bottom])
            VStack {
                HeaderText(text: TextContent.Lables.jobDetails)
                    .frame(maxWidth: .infinity, alignment: .leading)
                viewModel.posting.map { JobDetails(posting: $0)}
            }.padding([.top, .bottom])
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
