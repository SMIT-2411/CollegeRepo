//
//  Data.swift
//  CollegeRepo
//
//  Created by Smit Patel on 08/08/23.
//

import Foundation

struct Subject: Identifiable,Hashable {
    let id: Int
    let name: String
    let branchId:Int
    let semesterId:Int
}

struct Paper:Identifiable,Hashable {
    let id: Int
    let name: String
   let pdfURL: URL
    let subjectId: Int
}

struct Branch:Identifiable,Hashable {
    let id: Int
    let name: String
    
}
struct Semester:Identifiable,Hashable{
    let id: Int
        let name: String
}


