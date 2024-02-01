//
//  HomeViewModel.swift
//  NYCSchool
//
//  Created by Saravanakumar Balasubramanian on 01/02/24.
//
import SwiftUI
import Foundation


class HomeViewModel {
    @State var isLoading = false
    @StateObject var schoolArray: [SchoolItem] = []
    
    func getSchoolList() {
        isLoading = true
        let url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json")
        downloadTask(url,  { response
            schoolArray = JSONDecoder(SchoolItem.self).from(response)
            isLoading = false
        }).resume
    }
}


struct SchoolItem {
    var dbn: String
    var schoolName: String
    var boro: String
    var overviewParagraph: String
}
