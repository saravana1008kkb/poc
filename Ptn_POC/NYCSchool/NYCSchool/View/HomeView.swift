//
//  ContentView.swift
//  NYCSchool
//
//  Created by Saravanakumar Balasubramanian on 01/02/24.
//

import SwiftUI

struct ContentView: View {
    
    let homeViewModel = HomeViewModel()

    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem()]) {
                for item in homeViewModel.$schoolArray {
                    VStack {
                        Text(item.dbn)
                        Text(item.schoolName)
                    }
                    .navigationDestination(for: SchoolItem.self) { view in
                        DetailView(detailSchoolItem: item)
                    }
                }
                
            }
        }
        .padding()
        .onAppear() {
            homeViewModel.getSchoolList()
        }
    }
}

#Preview {
    ContentView()
}
