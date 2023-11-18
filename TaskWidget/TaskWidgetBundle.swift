//
//  TaskWidgetBundle.swift
//  TaskWidget
//
//  Created by vignesh kumar c on 18/11/23.
//

import WidgetKit
import SwiftUI

@main
struct TaskWidgetBundle: WidgetBundle {
    var body: some Widget {
        TaskWidget()
        TaskWidgetLiveActivity()
    }
}
