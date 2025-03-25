//
//  TaskList.swift
//  UrgentTasks
//
//  Created by MultiLab PRT 06 on 25/03/2025.
//

import Foundation

struct TaskList {
    var allTasks: [Task] = []
    
    init() {
        decodeJSONData()
    }
    
    mutating func decodeJSONData(){
        if let url = Bundle.main.url(forResource:"tasksList", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                allTasks = try decoder.decode([Task].self, from: data)
                
            } catch {
                print("Error decoding JSON data: \(error)" )
            }
        }
        
    }
}

