//
//  TaskDetails.swift
//  UrgentTasks
//
//  Created by MultiLab PRT 06 on 25/03/2025.
//

import SwiftUI

struct TaskDetails: View {
    
    let task: Task
	let allCategories = CategoryList().allCategories
	
	
	func getCategoryName() -> String{
		for category in allCategories {
			if category.id == task.category{
				return category.name
			}
		}
		return ""
	}
	
	
	
    
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
			HStack {
				Text(task.name)
								.font(.title3)
								.fontWeight(.bold)
				if(task.isCompleted){
					Image(systemName: "checkmark")
						.foregroundColor(.green)
				} else{
					Image(systemName: "xmark")
						.foregroundColor(.red)
				}
			}
            
			Text(getCategoryName())
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
