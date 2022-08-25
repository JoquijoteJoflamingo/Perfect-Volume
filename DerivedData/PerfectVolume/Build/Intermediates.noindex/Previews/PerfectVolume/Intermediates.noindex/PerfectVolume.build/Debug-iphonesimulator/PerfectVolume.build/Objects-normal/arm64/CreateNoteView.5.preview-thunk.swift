@_private(sourceFile: "CreateNoteView.swift") import PerfectVolume
import SwiftUI
import SwiftUI

extension CreateNoteView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 147)
        __designTimeSelection(CreateNoteView(), "#11263.[2].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: saveNote()) private func __preview__saveNote() {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 137)
        
        if  title != "" || !exercises.isEmpty {
            __designTimeSelection(DataController().addNote(title: __designTimeSelection(title, "#11263.[1].[13].[0].[0].[0].modifier[0].arg[0].value"), exercises: __designTimeSelection(exercises, "#11263.[1].[13].[0].[0].[0].modifier[0].arg[1].value"), date: __designTimeSelection(date, "#11263.[1].[13].[0].[0].[0].modifier[0].arg[2].value"), context: __designTimeSelection(managedObjContext, "#11263.[1].[13].[0].[0].[0].modifier[0].arg[3].value")), "#11263.[1].[13].[0].[0].[0]")
        }
        __designTimeSelection(self.presentationMode.wrappedValue.dismiss(), "#11263.[1].[13].[1]")
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: addToNote(muscleGroup:)) private func __preview__addToNote(muscleGroup: MuscleGroupEntity) {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 132)
        __designTimeSelection(exercises.append(__designTimeSelection(DataController().addExercise(name: __designTimeSelection(exerciseName, "#11263.[1].[12].[0].modifier[0].arg[0].value.modifier[0].arg[0].value"), numSets: __designTimeSelection(Int(__designTimeSelection(exerciseNumSets, "#11263.[1].[12].[0].modifier[0].arg[0].value.modifier[0].arg[1].value.arg[0].value")), "#11263.[1].[12].[0].modifier[0].arg[0].value.modifier[0].arg[1].value"), muscleGroup: __designTimeSelection(muscleGroup, "#11263.[1].[12].[0].modifier[0].arg[0].value.modifier[0].arg[2].value"), date: __designTimeSelection(date, "#11263.[1].[12].[0].modifier[0].arg[0].value.modifier[0].arg[3].value"), context: __designTimeSelection(managedObjContext, "#11263.[1].[12].[0].modifier[0].arg[0].value.modifier[0].arg[4].value")), "#11263.[1].[12].[0].modifier[0].arg[0].value")), "#11263.[1].[12].[0]")
        __designTimeSelection(resetInput(), "#11263.[1].[12].[1]")
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
        
        __designTimeSelection(offsets.forEach { (i) in
            exercises[i].muscleGroup?.setsWorked -= exercises[i].numSets
        }, "#11263.[1].[10].[0]")
        __designTimeSelection(exercises.remove(atOffsets: __designTimeSelection(offsets, "#11263.[1].[10].[1].modifier[0].arg[0].value")), "#11263.[1].[10].[1]")
        
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 22)
        __designTimeSelection(NavigationView {
            __designTimeSelection(VStack {
                __designTimeSelection(TextField(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Title"), text: __designTimeSelection($title, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value")).padding()
                    .background(__designTimeSelection(secondarySystem, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value")).cornerRadius(__designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 10))
                    .foregroundColor(.black), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(Spacer(), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
                
                __designTimeSelection(VStack {
                    __designTimeSelection(ZStack {
                        __designTimeSelection(secondarySystem, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0]")
                        __designTimeSelection(List {
                            __designTimeSelection(ForEach(__designTimeSelection(exercises, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value")) { exercise in
                                __designTimeSelection(NavigationLink(destination: __designTimeSelection(ExerciseDetailView(exercise: __designTimeSelection(exercise, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.arg[0].value")), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value")) {
                                    __designTimeSelection(HStack {
                                        __designTimeSelection(Text(exercise.name ?? __designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: "")), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                        __designTimeSelection(Spacer(), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[1]")
                                        __designTimeSelection(Text(String(exercise.numSets) + __designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2].arg[0].value.[0]", fallback: " sets")).padding(), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2]")

                                        __designTimeSelection(Button(action: {

                                        }, label: {
                                            __designTimeSelection(Image(systemName: __designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "info.circle.fill")).font(.system(size: __designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 25))).padding(), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[3].arg[1].value.[0]")
                                        }), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[3]")
                                    }, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                                }, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0]")


                            }
                            .onDelete(perform: __designTimeSelection(deleteExercise, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value")), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
//                            .listRowBackground(secondarySystem)
                        }, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1]")
                    }, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0]")
                    
                }, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[2]")
                
                __designTimeSelection(Section(header: __designTimeSelection(Text(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.arg[0].value", fallback: "Add new exercise"))
                    .font(.title2), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value")) {
                        __designTimeSelection(TextField(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "Exercise name:"), text: __designTimeSelection($exerciseName, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[1].value")).padding()
                                .background(__designTimeSelection(secondarySystem, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[1].arg[0].value")).cornerRadius(__designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[2].arg[0].value", fallback: 10))
                                .foregroundColor(.black)
                            .font(.headline), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0]")
                        
                        
                        __designTimeSelection(Text("Number of sets: \(__designTimeSelection(Int(__designTimeSelection(exerciseNumSets, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[1].arg[0].value.[1].value.arg[0].value.arg[0].value")), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[1].arg[0].value.[1].value.arg[0].value"))"), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[1]")
                        __designTimeSelection(Slider(value: __designTimeSelection($exerciseNumSets, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[0].value"), in: __designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[1].value.[0]", fallback: 0)...__designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[1].value.[1]", fallback: 10), step: __designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[2].value", fallback: 1)), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2]")
                        

                    }, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[3]")
            }
            .padding(__designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 25))
            .toolbar {
                __designTimeSelection(ToolbarItemGroup(placement: .navigationBarLeading) {
                    __designTimeSelection(Button {
                        __designTimeSelection(saveNote(), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                        
                    } label: {
                        __designTimeSelection(Image(systemName: __designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "arrow.backward.square.fill"))
                            .font(.system(size: __designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40)))
                            .foregroundColor(__designTimeSelection(Color(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value")), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                    }, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0]")

                }, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0]")
                __designTimeSelection(ToolbarItemGroup(placement: .bottomBar) {
                    __designTimeSelection(Menu {
                        if exerciseValid(name: exerciseName, numSets: Int(exerciseNumSets)) {
                            __designTimeSelection(ForEach(__designTimeSelection(muscleGroups, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].arg[0].value")) { muscle in
                                __designTimeSelection(Button {
                                    __designTimeSelection(addToNote(muscleGroup: __designTimeSelection(muscle, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value")), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[0].arg[0].value.[0]")
                                } label: {
                                    __designTimeSelection(Text(__designTimeSelection(muscle.name, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[0].arg[1].value.[0].arg[0].value")), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[0].arg[1].value.[0]")
                                }, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].arg[1].value.[0]")
                            }, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0]")
                        }
                    } label: {
                        __designTimeSelection(Image(systemName: __designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "plus.app.fill"))
                            .font(.system(size: __designTimeInteger("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40), weight: .bold))
                            .foregroundColor(__designTimeSelection(exerciseValid(name: __designTimeSelection(exerciseName, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.if.arg[0].value"), numSets: __designTimeSelection(Int(__designTimeSelection(exerciseNumSets, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.if.arg[1].value.arg[0].value")), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.if.arg[1].value")), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.if") ? __designTimeSelection(Color(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.then.arg[0].value", fallback: "Mint Green")), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.then") : __designTimeSelection(Color.gray, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.else"))
                            .padding(), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0]")
                    }, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0]")

                }, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1]")
                
                __designTimeSelection(ToolbarItemGroup(placement: .navigationBarTrailing) {
                    __designTimeSelection(DatePicker(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: ""), selection: __designTimeSelection($date, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0].arg[1].value"), displayedComponents: [.date]).labelsHidden().background(__designTimeSelection(secondarySystem, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0].modifier[1].arg[0].value")).accentColor(__designTimeSelection(Color(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: "Mint Green")), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0].modifier[2].arg[0].value")), "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0]")
                }, "#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2]")
                
            }
            .navigationBarTitle(__designTimeString("#11263.[1].[9].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: ""), displayMode: .inline), "#11263.[1].[9].property.[0].[0].arg[0].value.[0]")
            
        }
        .navigationBarTitle(__designTimeString("#11263.[1].[9].property.[0].[0].modifier[0].arg[0].value", fallback: ""), displayMode: .inline)
        .navigationBarBackButtonHidden(__designTimeBoolean("#11263.[1].[9].property.[0].[0].modifier[1].arg[0].value", fallback: true))
        .preferredColorScheme(__designTimeSelection(ColorScheme.light, "#11263.[1].[9].property.[0].[0].modifier[2].arg[0].value")), "#11263.[1].[9].property.[0].[0]")
        
    #sourceLocation()
    }
}

import struct PerfectVolume.CreateNoteView
import struct PerfectVolume.CreateNoteView_Previews