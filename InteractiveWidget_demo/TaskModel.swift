//
//  TaskModel.swift
//  InteractiveWidget_demo
//
//  Created by vignesh kumar c on 18/11/23.
//

import Foundation
import SwiftUI

struct TaskModel: Identifiable {
    var id: String = UUID().uuidString
    var taskTitle: String
    var isCompleted: Bool = false
}

class TaskDataModel {
    static let shared = TaskDataModel()
    
    var tasks: [TaskModel] = [
        .init(taskTitle: "Record Video"),
        .init(taskTitle: "Edit Video"),
        .init(taskTitle: "publish It")
    ]
}
