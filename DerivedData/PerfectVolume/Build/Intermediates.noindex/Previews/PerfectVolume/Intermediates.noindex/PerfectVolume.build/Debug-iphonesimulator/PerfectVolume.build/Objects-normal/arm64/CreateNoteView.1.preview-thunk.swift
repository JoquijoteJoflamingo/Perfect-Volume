@_private(sourceFile: "CreateNoteView.swift") import PerfectVolume
import SwiftUI
import SwiftUI

extension CreateNoteView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 147)
        CreateNoteView()
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: saveNote()) private func __preview__saveNote() {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 137)
        
        if  title != "" || !exercises.isEmpty {
            DataController().addNote(title: title, exercises: exercises, date: date, context: managedObjContext)
        }
        self.presentationMode.wrappedValue.dismiss()
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: addToNote(muscleGroup:)) private func __preview__addToNote(muscleGroup: MuscleGroupEntity) {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 132)
        exercises.append(DataController().addExercise(name: exerciseName, numSets: Int(exerciseNumSets), muscleGroup: muscleGroup, date: date, context: managedObjContext))
        resetInput()
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: resetInput()) private func __preview__resetInput() {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 127)
        exerciseName = __designTimeString("#11263.[1].[11].[0].[0]", fallback: "")
        exerciseNumSets = __designTimeInteger("#11263.[1].[11].[1].[0]", fallback: 0)
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: deleteExercise(offsets:)) private func __preview__deleteExercise(offsets: IndexSet) {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 119)
        
        offsets.forEach { (i) in
            exercises[i].muscleGroup?.setsWorked -= exercises[i].numSets
        }
        exercises.remove(atOffsets: offsets)
        
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 22)
        NavigationView {
            VStack {
                TextField(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Title"), text: $title).padding()
                    .background(secondarySystem).cornerRadius(__designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 10))
                    .foregroundColor(.black)
                
                Spacer()
                
                VStack {
                    ZStack {
                        secondarySystem
                        List {
                            ForEach(exercises) { exercise in
                                NavigationLink(destination: ExerciseDetailView(exercise: exercise)) {
                                    HStack {
                                        Text(exercise.name ?? __designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: ""))
                                        Spacer()
                                        Text(String(exercise.numSets) + __designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2].arg[0].value.[0]", fallback: " sets")).padding()

                                        Button(action: {

                                        }, label: {
                                            Image(systemName: __designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "info.circle.fill")).font(.system(size: __designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 25))).padding()
                                        })
                                    }
                                }


                            }
                            .onDelete(perform: deleteExercise)
//                            .listRowBackground(secondarySystem)
                        }
                    }
                    
                }
                
                Section(header: Text(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.arg[0].value", fallback: "Add new exercise"))
                    .font(.title2)) {
                        TextField(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "Exercise name:"), text: $exerciseName).padding()
                                .background(secondarySystem).cornerRadius(__designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[2].arg[0].value", fallback: 10))
                                .foregroundColor(.black)
                            .font(.headline)
                        
                        
                        Text("Number of sets: \(Int(exerciseNumSets))")
                        Slider(value: $exerciseNumSets, in: __designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[1].value.[0]", fallback: 0)...__designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[1].value.[1]", fallback: 10), step: __designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[2].value", fallback: 1))
                        

                    }
            }
            .padding(__designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 25))
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        saveNote()
                        
                    } label: {
                        Image(systemName: __designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "arrow.backward.square.fill"))
                            .font(.system(size: __designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40)))
                            .foregroundColor(Color(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")))
                    }

                }
                ToolbarItemGroup(placement: .bottomBar) {
                    Menu {
                        if exerciseValid(name: exerciseName, numSets: Int(exerciseNumSets)) {
                            ForEach(muscleGroups) { muscle in
                                Button {
                                    addToNote(muscleGroup: muscle)
                                } label: {
                                    Text(muscle.name)
                                }
                            }
                        }
                    } label: {
                        Image(systemName: __designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "plus.app.fill"))
                            .font(.system(size: __designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40), weight: .bold))
                            .foregroundColor(exerciseValid(name: exerciseName, numSets: Int(exerciseNumSets)) ? Color(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.then.arg[0].value", fallback: "Mint Green")) : Color.gray)
                            .padding()
                    }

                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    DatePicker(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: ""), selection: $date, displayedComponents: [.date]).labelsHidden().background(secondarySystem).accentColor(Color(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: "Mint Green")))
                }
                
            }
            .navigationBarTitle(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: ""), displayMode: .inline)
            
        }
        .navigationBarTitle(__designTimeString("#11263.[1].[9].property.[0].[0].modifier[0].arg[0].value", fallback: ""), displayMode: .inline)
        .navigationBarBackButtonHidden(__designTimeBoolean("#11263.[1].[9].property.[0].[0].modifier[1].arg[0].value", fallback: true))
        .preferredColorScheme(ColorScheme.light)
        
    #sourceLocation()
    }
}

import struct PerfectVolume.CreateNoteView
import struct PerfectVolume.CreateNoteView_Previews