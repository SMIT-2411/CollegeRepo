//
//  SemesterSelectionViewModel.swift
//  CollegeRepo
//
//  Created by Smit Patel on 08/08/23.
//

import Foundation

class SemesterSelectionViewModel: ObservableObject{
  //  @Published var selectedSemester = Semester(id: 0, name: "Semester!!")
   @Published var selectedSemester = Semester(id: 0, name: "Semester!")
    
    
    let semesters = [
        Semester(id: 1, name: "Semester 1"),
        Semester(id: 2, name: "Semester 2"),
        Semester(id: 3, name: "Semester 3"),
        Semester(id: 4, name: "Semester 4"),
        Semester(id: 5, name: "Semester 5")
        
        // ... add more semesters ...
    ]
    
}
