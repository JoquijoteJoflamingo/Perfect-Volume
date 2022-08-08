//
//  EditNoteView.swift
//  PerfectVolume
//
//  Created by Joseph Schaubroeck on 8/2/22.
//

import SwiftUI

struct EditNoteView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var note : FetchedResults<NoteEntity>.Element
    let secondarySystem = Color(UIColor.secondarySystemBackground)
    @State var title : String = ""
    @State var exercises : [ExerciseEntity] = []
    @State var exerciseName : String = ""
    @State var exerciseNumSets : Double = 0
    @State var date: Date = Date()

    var body: some View {
        NavigationView {
            VStack {
                TextField("Title", text: $title).padding()
                    .background(secondarySystem).cornerRadius(10)
                    .foregroundColor(.black)
                    .onAppear {
                        title = note.title ?? ""
                        exercises = note.exercises!.allObjects as! [ExerciseEntity]
                        date = note.date ?? Date()
                    }
                
                Spacer()
                
                VStack {
                    ZStack {
                        secondarySystem
                        List {
                            ForEach(exercises) { exercise in
                                
                                NavigationLink(destination: ExerciseDetailView(exercise: exercise)) {
                                    HStack {
                                        Text(exercise.name ?? "")
                                        Spacer()
                                        Text(String(exercise.numSets) + " sets").padding()

                                        Button(action: {

                                        }, label: {
                                            Image(systemName: "info.circle.fill").font(.system(size: 25)).padding()
                                        })
                                    }
                                }
                            }
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
                        
                        Button(action: {
                            if exerciseValid(name: exerciseName, numSets: Int(exerciseNumSets)) {
                                exercises.append(DataController().addExercise(name: exerciseName, numSets: Int(exerciseNumSets), muscleGroup: "Legs", context: managedObjContext))
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
            .padding(25)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        saveEditedNote()
                    } label: {
                        Image(systemName: "arrow.backward.square.fill")
                            .font(.system(size: 40))
                            .foregroundColor(Color("Mint Green"))
                    }

                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    DatePicker("", selection: $date, displayedComponents: [.date]).labelsHidden().background(secondarySystem).accentColor(Color("Mint Green"))
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
    
    func saveEditedNote() {
        DataController().editNote(note: note, title: title, date: date, exercises: exercises, context: managedObjContext)
        self.presentationMode.wrappedValue.dismiss()
    }
}

//struct EditNoteView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditNoteView()
//    }
//}
