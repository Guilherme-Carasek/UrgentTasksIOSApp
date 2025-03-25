//
//  TaskDetails.swift
//  UrgentTasks
//
//  Created by MultiLab PRT 06 on 25/03/2025.
//

import SwiftUI

struct TaskDetails: View {
    
    let task: Task
    
    var body: some View {
        
        VStack {
            ZStack {
                Image(task.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height:400)
                    .offset(y:50)
                    .clipped()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
            }
            .padding()
            Text(task.name)
                .font(.title3)
                .fontWeight(.bold)
            Text(task.description)
                .padding()
                .multilineTextAlignment(.center)
        }
        .preferredColorScheme(.dark)
    }
}
    
#Preview {
    TaskDetails(task: TaskList().allTasks[0])
}
