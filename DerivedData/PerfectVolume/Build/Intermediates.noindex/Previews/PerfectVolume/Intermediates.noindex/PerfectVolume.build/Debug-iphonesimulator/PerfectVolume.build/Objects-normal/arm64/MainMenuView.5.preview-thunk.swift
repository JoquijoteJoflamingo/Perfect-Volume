@_private(sourceFile: "MainMenuView.swift") import PerfectVolume
import CoreData
import SwiftUI
import SwiftUI

extension MainMenuView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 167)
        __designTimeSelection(MainMenuView(), "#2188.[3].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: deleteNote(offsets:)) private func __preview__deleteNote(offsets: IndexSet) {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 158)
        __designTimeSelection(withAnimation {
            __designTimeSelection(offsets.map { __designTimeSelection(notes[__designTimeSelection($0, "#2188.[2].[11].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].[0].value")], "#2188.[2].[11].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]") }.forEach(__designTimeSelection(managedObjContext.delete, "#2188.[2].[11].[0].arg[0].value.[0].modifier[1].arg[0].value")), "#2188.[2].[11].[0].arg[0].value.[0]")
            __designTimeSelection(DataController().save(context: __designTimeSelection(managedObjContext, "#2188.[2].[11].[0].arg[0].value.[1].modifier[0].arg[0].value")), "#2188.[2].[11].[0].arg[0].value.[1]")
        }, "#2188.[2].[11].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: decrementAfterSevenDays()) private func __preview__decrementAfterSevenDays() {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 137)
        // create a date that is one week before the current date
        let today = Date()
        let weekAgo: Date = Calendar.current.date(byAdding: .day, value: -__designTimeInteger("#2188.[2].[10].[1].value.[0]", fallback: 7), to: today) ?? Date()
        
        // go through each note
        for note in __designTimeSelection(notes, "#2188.[2].[10].[2].sequence") {
            
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
        __designTimeSelection(DataController().save(context: __designTimeSelection(managedObjContext, "#2188.[2].[10].[3].modifier[0].arg[0].value")), "#2188.[2].[10].[3]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: deleteMuscle(offsets:)) private func __preview__deleteMuscle(offsets: IndexSet) {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 130)
        __designTimeSelection(withAnimation {
            __designTimeSelection(offsets.map { __designTimeSelection(muscleGroups[__designTimeSelection($0, "#2188.[2].[9].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].[0].value")], "#2188.[2].[9].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]") }.forEach(__designTimeSelection(managedObjContext.delete, "#2188.[2].[9].[0].arg[0].value.[0].modifier[1].arg[0].value")), "#2188.[2].[9].[0].arg[0].value.[0]")
            __designTimeSelection(DataController().save(context: __designTimeSelection(managedObjContext, "#2188.[2].[9].[0].arg[0].value.[1].modifier[0].arg[0].value")), "#2188.[2].[9].[0].arg[0].value.[1]")
        }, "#2188.[2].[9].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 37)
        __designTimeSelection(NavigationView {
            __designTimeSelection(ZStack {
                __designTimeSelection(Color(.white).ignoresSafeArea(), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(VStack {
                    switch selectedIndex {
                    case 0:

                        __designTimeSelection(List {
                            __designTimeSelection(ForEach(__designTimeSelection(muscleGroups, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[0].value")) { muscle in
                                __designTimeSelection(Section {
                                    __designTimeSelection(NavigationLink(destination: __designTimeSelection(EditMuscleGroupView(muscle: __designTimeSelection(muscle, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.arg[0].value")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value")) {
                                        __designTimeSelection(HStack {
                                            __designTimeSelection(Text(__designTimeSelection(muscle.name, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                            __designTimeSelection(Spacer(), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1]")
                                            __designTimeSelection(FractionText(numerator: __designTimeSelection(Int(__designTimeSelection(muscle.setsWorked, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[2].arg[0].value.arg[0].value")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[2].arg[0].value"), denominator: __designTimeSelection(Int(__designTimeSelection(muscle.maxTargetSets, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[2].arg[1].value.arg[0].value")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[2].arg[1].value")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[2]")
                                        }, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0]")
                                    }, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                }
                                .listRowBackground(__designTimeSelection(muscle.rowColor, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0]")
                            }
                            .onDelete(perform: __designTimeSelection(deleteMuscle, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0]")
                        }
                        .listStyle(__designTimeSelection(InsetGroupedListStyle(), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].modifier[0].arg[0].value"))
                        .environment(\.horizontalSizeClass, .regular), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0]")
                        __designTimeSelection(Spacer(), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[1]")
                        
                        __designTimeSelection(NavigationLink(destination: __designTimeSelection(CreateMuscleGroupView(), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[0].value")) {
                            __designTimeSelection(Image(systemName: __designTimeString("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].arg[0].value", fallback: "plus.app.fill"))
                                .font(.system(size: __designTimeInteger("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40), weight: .bold))
                                .foregroundColor(__designTimeSelection(Color(__designTimeString("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[1].arg[0].value"))
                                .padding(), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0]")
                        }
                        .navigationTitle(__designTimeString("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].modifier[0].arg[0].value", fallback: "Muscle Groups")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2]")
                        
                    case 1:
                        __designTimeSelection(List {
                            __designTimeSelection(ForEach(__designTimeSelection(notes, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[0].value")) { note in
                                __designTimeSelection(NavigationLink(destination: __designTimeSelection(EditNoteView(note: __designTimeSelection(note, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.arg[0].value")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")) {
                                    __designTimeSelection(HStack {
                                        __designTimeSelection(Text(note.title ?? __designTimeString("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: "")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                        __designTimeSelection(Spacer(), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[1]")
                                        __designTimeSelection(Text(__designTimeSelection(dateFormatter.string(from: note.date ?? Date()), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2].arg[0].value")).padding(.trailing, __designTimeFloat("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2].modifier[0].arg[1].value", fallback: 10.0)), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2]")
                                    }, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                                }
                                .listRowBackground(__designTimeSelection(secondarySystem, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0]")
                            }
                            .onDelete(perform: __designTimeSelection(deleteNote, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0]")
                        }, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0]")
                        __designTimeSelection(Spacer(), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[1]")
                        __designTimeSelection(NavigationLink(destination: __designTimeSelection(CreateNoteView(), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[0].value")) {
                            __designTimeSelection(ZStack {
                                __designTimeSelection(Image(systemName: __designTimeString("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "square.fill")).font(.system(size: __designTimeInteger("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40)))
                                    .foregroundColor(__designTimeSelection(Color(__designTimeString("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0]")
                                __designTimeSelection(Image(systemName: __designTimeString("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "pencil")).font(.system(size: __designTimeInteger("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 30), weight: .bold))
                                    .foregroundColor(.white), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1]")

                            }
                                .padding(), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0]")
                        }
                        .navigationBarTitle(__designTimeString("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].modifier[0].arg[0].value", fallback: "Workout Notes")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2]")
                    default:
                        __designTimeSelection(NavigationView {
                            __designTimeSelection(Text(__designTimeString("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[2].[0].arg[0].value.[0].arg[0].value", fallback: "Error")), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[2].[0].arg[0].value.[0]")
                        }, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[2].[0]")
                    }
                    
                    __designTimeSelection(Spacer(), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1]")
                    __designTimeSelection(HStack {
                        __designTimeSelection(ForEach(__designTimeInteger("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0]", fallback: 0)..<__designTimeInteger("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1]", fallback: 2)) { num in
                            __designTimeSelection(Button(action: {
                                selectedIndex = num
                            }, label: {
                                __designTimeSelection(Spacer(), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                                __designTimeSelection(Image(systemName: __designTimeSelection(tabBarImageNames[__designTimeSelection(num, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].arg[0].value.[0].value")], "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].arg[0].value"))
                                    .font(.system(size: __designTimeInteger("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 24), weight: .bold))
                                    .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: __designTimeFloat("#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[1].arg[0].value.[0]", fallback: 0.75))), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1]")
                                __designTimeSelection(Spacer(), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[2]")
                            }), "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0]")
                            
                        }, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0]")
                    }, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2]")
                }, "#2188.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }, "#2188.[2].[8].property.[0].[0].arg[0].value.[0]")
        }
        .onAppear {
            __designTimeSelection(decrementAfterSevenDays(), "#2188.[2].[8].property.[0].[0].modifier[0].arg[0].value.[0]")
        }
        .preferredColorScheme(__designTimeSelection(ColorScheme.light, "#2188.[2].[8].property.[0].[0].modifier[1].arg[0].value")), "#2188.[2].[8].property.[0].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: dateFormatter) private var __preview__dateFormatter: DateFormatter {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 31)
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return __designTimeSelection(formatter, "#2188.[2].[7].property.[0].[2]")
    #sourceLocation()
    }
}

import struct PerfectVolume.MainMenuView
import struct PerfectVolume.MainMenuView_Previews