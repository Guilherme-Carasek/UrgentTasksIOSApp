//
//  CreateTask.swift
//  UrgentTasks
//
//  Created by MultiLab PRT 15 on 25/03/2025.
//

import SwiftUI


struct CreateTask: View {
	
	@State var newTaskName: String = ""
	@State var selectedCategory: Int = 1
	@State var description: String = ""
	@State var image: String = ""
	
	
	var categoryList = CategoryList().allCategories
	
	
	
	var body: some View {
		Form {
			Section (header: Text("Select a category")) {
				Picker("Category", selection: $selectedCategory){
					ForEach(categoryList) { list in
						/*@START_MENU_TOKEN@*/Text(list.name)/*@END_MENU_TOKEN@*/.tag(list.id)
					}
				}
				.pickerStyle(.segmented)
				
			}
			Section (header: Text("name")) {
				TextField("name", text: $newTaskName)

			}
			
			Section (header: Text("Description")) {
				TextField ("description", text: $description)
			}
			
			Section (header: Text("image")){
				Picker("image", selection: $image){
					Image("Boulder")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(height: 65)
						.tag("Boulder")
					Image("poledance")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(height: 65)
						.tag("poledance")
					Image("motogp")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(height: 65)
						.tag("motogp")
				}
				.pickerStyle(.inline)
			}
			Button("Submit", action: {
				print($newTaskName)
			})
			
		}.preferredColorScheme(.dark)
	}
}

#Preview {
    CreateTask()
}
