//
//  ContentView.swift
//  UrgentTasks
//
//  Created by MultiLab PRT 15 on 25/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    var taskList = TaskList().allTasks

    
    var body: some View {
        
        
        NavigationStack {
            List(taskList) { task in
                NavigationLink {
                    TaskDetails(task: task)
                } label: {
                    HStack {
                        Image(task.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .shadow(color: .white, radius: 1)
                        Text(task.name)
                            .fontWeight(.bold)
                    }
                }
            }
            .navigationTitle("Task List")
        }
        .preferredColorScheme(.dark)
        }
     
}

#Preview {
    ContentView()
}
