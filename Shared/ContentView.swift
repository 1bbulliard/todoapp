//
//  ContentView.swift
//  Shared
//
//  Created by Bob Bulliard on 11/8/21.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var taskStore = TaskStore()
    var body: some View {
        NavigationView {
            VStack {
                List(self.taskStore.tasks) { task in
                    Text(task.todoitem)
                } .navigationBarTitle("Tasks")
                    
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
