//
//  DetailView.swift
//  ToDoList
//
//  Created by Carolyn Ballinger on 3/9/25.
//

import SwiftUI

struct DetailView: View {
    @State var toDo: String
    @State private var reminderIsOn = false
//    @State private var dueDate = Date.now + 60*60*24
    @State private var dueDate = Calendar.current.date(byAdding: .day, value: 1, to: Date.now)!
//    var passedValue: String // Don't initialize it - it will be passed from the parent view
    @State private var notes = ""
    @State private var isCompleted = false
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        List {
            TextField("Enter To Do here", text: $toDo)
                .font(.title)
                .textFieldStyle(.roundedBorder)
                .padding(.vertical)
                .listRowSeparator(.hidden)
            
            Toggle("Set Reminder:", isOn: $reminderIsOn)
                .padding(.top)
            
            DatePicker("Date:", selection: $dueDate)
                .listRowSeparator(.hidden)
                .padding(.bottom)
                .disabled(!reminderIsOn)
            
            Text("Notes")
            TextField("Notes", text: $notes, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .listRowSeparator(.hidden)
            
            Toggle("Completed:", isOn: $isCompleted)
                .padding(.top)
                .listRowSeparator(.hidden)
            }
        .listStyle(.plain)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Cancel") {
                    dismiss()
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("Save") {
                    //TODO: Add save code here
                }
            }
        }
        }

    }


#Preview {
    NavigationStack {
        DetailView(toDo: "")
    }
}

//        VStack {
//            Image(systemName: "swift")
//                .resizable()
//                .scaledToFit()
//                .foregroundStyle(.orange)
//
//            Text("You Are a Swifty Legend!\nYou passed the value: \(passedValue)")
//                .font(.largeTitle)
//                .multilineTextAlignment(.center)
//
//            Spacer()
//
//            Button("Get Back!") {
//                dismiss()
//            }
//            .buttonStyle(.borderedProminent)
//        }
//        .padding()
//        .navigationBarBackButtonHidden()
