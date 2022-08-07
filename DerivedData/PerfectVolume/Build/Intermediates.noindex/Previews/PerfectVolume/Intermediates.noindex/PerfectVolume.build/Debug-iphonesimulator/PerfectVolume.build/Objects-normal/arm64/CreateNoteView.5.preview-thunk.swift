@_private(sourceFile: "CreateNoteView.swift") import PerfectVolume
import SwiftUI
import SwiftUI

extension CreateNoteView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 127)
        __designTimeSelection(CreateNoteView(), "#8962.[2].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: saveNote()) private func __preview__saveNote() {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 117)
        
        if  title != "" || !exercises.isEmpty {
            __designTimeSelection(DataController().addNote(title: __designTimeSelection(title, "#8962.[1].[10].[0].[0].[0].modifier[0].arg[0].value"), exercises: __designTimeSelection(exercises, "#8962.[1].[10].[0].[0].[0].modifier[0].arg[1].value"), date: __designTimeSelection(date, "#8962.[1].[10].[0].[0].[0].modifier[0].arg[2].value"), context: __designTimeSelection(managedObjContext, "#8962.[1].[10].[0].[0].[0].modifier[0].arg[3].value")), "#8962.[1].[10].[0].[0].[0]")
        }
        __designTimeSelection(self.presentationMode.wrappedValue.dismiss(), "#8962.[1].[10].[1]")
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: resetInput()) private func __preview__resetInput() {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 112)
        exerciseName = __designTimeString("#8962.[1].[9].[0].[0]", fallback: "")
        exerciseNumSets = __designTimeInteger("#8962.[1].[9].[1].[0]", fallback: 0)
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 21)
        __designTimeSelection(NavigationView {
            __designTimeSelection(VStack {
                __designTimeSelection(TextField(__designTimeString("#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Title"), text: __designTimeSelection($title, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value")).padding()
                    .background(__designTimeSelection(secondarySystem, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value")).cornerRadius(__designTimeInteger("#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 10))
                    .foregroundColor(.black), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(Spacer(), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
                
                __designTimeSelection(VStack {
                    __designTimeSelection(ZStack {
                        __designTimeSelection(secondarySystem, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0]")
                        __designTimeSelection(List {
                            __designTimeSelection(ForEach(__designTimeSelection(exercises, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value")) { exercise in
                                __designTimeSelection(NavigationLink(destination: __designTimeSelection(ExerciseDetailView(exercise: __designTimeSelection(exercise, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.arg[0].value")), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value")) {
                                    __designTimeSelection(HStack {
                                        __designTimeSelection(Text(exercise.name ?? __designTimeString("#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: "")), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                        __designTimeSelection(Spacer(), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[1]")
                                        __designTimeSelection(Text(String(exercise.numSets) + __designTimeString("#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2].arg[0].value.[0]", fallback: " sets")).padding(), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2]")

                                        __designTimeSelection(Button(action: {

                                        }, label: {
                                            __designTimeSelection(Image(systemName: __designTimeString("#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "info.circle.fill")).font(.system(size: __designTimeInteger("#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 25))).padding(), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[3].arg[1].value.[0]")
                                        }), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[3]")
                                    }, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                                }, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0]")


                            }, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
//                            .listRowBackground(secondarySystem)
                        }, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1]")
                    }, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0]")
                    
                }, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2]")
                
                __designTimeSelection(Section(header: __designTimeSelection(Text(__designTimeString("#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.arg[0].value", fallback: "Add new exercise"))
                    .font(.title2), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value")) {
                        __designTimeSelection(TextField(__designTimeString("#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "Exercise name:"), text: __designTimeSelection($exerciseName, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[1].value")).padding()
                                .background(__designTimeSelection(secondarySystem, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[1].arg[0].value")).cornerRadius(__designTimeInteger("#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[2].arg[0].value", fallback: 10))
                                .foregroundColor(.black)
                            .font(.headline), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0]")
                        
                        
                        __designTimeSelection(Text("Number of sets: \(__designTimeSelection(Int(__designTimeSelection(exerciseNumSets, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[1].arg[0].value.[1].value.arg[0].value.arg[0].value")), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[1].arg[0].value.[1].value.arg[0].value"))"), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[1]")
                        __designTimeSelection(Slider(value: __designTimeSelection($exerciseNumSets, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[0].value"), in: __designTimeInteger("#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[1].value.[0]", fallback: 0)...__designTimeInteger("#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[1].value.[1]", fallback: 10), step: __designTimeInteger("#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[2].value", fallback: 1)), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2]")
                        

                    }, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[3]")
            }
            .padding(__designTimeInteger("#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 25))
            .toolbar {
                __designTimeSelection(ToolbarItemGroup(placement: .navigationBarLeading) {
                    __designTimeSelection(Button {
                        __designTimeSelection(saveNote(), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                        
                    } label: {
                        __designTimeSelection(Image(systemName: __designTimeString("#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "arrow.backward.square.fill"))
                            .font(.system(size: __designTimeInteger("#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40)))
                            .foregroundColor(__designTimeSelection(Color(__designTimeString("#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value")), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                    }, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0]")

                }, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0]")
                __designTimeSelection(ToolbarItemGroup(placement: .bottomBar) {
                    __designTimeSelection(Button(action: {
                        if exerciseValid(name: exerciseName, numSets: Int(exerciseNumSets)) {
                            __designTimeSelection(exercises.append(__designTimeSelection(DataController().addExercise(name: __designTimeSelection(exerciseName, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value.modifier[0].arg[0].value"), numSets: __designTimeSelection(Int(__designTimeSelection(exerciseNumSets, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value.modifier[0].arg[1].value.arg[0].value")), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value.modifier[0].arg[1].value"), context: __designTimeSelection(managedObjContext, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value.modifier[0].arg[2].value")), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value")), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0]")
                            __designTimeSelection(resetInput(), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[1]")
                        }
                        
                    }, label: {
                        __designTimeSelection(Image(systemName: __designTimeString("#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "plus.app.fill"))
                            .font(.system(size: __designTimeInteger("#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40), weight: .bold))
                            .foregroundColor(__designTimeSelection(exerciseValid(name: __designTimeSelection(exerciseName, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.if.arg[0].value"), numSets: __designTimeSelection(Int(__designTimeSelection(exerciseNumSets, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.if.arg[1].value.arg[0].value")), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.if.arg[1].value")), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.if") ? __designTimeSelection(Color(__designTimeString("#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.then.arg[0].value", fallback: "Mint Green")), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.then") : __designTimeSelection(Color.gray, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.else"))
                            .padding(), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0]")
                    }), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0]")
                }, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1]")
                
                __designTimeSelection(ToolbarItemGroup(placement: .navigationBarTrailing) {
                    __designTimeSelection(DatePicker(__designTimeString("#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: ""), selection: __designTimeSelection($date, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0].arg[1].value"), displayedComponents: [.date]).labelsHidden().background(__designTimeSelection(secondarySystem, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0].modifier[1].arg[0].value")).accentColor(__designTimeSelection(Color(__designTimeString("#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: "Mint Green")), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0].modifier[2].arg[0].value")), "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2].arg[1].value.[0]")
                }, "#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[2]")
                
            }
            .navigationBarTitle(__designTimeString("#8962.[1].[8].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: ""), displayMode: .inline), "#8962.[1].[8].property.[0].[0].arg[0].value.[0]")
            
        }
        .navigationBarTitle(__designTimeString("#8962.[1].[8].property.[0].[0].modifier[0].arg[0].value", fallback: ""), displayMode: .inline)
        .navigationBarBackButtonHidden(__designTimeBoolean("#8962.[1].[8].property.[0].[0].modifier[1].arg[0].value", fallback: true)), "#8962.[1].[8].property.[0].[0]")
        
    #sourceLocation()
    }
}

import struct PerfectVolume.CreateNoteView
import struct PerfectVolume.CreateNoteView_Previews