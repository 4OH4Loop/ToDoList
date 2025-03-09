//
//  DetailView.swift
//  ToDoList
//
//  Created by Carolyn Ballinger on 3/9/25.
//

import SwiftUI

struct DetailView: View {
    var passedValue: String // Don't initialize it - it will be passed from the parent view
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text("You Are a Swifty Legend!\nYou passed the value: \(passedValue)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
        
            Spacer()
            
            Button("Get Back!") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
//        .navigationBarBackButtonHidden()
    }
}

#Preview {
    DetailView(passedValue: "Item 1")
}
