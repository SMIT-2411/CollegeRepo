//
//  PaperListView.swift
//  CollegeRepo
//
//  Created by Smit Patel on 10/08/23.
//

import SwiftUI

struct PaperListView: View {
   @ObservedObject var subjectSelect = SubjectSelectionViewModel()
    @ObservedObject var paperSelect = PaperListViewModel()
    @ObservedObject var viewModel: PaperListViewModel
        let subjectId: Int

        var body: some View {
            
            List(patel(), id: \.id) { paper in
                Text(paper.name)
                Button("Download") {
                    // Handle downloading the paper here
                    // You can use the URL provided in the Paper model
                }
            }
            
        
           
        }
    func patel()->[Paper]
    {
        return paperSelect.fetchPapers(subjectId: subjectId)
    }

}


#Preview {
    PaperListView(viewModel: PaperListViewModel(), subjectId:1)
}
