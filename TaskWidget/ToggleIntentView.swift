//
//  ToggleIntentView.swift
//  InteractiveWidget_demo
//
//  Created by vignesh kumar c on 18/11/23.
//

import SwiftUI
import AppIntents

struct ToggleIntentView: AppIntent {
   static var title: LocalizedStringResource = "Toggle Task State"
    
    @Parameter(title: "Task ID")
    var id: String

    init() {
        
    }
    
    init(id: String) {
        self.id = id
    }
    
    func perform() async throws -> some IntentResult {
        
        if let index = TaskDataModel.shared.tasks.firstIndex(where: {
            $0.id == id
        }) {
            TaskDataModel.shared.tasks[index].isCompleted.toggle()
        }
        
        return .result()
    }
}
