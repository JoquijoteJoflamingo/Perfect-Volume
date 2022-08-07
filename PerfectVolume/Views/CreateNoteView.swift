//
//  CreateNoteView.swift
//  PerfectVolume
//
//  Created by Joseph Schaubroeck on 7/31/22.
//

import SwiftUI

struct CreateNoteView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    let secondarySystem = Color(UIColor.secondarySystemBackground)
    @State var title : String = ""
    @State var exercises : [ExerciseEntity] = []
    @State var exerciseName : String = ""
    @State var exerciseNumSets : Double = 0
    var body: some View {
        NavigationView {
            VStack {
                TextField("Title", text: $title).padding()
                    .background(secondarySystem).cornerRadius(10)
                    .foregroundColor(.black)
                
                Spacer()
                
                VStack {
                    ZStack {
                        secondarySystem
                        List {
                            ForEach(exercises) { exercise in
                                HStack {
                                    Text(exercise.name ?? "")
                                    Spacer()
                                    Text(String(exercise.numSets) + " sets").padding()
                                    
                                    Button(action: {
                                        // IMPLEMENT
                                    }, label: {
                                        Image(systemName: "info.circle.fill").font(.system(size: 25)).padding()
                                    })
                                }
                            }
//                            .listRowBackground(secondarySystem)
                        }
                    }
                    
                }
                
                Section(header: Text("Add new exercise")
                    .font(.title2)) {
                        TextField("Exercise name:", text: $exerciseName).padding()
                                .background(secondarySystem).cornerRadius(10)
                                .foregroundColor(.black)
                            .font(.headline)
                        
                        
                        Text("Number of sets: \(Int(exerciseNumSets))")
                        Slider(value: $exerciseNumSets, in: 0...10, step: 1)
                        

                    }
            }
            .padding(25)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        saveNote()
                        
                    } label: {
                        Image(systemName: "arrow.backward.square.fill")
                            .font(.system(size: 40))
                            .foregroundColor(Color("Mint Green"))
                    }

                }
                ToolbarItemGroup(placement: .bottomBar) {
                    Button(action: {
                        if exerciseValid(name: exerciseName, numSets: Int(exerciseNumSets)) {
                            exercises.append(DataController().addExercise(name: exerciseName, numSets: Int(exerciseNumSets), context: managedObjContext))
                            resetInput()
                        }
                        
                    }, label: {
                        Image(systemName: "plus.app.fill")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(exerciseValid(name: exerciseName, numSets: Int(exerciseNumSets)) ? Color("Mint Green") : Color.gray)
                            .padding()
                    })
                }
                
            }
            .navigationBarTitle("", displayMode: .inline)
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        
    }
    
    func resetInput() {
        exerciseName = ""
        exerciseNumSets = 0
    }
    
    func saveNote() {
        
        if  title != "" || !exercises.isEmpty {
            DataController().addNote(title: title, exercises: exercises, context: managedObjContext)
        }
        self.presentationMode.wrappedValue.dismiss()
    }
}

struct CreateNoteView_Previews: PreviewProvider {
    static var previews: some View {
        CreateNoteView()
    }
}
