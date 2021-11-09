//
//  datastore.swift
//  todoapp
//
//  Created by Bob Bulliard on 11/8/21.
//

import Foundation
import SwiftUI
import Combine

struct Task : Identifiable {
    var id = String()
    var todoitem = String()
    
    // add more as needed
}

class TaskStore : ObservableObject {
    @Published var tasks = [Task()]
}
