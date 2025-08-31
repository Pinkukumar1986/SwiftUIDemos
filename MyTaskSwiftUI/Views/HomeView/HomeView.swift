//
//  SwiftUIView.swift
//  MyTaskSwiftUI
//
//  Created by pinku kumar on 30/07/23.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var taskViewModel: TaskViewModel = TaskViewModel()
    
    @State private var pickerFilters: [String] = ["Active","Closed"]
    @State private var defaultPickerItem: String = "Active"
    
    var body: some View {
        NavigationStack {
            Picker("picker filter", selection: $defaultPickerItem){
                ForEach(pickerFilters, id:\.self){
                    Text($0)
                }
            }.pickerStyle(.segmented)
                .onChange(of: defaultPickerItem) { newValue in
                    taskViewModel.getTask(isActive: defaultPickerItem == "Active")
                }
            
            List(taskViewModel.task, id: \.id) { task in
                VStack(alignment: .leading) {
                    Text(task.name).font(.title)
                    HStack {
                        Text(task.discription).font(.subheadline)
                            .lineLimit(2)
                        Spacer()
                        Text(task.finishedDate.toString())
                    }
                }
            }.onAppear{
                taskViewModel.getTask(isActive: true)
            }.listStyle(.plain)
                .navigationTitle("Home")
                .toolbarBackground(
                    Color.red, for: .navigationBar)
        }.background(.red)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
