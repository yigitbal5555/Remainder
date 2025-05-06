//
//  NewTaskViewModel.swift
//  Remainderr
//
//  Created by Yiğit Bal on 5.05.2025.
//
import Foundation

protocol NewTaskViewModelProtocol {
    func addTask(name: String, detail: String?, date: Date, time: Date)
}

final class NewTaskViewModel: NewTaskViewModelProtocol {

    private let taskManager: TaskManager

    init(taskManager: TaskManager) {
        self.taskManager = taskManager
    }

    func addTask(name: String, detail: String?, date: Date, time: Date) {
        let task = Task(
            id: UUID().uuidString,
            title: name,
            detail: detail,
            dueDate: date,
            dueTime: time,
            isCompleted: false
        )
        taskManager.addTask(task)
    }
}


