//
//  PaperListViewModel.swift
//  CollegeRepo
//
//  Created by Smit Patel on 08/08/23.
//

import Foundation

class PaperListViewModel: ObservableObject {
   
    @Published var subId = 0
    
        
     let papers = [
            Paper(id: 1, name: "Assignment-1", pdfURL:URL(string:"https://drive.google.com/file/d/1T-PlrlfZwXXzx5jRwuU-izQZ99QZlHX4/view?usp=share_link")!, subjectId: 1),
            Paper(id: 2, name: "Boolean Algebra", pdfURL: URL(string: "https://drive.google.com/file/d/1Nm5InKSFiUWGilWyLcG1IEGYOrCDcxOI/view?usp=share_link")!, subjectId: 1),
        ]
    
    
    func fetchPapers(subjectId:Int)->[Paper]
    {
        return papers.filter { paper in
            return paper.subjectId == subjectId}
    }
}
