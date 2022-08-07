@_private(sourceFile: "CreateNoteView.swift") import PerfectVolume
import SwiftUI
import SwiftUI

extension CreateNoteView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 108)
        __designTimeSelection(CreateNoteView(), "#5230.[2].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: saveNote()) private func __preview__saveNote() {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 98)
        
        if  title != "" || !exercises.isEmpty {
            __designTimeSelection(DataController().addNote(title: __designTimeSelection(title, "#5230.[1].[9].[0].[0].[0].modifier[0].arg[0].value"), exercises: __designTimeSelection(exercises, "#5230.[1].[9].[0].[0].[0].modifier[0].arg[1].value"), context: __designTimeSelection(managedObjContext, "#5230.[1].[9].[0].[0].[0].modifier[0].arg[2].value")), "#5230.[1].[9].[0].[0].[0]")
        }
        __designTimeSelection(self.presentationMode.wrappedValue.dismiss(), "#5230.[1].[9].[1]")
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: resetInput()) private func __preview__resetInput() {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 93)
        exerciseName = __designTimeString("#5230.[1].[8].[0].[0]", fallback: "")
        exerciseNumSets = __designTimeInteger("#5230.[1].[8].[1].[0]", fallback: 0)
    #sourceLocation()
    }
}

extension CreateNoteView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateNoteView.swift", line: 19)
        __designTimeSelection(NavigationView {
            __designTimeSelection(VStack {
                __designTimeSelection(TextField(__designTimeString("#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Title"), text: __designTimeSelection($title, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value")).padding()
                    .background(__designTimeSelection(secondarySystem, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value")).cornerRadius(__designTimeInteger("#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 10))
                    .foregroundColor(.black), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(Spacer(), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
                
                __designTimeSelection(VStack {
                    __designTimeSelection(ZStack {
                        __designTimeSelection(secondarySystem, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0]")
                        __designTimeSelection(List {
                            __designTimeSelection(ForEach(__designTimeSelection(exercises, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value")) { exercise in
                                __designTimeSelection(HStack {
                                    __designTimeSelection(Text(exercise.name ?? __designTimeString("#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: "")), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                }, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0]")
                            }, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
//                            .listRowBackground(secondarySystem)
                        }, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1]")
                    }, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0]")
                    
                }, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2]")
                
                __designTimeSelection(Section(header: __designTimeSelection(Text(__designTimeString("#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.arg[0].value", fallback: "Add new exercise"))
                    .font(.title2), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[0].value")) {
                        __designTimeSelection(TextField(__designTimeString("#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "Exercise name:"), text: __designTimeSelection($exerciseName, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[1].value")).padding()
                                .background(__designTimeSelection(secondarySystem, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[1].arg[0].value")).cornerRadius(__designTimeInteger("#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[2].arg[0].value", fallback: 10))
                                .foregroundColor(.black)
                            .font(.headline), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0]")
                        
                        
                        __designTimeSelection(Text("Number of sets: \(__designTimeSelection(Int(__designTimeSelection(exerciseNumSets, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[1].arg[0].value.[1].value.arg[0].value.arg[0].value")), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[1].arg[0].value.[1].value.arg[0].value"))"), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[1]")
                        __designTimeSelection(Slider(value: __designTimeSelection($exerciseNumSets, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[0].value"), in: __designTimeInteger("#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[1].value.[0]", fallback: 0)...__designTimeInteger("#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[1].value.[1]", fallback: 10), step: __designTimeInteger("#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2].arg[2].value", fallback: 1)), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[2]")
                        

                    }, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[3]")
            }
            .padding(__designTimeInteger("#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 25))
            .toolbar {
                __designTimeSelection(ToolbarItemGroup(placement: .navigationBarLeading) {
                    __designTimeSelection(Button {
                        __designTimeSelection(saveNote(), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                        
                    } label: {
                        __designTimeSelection(Image(systemName: __designTimeString("#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "arrow.backward.square.fill"))
                            .font(.system(size: __designTimeInteger("#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40)))
                            .foregroundColor(__designTimeSelection(Color(__designTimeString("#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value")), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                    }, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0].arg[1].value.[0]")

                }, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0]")
                __designTimeSelection(ToolbarItemGroup(placement: .bottomBar) {
                    __designTimeSelection(Button(action: {
                        if exerciseValid(name: exerciseName, numSets: Int(exerciseNumSets)) {
                            __designTimeSelection(exercises.append(__designTimeSelection(DataController().addExercise(name: __designTimeSelection(exerciseName, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value.modifier[0].arg[0].value"), numSets: __designTimeSelection(Int(__designTimeSelection(exerciseNumSets, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value.modifier[0].arg[1].value.arg[0].value")), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value.modifier[0].arg[1].value"), context: __designTimeSelection(managedObjContext, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value.modifier[0].arg[2].value")), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value")), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[0]")
                            __designTimeSelection(resetInput(), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].[0].[1]")
                        }
                        
                    }, label: {
                        __designTimeSelection(Image(systemName: __designTimeString("#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "plus.app.fill"))
                            .font(.system(size: __designTimeInteger("#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40), weight: .bold))
                            .foregroundColor(__designTimeSelection(exerciseValid(name: __designTimeSelection(exerciseName, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.if.arg[0].value"), numSets: __designTimeSelection(Int(__designTimeSelection(exerciseNumSets, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.if.arg[1].value.arg[0].value")), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.if.arg[1].value")), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.if") ? __designTimeSelection(Color(__designTimeString("#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.then.arg[0].value", fallback: "Mint Green")), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.then") : __designTimeSelection(Color.gray, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.else"))
                            .padding(), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0].arg[1].value.[0]")
                    }), "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1].arg[1].value.[0]")
                }, "#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[1]")
                
            }
            .navigationBarTitle(__designTimeString("#5230.[1].[7].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: ""), displayMode: .inline), "#5230.[1].[7].property.[0].[0].arg[0].value.[0]")
        }
        .navigationBarTitle(__designTimeString("#5230.[1].[7].property.[0].[0].modifier[0].arg[0].value", fallback: ""), displayMode: .inline)
        .navigationBarBackButtonHidden(__designTimeBoolean("#5230.[1].[7].property.[0].[0].modifier[1].arg[0].value", fallback: true)), "#5230.[1].[7].property.[0].[0]")
        
    #sourceLocation()
    }
}

import struct PerfectVolume.CreateNoteView
import struct PerfectVolume.CreateNoteView_Previews