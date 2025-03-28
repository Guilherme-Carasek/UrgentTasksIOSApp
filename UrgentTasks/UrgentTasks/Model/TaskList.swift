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
	
	nonmutating func encodeJSONData (name:String, description:String, category:Int, image:String) {
		
		
		
		let newTask = Task(id: (allTasks.count + 1), category: category, name: name, description: description, image: image, isCompleted: false)
		var newAllTasks = allTasks
		return newAllTasks.append(newTask)
		
		
		
		
		//do{
	//		let data = try JSONEncoder().encode(allTasks)
	//		let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
	//		let fileURL = documentsDirectory.appendingPathComponent("tasksList")
	//		try data.write(to: fileURL)
	//		print("gravado com sucesso")
	//	} catch {
	//		print("Erro ao gravar ao ficheiro JSON:\(error)")
	//	}
		
	}
	
}

