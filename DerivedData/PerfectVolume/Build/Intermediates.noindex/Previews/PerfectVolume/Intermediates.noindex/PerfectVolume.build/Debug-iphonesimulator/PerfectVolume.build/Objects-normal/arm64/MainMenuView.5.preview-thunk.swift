@_private(sourceFile: "MainMenuView.swift") import PerfectVolume
import CoreData
import SwiftUI
import SwiftUI

extension MainMenuView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 136)
        __designTimeSelection(MainMenuView(), "#8606.[3].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: deleteNote(offsets:)) private func __preview__deleteNote(offsets: IndexSet) {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 127)
        __designTimeSelection(withAnimation {
            __designTimeSelection(offsets.map { __designTimeSelection(notes[__designTimeSelection($0, "#8606.[2].[10].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].[0].value")], "#8606.[2].[10].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]") }.forEach(__designTimeSelection(managedObjContext.delete, "#8606.[2].[10].[0].arg[0].value.[0].modifier[1].arg[0].value")), "#8606.[2].[10].[0].arg[0].value.[0]")
            __designTimeSelection(DataController().save(context: __designTimeSelection(managedObjContext, "#8606.[2].[10].[0].arg[0].value.[1].modifier[0].arg[0].value")), "#8606.[2].[10].[0].arg[0].value.[1]")
        }, "#8606.[2].[10].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: deleteMuscle(offsets:)) private func __preview__deleteMuscle(offsets: IndexSet) {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 120)
        __designTimeSelection(withAnimation {
            __designTimeSelection(offsets.map { __designTimeSelection(muscleGroups[__designTimeSelection($0, "#8606.[2].[9].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].[0].value")], "#8606.[2].[9].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]") }.forEach(__designTimeSelection(managedObjContext.delete, "#8606.[2].[9].[0].arg[0].value.[0].modifier[1].arg[0].value")), "#8606.[2].[9].[0].arg[0].value.[0]")
            __designTimeSelection(DataController().save(context: __designTimeSelection(managedObjContext, "#8606.[2].[9].[0].arg[0].value.[1].modifier[0].arg[0].value")), "#8606.[2].[9].[0].arg[0].value.[1]")
        }, "#8606.[2].[9].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 32)
        __designTimeSelection(NavigationView {
            __designTimeSelection(ZStack {
                __designTimeSelection(Color(.white).ignoresSafeArea(), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(VStack {
                    switch selectedIndex {
                    case 0:

                        __designTimeSelection(List {
                            __designTimeSelection(ForEach(__designTimeSelection(muscleGroups, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[0].value")) { muscle in
                                __designTimeSelection(Section {
                                    __designTimeSelection(NavigationLink(destination: __designTimeSelection(EditMuscleGroupView(muscle: __designTimeSelection(muscle, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.arg[0].value")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value")) {
                                        __designTimeSelection(HStack {
                                            __designTimeSelection(Text(__designTimeSelection(muscle.name, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                            __designTimeSelection(Spacer(), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1]")
                                        }, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0]")
                                    }, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                }
                                .listRowBackground(__designTimeSelection(Color.red, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0]")
                            }
                            .onDelete(perform: __designTimeSelection(deleteMuscle, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0]")
                        }
                        .listStyle(__designTimeSelection(InsetGroupedListStyle(), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].modifier[0].arg[0].value"))
                        .environment(\.horizontalSizeClass, .regular), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0]")
                        __designTimeSelection(Spacer(), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[1]")
                        
                        __designTimeSelection(NavigationLink(destination: __designTimeSelection(CreateMuscleGroupView(), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[0].value")) {
                            __designTimeSelection(Image(systemName: __designTimeString("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].arg[0].value", fallback: "plus.app.fill"))
                                .font(.system(size: __designTimeInteger("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40), weight: .bold))
                                .foregroundColor(__designTimeSelection(Color(__designTimeString("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[1].arg[0].value"))
                                .padding(), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0]")
                        }
                        .navigationTitle(__designTimeString("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].modifier[0].arg[0].value", fallback: "Muscle Groups")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2]")
                        
                    case 1:
                        __designTimeSelection(List {
                            __designTimeSelection(ForEach(__designTimeSelection(notes, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[0].value")) { note in
                                __designTimeSelection(NavigationLink(destination: __designTimeSelection(EditNoteView(note: __designTimeSelection(note, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.arg[0].value")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")) {
                                    __designTimeSelection(HStack {
                                        __designTimeSelection(Text(note.title ?? __designTimeString("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: "")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                        __designTimeSelection(Spacer(), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[1]")
                                        __designTimeSelection(Text(__designTimeSelection(dateFormatter.string(from: note.date ?? Date()), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2].arg[0].value")).padding(.trailing, __designTimeFloat("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2].modifier[0].arg[1].value", fallback: 10.0)), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[2]")
                                    }, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                                }
                                .listRowBackground(__designTimeSelection(secondarySystem, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0]")
                            }
                            .onDelete(perform: __designTimeSelection(deleteNote, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0]")
                        }, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0]")
                        __designTimeSelection(Spacer(), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[1]")
                        __designTimeSelection(NavigationLink(destination: __designTimeSelection(CreateNoteView(), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[0].value")) {
                            __designTimeSelection(ZStack {
                                __designTimeSelection(Image(systemName: __designTimeString("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "square.fill")).font(.system(size: __designTimeInteger("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40)))
                                    .foregroundColor(__designTimeSelection(Color(__designTimeString("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0]")
                                __designTimeSelection(Image(systemName: __designTimeString("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "pencil")).font(.system(size: __designTimeInteger("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 30), weight: .bold))
                                    .foregroundColor(.white), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1]")

                            }
                                .padding(), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0]")
                        }
                        .navigationBarTitle(__designTimeString("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].modifier[0].arg[0].value", fallback: "Workout Notes")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2]")
                    default:
                        __designTimeSelection(NavigationView {
                            __designTimeSelection(Text(__designTimeString("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[2].[0].arg[0].value.[0].arg[0].value", fallback: "Error")), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[2].[0].arg[0].value.[0]")
                        }, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[2].[0]")
                    }
                    
                    __designTimeSelection(Spacer(), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1]")
                    __designTimeSelection(HStack {
                        __designTimeSelection(ForEach(__designTimeInteger("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0]", fallback: 0)..<__designTimeInteger("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1]", fallback: 2)) { num in
                            __designTimeSelection(Button(action: {
                                selectedIndex = num
                            }, label: {
                                __designTimeSelection(Spacer(), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                                __designTimeSelection(Image(systemName: __designTimeSelection(tabBarImageNames[__designTimeSelection(num, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].arg[0].value.[0].value")], "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].arg[0].value"))
                                    .font(.system(size: __designTimeInteger("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 24), weight: .bold))
                                    .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: __designTimeFloat("#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[1].arg[0].value.[0]", fallback: 0.75))), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1]")
                                __designTimeSelection(Spacer(), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[2]")
                            }), "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0]")
                            
                        }, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0]")
                    }, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2]")
                }, "#8606.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }, "#8606.[2].[8].property.[0].[0].arg[0].value.[0]")
        }, "#8606.[2].[8].property.[0].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: dateFormatter) private var __preview__dateFormatter: DateFormatter {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 26)
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return __designTimeSelection(formatter, "#8606.[2].[7].property.[0].[2]")
    #sourceLocation()
    }
}

import struct PerfectVolume.MainMenuView
import struct PerfectVolume.MainMenuView_Previews