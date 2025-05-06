//
//  TaskModel.swift
//  Remainderr
//
//  Created by Yiğit Bal on 5.05.2025.
//


import Foundation

struct TaskModel: Codable {
    var id: String
    var title: String
    var description: String
    var isCompleted: Bool
    var createdAt: Date
    var updatedAt: Date?
}

