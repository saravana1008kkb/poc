//
//  DetailView.swift
//  NYCSchool
//
//  Created by Saravanakumar Balasubramanian on 01/02/24.
//
import SwiftUI
import Foundation

struct DetailView: View {
    var detailSchoolItem: SchoolItem
    
    var body: some View {
        VStack {
            Text(detailSchoolItem.schoolName)
            Text(detailSchoolItem.overviewParagraph)
        }
    }
}
