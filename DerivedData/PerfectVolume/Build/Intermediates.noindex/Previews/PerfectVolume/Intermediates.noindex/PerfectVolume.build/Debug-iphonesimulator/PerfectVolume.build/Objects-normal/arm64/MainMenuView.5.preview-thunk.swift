@_private(sourceFile: "MainMenuView.swift") import PerfectVolume
import CoreData
import SwiftUI
import SwiftUI

extension MainMenuView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/Side-Projects/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 196)
        __designTimeSelection(MainMenuView(), "#8648.[3].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: deleteNote(offsets:)) private func __preview__deleteNote(offsets: IndexSet) {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/Side-Projects/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 187)
        __designTimeSelection(withAnimation {
            __designTimeSelection(offsets.map { __designTimeSelection(notes[__designTimeSelection($0, "#8648.[2].[12].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].[0].value")], "#8648.[2].[12].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]") }.forEach(__designTimeSelection(managedObjContext.delete, "#8648.[2].[12].[0].arg[0].value.[0].modifier[1].arg[0].value")), "#8648.[2].[12].[0].arg[0].value.[0]")
            __designTimeSelection(DataController().save(context: __designTimeSelection(managedObjContext, "#8648.[2].[12].[0].arg[0].value.[1].modifier[0].arg[0].value")), "#8648.[2].[12].[0].arg[0].value.[1]")
        }, "#8648.[2].[12].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: decrementAfterSevenDays()) private func __preview__decrementAfterSevenDays() {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/Side-Projects/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 166)
        // create a date that is one week before the current date
        let today = Date()
        let weekAgo: Date = Calendar.current.date(byAdding: .day, value: -__designTimeInteger("#8648.[2].[11].[1].value.[0]", fallback: 7), to: today) ?? Date()
        
        // go through each note
        for note in __designTimeSelection(notes, "#8648.[2].[11].[2].sequence") {
            
            // if the note was for a date from more than 7 days ago
            // decrement the muscle groups for each exercise
            if note.date! < weekAgo && note.timerOn {
                for noteExercise in note.exercises! {
                    (noteExercise as AnyObject).muscleGroup?.setsWorked -= (noteExercise as AnyObject).numSets
                }
                
                // set bool to false so this doesn't repeat
                note.timerOn = false
            }
        }
        __designTimeSelection(DataController().save(context: __designTimeSelection(managedObjContext, "#8648.[2].[11].[3].modifier[0].arg[0].value")), "#8648.[2].[11].[3]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: deleteMuscle(offsets:)) private func __preview__deleteMuscle(offsets: IndexSet) {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/Side-Projects/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 159)
        __designTimeSelection(withAnimation {
            __designTimeSelection(offsets.map { __designTimeSelection(muscleGroups[__designTimeSelection($0, "#8648.[2].[10].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].[0].value")], "#8648.[2].[10].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]") }.forEach(__designTimeSelection(managedObjContext.delete, "#8648.[2].[10].[0].arg[0].value.[0].modifier[1].arg[0].value")), "#8648.[2].[10].[0].arg[0].value.[0]")
            __designTimeSelection(DataController().save(context: __designTimeSelection(managedObjContext, "#8648.[2].[10].[0].arg[0].value.[1].modifier[0].arg[0].value")), "#8648.[2].[10].[0].arg[0].value.[1]")
        }, "#8648.[2].[10].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/Side-Projects/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 34)
        __designTimeSelection(NavigationView {
            __designTimeSelection(ZStack {
                
                __designTimeSelection(Color(.white).ignoresSafeArea(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(VStack {
                    switch selectedIndex {
                    case 0:

                        __designTimeSelection(List {
                            __designTimeSelection(ForEach(__designTimeSelection(muscleGroups, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[0].value")) { muscle in
                                __designTimeSelection(Section {
                                    __designTimeSelection(NavigationLink(destination: __designTimeSelection(EditMuscleGroupView(muscle: __designTimeSelection(muscle, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.arg[0].value")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value")) {
                                        __designTimeSelection(HStack {
                                            __designTimeSelection(Text(__designTimeSelection(muscle.name, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                            __designTimeSelection(Spacer(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1]")
                                            __designTimeSelection(FractionText(numerator: __designTimeSelection(Int(__designTimeSelection(muscle.setsWorked, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[2].arg[0].value.arg[0].value")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[2].arg[0].value"), denominator: __designTimeSelection(Int(__designTimeSelection(muscle.maxTargetSets, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[2].arg[1].value.arg[0].value")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[2].arg[1].value")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[2]")
                                        }, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0]")
                                    }, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                    
                                }
                                .listRowBackground(__designTimeSelection(muscle.rowColor, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0]")
                                
                            }
                            .onDelete(perform: __designTimeSelection(deleteMuscle, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0]")
                        }
                        .listStyle(__designTimeSelection(InsetGroupedListStyle(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].modifier[0].arg[0].value"))
                        .environment(\.horizontalSizeClass, .regular), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0]")
                        __designTimeSelection(Spacer(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[1]")
                        
                        __designTimeSelection(NavigationLink(destination: __designTimeSelection(CreateMuscleGroupView(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[0].value")) {
                            __designTimeSelection(Image(systemName: __designTimeString("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].arg[0].value", fallback: "plus.app.fill"))
                                .font(.system(size: __designTimeInteger("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40), weight: .bold))
                                .foregroundColor(__designTimeSelection(Color(__designTimeString("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[1].arg[0].value"))
                                .padding(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0]")
                        }
                        .toolbar() {
                            __designTimeSelection(ToolbarItemGroup(placement: .navigationBarTrailing) {
                                __designTimeSelection(Button {
                                    __designTimeSelection(showTutorial.toggle(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                } label: {
                                    __designTimeSelection(Image(systemName: __designTimeString("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "questionmark.circle")).font(.system(size: __designTimeInteger("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20))).padding().foregroundColor(__designTimeSelection(Color(__designTimeString("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: "Mint Green")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                                }, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].modifier[0].arg[0].value.[0].arg[1].value.[0]")

                            }, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].modifier[0].arg[0].value.[0]")
                        }
                        .navigationTitle(__designTimeString("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].modifier[1].arg[0].value", fallback: "Muscle Groups")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2]")
                        
                    case 1:
                        __designTimeSelection(List {
                            __designTimeSelection(ForEach(__designTimeSelection(notes, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[0].value")) { note in
                                __designTimeSelection(NavigationLink(destination: __designTimeSelection(EditNoteView(note: __designTimeSelection(note, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.arg[0].value")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")) {
                                    __designTimeSelection(HStack {
                                        __designTimeSelection(Text(note.title ?? __designTimeString("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: "")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                        __designTimeSelection(Spacer(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[1]")
                                        __designTimeSelection(Text(__designTimeSelection(dateFormatter.string(from: note.date ?? Date()), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2].arg[0].value")).padding(.trailing, __designTimeFloat("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2].modifier[0].arg[1].value", fallback: 10.0)), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2]")
                                    }, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                                }
                                .listRowBackground(__designTimeSelection(secondarySystem, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0]")
                            }
                            .onDelete(perform: __designTimeSelection(deleteNote, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0]")
                        }, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0]")
                        __designTimeSelection(Spacer(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[1]")
                        __designTimeSelection(NavigationLink(destination: __designTimeSelection(CreateNoteView(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[0].value")) {
                            __designTimeSelection(ZStack {
                                __designTimeSelection(Image(systemName: __designTimeString("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "square.fill")).font(.system(size: __designTimeInteger("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40)))
                                    .foregroundColor(__designTimeSelection(Color(__designTimeString("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0]")
                                __designTimeSelection(Image(systemName: __designTimeString("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "pencil")).font(.system(size: __designTimeInteger("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 30), weight: .bold))
                                    .foregroundColor(.white), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1]")

                            }
                                .padding(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0]")
                        }
                        .navigationBarTitle(__designTimeString("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].modifier[0].arg[0].value", fallback: "Workout Notes")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2]")
                    default:
                        __designTimeSelection(NavigationView {
                            __designTimeSelection(Text(__designTimeString("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[2].[0].arg[0].value.[0].arg[0].value", fallback: "Error")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[2].[0].arg[0].value.[0]")
                        }, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[2].[0]")
                    }
                    
                    __designTimeSelection(Spacer(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1]")
                    __designTimeSelection(HStack {
                        __designTimeSelection(ForEach(__designTimeInteger("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0]", fallback: 0)..<__designTimeInteger("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1]", fallback: 2)) { num in
                            __designTimeSelection(Button(action: {
                                selectedIndex = num
                            }, label: {
                                __designTimeSelection(Spacer(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                                __designTimeSelection(Image(systemName: __designTimeSelection(tabBarImageNames[__designTimeSelection(num, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].arg[0].value.[0].value")], "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].arg[0].value"))
                                    .font(.system(size: __designTimeInteger("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 24), weight: .bold))
                                    .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: __designTimeFloat("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[1].arg[0].value.[0]", fallback: 0.75))), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1]")
                                __designTimeSelection(Spacer(), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[2]")
                            }), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0]")
                            
                        }, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0]")
                    }, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2]")
                }
                .fullScreenCover(isPresented: __designTimeSelection($showTutorial, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value")) {
                    __designTimeSelection(Text(__designTimeString("#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[1].value.[0].arg[0].value", fallback: "Test")), "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[1].value.[0]")
                }, "#8648.[2].[9].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
                
                
            }, "#8648.[2].[9].property.[0].[0].arg[0].value.[0]")
            
            
        }
        .onAppear {
            __designTimeSelection(decrementAfterSevenDays(), "#8648.[2].[9].property.[0].[0].modifier[0].arg[0].value.[0]")
        }
        .preferredColorScheme(__designTimeSelection(ColorScheme.light, "#8648.[2].[9].property.[0].[0].modifier[1].arg[0].value")), "#8648.[2].[9].property.[0].[0]")
        // this will turn on when help button is pressed
//        .overlay(MainMenuOverlayView)
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: dateFormatter) private var __preview__dateFormatter: DateFormatter {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/Side-Projects/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 27)
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return __designTimeSelection(formatter, "#8648.[2].[7].property.[0].[2]")
    #sourceLocation()
    }
}

import struct PerfectVolume.MainMenuView
import struct PerfectVolume.MainMenuView_Previews