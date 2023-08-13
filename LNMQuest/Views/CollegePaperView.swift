//
//  CollegePaperView.swift
//  CollegeRepo
//
//  Created by Smit Patel on 11/08/23.
//

import SwiftUI

struct CollegePaperView: View {
    @ObservedObject var branchSelection = BranchSelectionViewModel()
    @ObservedObject var semesterSelection = SemesterSelectionViewModel()
    @ObservedObject var subjectSelection = SubjectSelectionViewModel()
    @ObservedObject var paperSelection = PaperListViewModel()
    
    
   


    var body: some View {
        NavigationView{
            //ScrollView{
                VStack {
                    //for branch selection
                    Section("Select Branch!")
                    {
                        Picker("Select Branch", selection: $branchSelection.selectedBranch) {
                            ForEach(branchSelection.branches) { branch in
                                Text(branch.name).tag(branch)
                            }
                        }.pickerStyle(.wheel)
                    }.font(Montserrat.medium.font(size: 25))
                        .padding()
                    
                    
                    
                    //for semester selection
                    Section("Select Semester")
                    {
                        Picker("Select Semester", selection: $semesterSelection.selectedSemester) {
                            ForEach(semesterSelection.semesters) { semester in
                                Text(semester.name).tag(semester)
                            }
                        }.pickerStyle(WheelPickerStyle())
                    }.font(Montserrat.medium.font(size: 25))
                    
                    
                    
                    
                    // for subject selection
                    Section("Subject List")
                    {
                        Picker("Select Subject", selection: $subjectSelection.selectedSubject) {
                            ForEach(smit()) { subject in
                                Text(subject.name).tag(subject)
                            }
                        }
                        .pickerStyle(.menu)
                    }.font(Montserrat.medium.font(size: 25))
                    
                    
                    NavigationLink {
                        PaperListView(viewModel: PaperListViewModel(), subjectId: subjectSelection.selectedSubject.id)
                    } label: {
                        Image(systemName: "list.dash")
                            .foregroundColor(.gray)
                    }
                    
                    
                    
                    
                    
                    
                }
                .padding()
                .navigationTitle("Previous Year Papers")
         //   }
            
        }
    }
    
   func smit()->[Subject]
    {
        return subjectSelection.getFilteredSubjects(for: branchSelection.selectedBranch.id, semesterId: semesterSelection.selectedSemester.id)
    }
}

#Preview {
    CollegePaperView().preferredColorScheme(.dark)
}
