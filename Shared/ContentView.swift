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
    @State var newToDo : String = ""
    
    var searchBar: some View {
        HStack {
            TextField("Enter in a new task", text: self.$newToDo)
                .background(.gray)
                .foregroundColor(.white)
            Button(action: self.addNewToDo, label: {Text("Add New")
                    .background(Color.gray)
                    .foregroundColor(.white)
            })
        }
    }
    func addNewToDo()
    {
        taskStore.tasks.append(Task(id:
                                        String(taskStore.tasks.count + 1),
                                    todoitem: newToDo))
        self.newToDo = ""    }
    
    var body: some View {
        NavigationView {
            VStack {
                searchBar.padding()
                List(self.taskStore.tasks) { task in
                    Text(task.todoitem)
                } //.navigationBarTitle("Tasks")
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
