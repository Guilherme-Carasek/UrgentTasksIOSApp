//
//  Task.swift
//  UrgentTasks
//
//  Created by MultiLab PRT 06 on 25/03/2025.
//
import SwiftUI

struct Task: Decodable, Identifiable {
    
    let id: Int
    let name: String
    let description: String
    let image: String
    let isCompleted: Bool
    
}

