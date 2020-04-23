//
//  ContentView.swift
//  JobPostings
//
//  Created by Dominique Miller on 4/20/20.
//  Copyright © 2020 DomsBiz. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image(TextContent.Images.jobsBackground)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.4)
                VStack {
                    Text(TextContent.Lables.welcome)
                    NavigationLink(destination: PostingsView(viewModel: PostingsViewModel(service: JobService()))) {
                        NavLinkText(value: TextContent.Navigation.browseJobsLink)
                    }
                }.navigationBarTitle( Text(TextContent.Navigation.mainBarTitle))
            }
        }
    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
