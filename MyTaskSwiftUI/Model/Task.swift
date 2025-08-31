//
//  Task.swift
//  MyTaskSwiftUI
//
//  Created by pinku kumar on 30/07/23.
//

import Foundation
struct Task {
    let id: Int
    var name: String
    var discription: String
    var isActive: Bool = false
    var finishedDate: Date
    
    static func mockData() -> [Task] {
        return [
            Task(id: 1, name: "Go to gym", discription: "back workout", isActive: true, finishedDate: Date()),
            Task(id: 2, name: "Car wash", discription: "DownTown the car wash center ", isActive: true, finishedDate: Date()),
            Task(id: 3, name: "Office work", discription: "finish picker view", isActive: false, finishedDate: Date())
        ]
    }
}
