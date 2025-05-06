//
//  TaskManager.swift
//  Remainderr
//
//  Created by Yiğit Bal on 6.05.2025.
//


import Foundation

public struct Task {
    public let id: String
    public let title: String
    public let detail: String?
    public let dueDate: Date
    public let dueTime: Date
    public var isCompleted: Bool

    
    public init(
        id: String,
        title: String,
        detail: String?,
        dueDate: Date,
        dueTime: Date,
        isCompleted: Bool
    ) {
        self.id = id
        self.title = title
        self.detail = detail
        self.dueDate = dueDate
        self.dueTime = dueTime
        self.isCompleted = isCompleted
    }
}

public protocol TaskManager {
    func addTask(_ task: Task)
    func updateTask(_ task: Task)
    func deleteTask(withId id: String)
    func fetchAllTasks() -> [Task]
    func fetchTask(withId id: String) -> Task?
    func fetchCompletedTasks() -> [Task]
    func fetchUncompletedTasks() -> [Task]
    func fetchTasks(matching predicate: NSPredicate) -> [Task]
}

