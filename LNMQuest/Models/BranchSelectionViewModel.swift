//
//  BranchSelectionViewModel.swift
//  CollegeRepo
//
//  Created by Smit Patel on 08/08/23.
//

import Foundation

class BranchSelectionViewModel: ObservableObject {
   @Published var selectedBranch = Branch(id: 0, name: "Branch!")
    
    // @Published var selectedBranch = Branch(id: 0, name: "Branch!!")
    
    let branches = [
        Branch(id: 1, name: "CSE"),
        Branch(id: 2, name: "CCE"),
        Branch(id: 3, name: "ECE"),
        Branch(id: 4, name: "MME")
        // ... add more branches ...
    ]
    
    
}
