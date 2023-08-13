//
//  SubjectSelectionViewModel.swift
//  CollegeRepo
//
//  Created by Smit Patel on 08/08/23.
//

import Foundation

class SubjectSelectionViewModel: ObservableObject {
 @Published var selectedSubject = Subject(id: 0, name:"Subject", branchId: 0, semesterId: 0)
    
   // @Published var selectedSubject: Subject?
 
    
    let  subjects = [
        
        
        //SUBJECTS FOR CSE DEPARTMENT
        Subject(id: 1, name: "M-1", branchId: 1, semesterId: 1),
        Subject(id: 2, name: "BE", branchId: 1, semesterId: 1),
        Subject(id: 3, name: "M-2", branchId: 1, semesterId: 2),
        Subject(id: 4, name: "DSA", branchId: 1, semesterId: 2),
        Subject(id: 5, name: "DSY", branchId: 1, semesterId: 2),
        Subject(id: 6, name: "DMS", branchId: 1, semesterId: 2),
        Subject(id: 7, name: "M-3", branchId: 1, semesterId: 3),
        Subject(id: 8, name: "AP", branchId: 1, semesterId: 3),
        Subject(id: 9, name: "COA", branchId: 1, semesterId: 3),
        Subject(id: 10, name: "IDBMS", branchId: 1, semesterId: 3),
        Subject(id: 11, name: "P&S", branchId: 1, semesterId: 3),
        Subject(id: 12, name: "CN", branchId: 1, semesterId: 4),
        Subject(id: 13, name: "DAA", branchId: 1, semesterId: 4),
        Subject(id: 14, name: "DS", branchId: 1, semesterId: 4),
        Subject(id: 15, name: "CT", branchId: 1, semesterId: 4),
        Subject(id: 16, name: "TOC", branchId: 1, semesterId: 4),
        Subject(id: 17, name: "OS", branchId: 1, semesterId: 4),
        Subject(id: 18, name: "AI", branchId: 1, semesterId: 5),
        Subject(id: 19, name: "CS", branchId: 1, semesterId: 5),
        Subject(id: 20, name: "SWE", branchId: 1, semesterId: 5),
        Subject(id: 21, name: "IDS", branchId: 1, semesterId: 5),
        Subject(id: 22, name: "DL", branchId: 1, semesterId: 5),
        Subject(id: 23, name: "SC", branchId: 1, semesterId: 5),
        
        
        
        //SUBJECTS FOR CCE DEPARTMENT
        Subject(id: 24, name: "M-1", branchId: 2, semesterId: 1),
        Subject(id: 25, name: "M-2", branchId: 2, semesterId: 2),
        Subject(id: 26, name: "M-3", branchId: 2, semesterId: 3),
        Subject(id: 27, name: "P&S", branchId: 2, semesterId: 4),
        Subject(id: 28, name: "DSP", branchId: 2, semesterId: 5),
        
        //SUBJECTS FOR ECE DEPARTMENT
        Subject(id: 29, name: "M-1", branchId: 3, semesterId: 1),
        Subject(id: 30, name: "M-2", branchId: 3, semesterId: 2),
        Subject(id: 31, name: "M-3", branchId: 3, semesterId: 3),
        Subject(id: 32, name: "P&S", branchId: 3, semesterId: 4),
        Subject(id: 33, name: "DC", branchId: 3, semesterId: 5),
        
        //SUBJECTS FOR MME DEPARTMENT
        Subject(id: 34, name: "M-1", branchId: 3, semesterId: 1),
        Subject(id: 35, name: "M-2", branchId: 3, semesterId: 2),
        Subject(id: 36, name: "M-3", branchId: 3, semesterId: 3),
        Subject(id: 37, name: "MD", branchId: 3, semesterId: 4),
        Subject(id: 38, name: "CAD", branchId: 3, semesterId: 5),
        
        
        
        
        
    ]
    
    func getFilteredSubjects(for branchId: Int, semesterId: Int) -> [Subject] {
            return subjects.filter { subject in
                return subject.branchId == branchId && subject.semesterId == semesterId
            }
        }
    
    
}
