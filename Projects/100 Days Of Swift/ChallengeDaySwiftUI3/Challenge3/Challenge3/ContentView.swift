//
//  ContentView.swift
//  Challenge3
//
//  Created by Dylan Martin on 1/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTable = 5
    @State private var selectedQuestionCount = 5
    @State private var currentQuestion = 1
    @State private var correctAnswers = 0
    @State private var showingAlert = false
    @State private var userAnswer = ""
    @State private var randomNumber = Int.random(in: 0...12)
//    @State private var questionNumbers = [Int]()
//
//    private func generateQuestions() {
//        let questionNumbers = (1...selectedQuestionCount).map { _ in Int.random(in: 0...12) }
//    }

    var body: some View {
            Form {
                Section(header: Text("Select Times Table")) {
                    Picker("Select Table", selection: $selectedTable) {
                        ForEach(0 ..< 13) {
                            Text("\($0) Times Table")
                        }
                    }
                }
                Section(header: Text("Select Number of Questions")) {
                    Picker("Select Question Count", selection: $selectedQuestionCount) {
                        ForEach([5, 10, 20], id: \.self) {
                            Text("\($0) Questions")
                        }
                    }
                }
                Section(header: Text("Question \(currentQuestion) of \(selectedQuestionCount)")) {
                    Text("What is \(selectedTable) x \(randomNumber)?")
                    TextField("Enter Answer", text: $userAnswer)
                        .keyboardType(.numberPad)
                }
                Section {
                    Button(action: {
                        if self.userAnswer == "\(self.selectedTable * self.randomNumber)" {
                            self.correctAnswers += 1
                        }
                        if self.currentQuestion == self.selectedQuestionCount {
                            self.showingAlert = true
                        } else {
                            self.currentQuestion += 1
                            self.randomNumber = Int.random(in: 0...12)
                        }
                    }) {
                        Text("Submit")
                    }
                }
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Quiz Complete"), message: Text("You scored \(correctAnswers) out of \(selectedQuestionCount)"), dismissButton: .default(Text("OK")))
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
