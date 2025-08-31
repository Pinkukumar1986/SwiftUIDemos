//
//  TaskViewModel.swift
//  MyTaskSwiftUI
//
//  Created by pinku kumar on 30/07/23.
//

import Foundation
final class TaskViewModel: ObservableObject {
    @Published var task: [Task] = []
    
    func getTask(isActive: Bool) {
        task = Task.mockData().filter({$0.isActive == isActive})
    }
}
