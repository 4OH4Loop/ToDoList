//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Carolyn Ballinger on 3/9/25.
//

import SwiftUI

struct ToDoListView: View {
    var toDos = ["Learn Swift",
                 "Change the World",
                 "Bring the Awesome",
                 "Take a Vacation"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) {toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }
                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
            //                ForEach(0..<100, id: \.self) { number in
            //                    NavigationLink {
            //                        DetailView(passedValue: "Item \(number)")
            //                    } label: {
            //                        Text("Item \(number+1)")
            //                    }
            //                }
            //                Section {
            //                    NavigationLink {
            //                        DetailView()
            //                    } label: {
            //                        Text ("Winter")
            //                    }
            //                    Text("Summer")
            //                } header: {
            //                    Text("Breaks")
            //                }
            //                Section {
            //                    Text("Spring")
            //                    Text("Fall")
            //                } header: {
            //                    Text("Semesters")
            //                }
            
            
        }
        
        //        VStack {
        //            NavigationLink {
        //                DetailView()
        //            }label: {
        //                Image(systemName: "eye")
        //                Text("Show the New View!")
        //            }
        //            .buttonStyle(.borderedProminent)
        //        }
        //        .padding()
    }
}
#Preview {
    ToDoListView()
}
