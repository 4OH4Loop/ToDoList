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
    @State private var sheetIsPresented = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) {toDo in
                    NavigationLink {
                        DetailView(toDo: toDo)
                    } label: {
                        Text(toDo)
                    }
                    .font(.title2)
                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
            .sheet(isPresented: $sheetIsPresented) {
                NavigationStack {
                    DetailView(toDo: "")
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        sheetIsPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }

                    }
                }
        }

    }
}
#Preview {
    ToDoListView()
}

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
