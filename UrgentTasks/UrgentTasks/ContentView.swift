//
//  ContentView.swift
//  UrgentTasks
//
//  Created by MultiLab PRT 15 on 25/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var taskList = TaskList().allTasks
    
    func removeAllTasks(){
        taskList.removeAll()
    }

    func removeTask(task:Task) {
        taskList.remove(at:task.id - 1)
    }
    
    var body: some View {
        
        VStack{
            
            
            NavigationStack {
                HStack (spacing:60){
                    Spacer(minLength: 299)
                    NavigationLink{
                        Id()
                    } label: {
                        Image(systemName: "person.fill.questionmark")
                            .resizable()
                            .frame(width: 45, height: 45)
                    }
                    Spacer()
                }
                
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
                            Spacer()
                            if(task.isCompleted){
                                Image(systemName: "checkmark")
                                    .foregroundColor(.green)
                            } else{
                                Image(systemName: "xmark")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                .navigationTitle("Task List")
                NavigationLink { CreateTask()
                } label:{
                    Text("Add new task")
                        .font(.title3)
                        .foregroundColor(.accentColor)
                }
                Button("Remove All", action: {
                    removeAllTasks()
                })
                .font(.title3)
                .foregroundColor(.accentColor)
            }
            .preferredColorScheme(.dark)
        }
        
    }
}

#Preview {
    ContentView()
}
