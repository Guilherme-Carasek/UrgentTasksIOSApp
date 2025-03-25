//
//  CategoryList.swift
//  UrgentTasks
//
//  Created by MultiLab PRT 15 on 25/03/2025.
//


import Foundation

struct CategoryList {
	var allCategories: [Category] = []
	
	init() {
		decodeJSONData()
	}
	
	mutating func decodeJSONData(){
		if let url = Bundle.main.url(forResource:"category", withExtension: "json") {
			do {
				let data = try Data(contentsOf: url)
				let decoder = JSONDecoder()
				decoder.keyDecodingStrategy = .convertFromSnakeCase
				allCategories = try decoder.decode([Category].self, from: data)
				
			} catch {
				print("Error decoding JSON data: \(error)" )
			}
		}
		
	}
	
	
}
