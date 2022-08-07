@_private(sourceFile: "MainMenuView.swift") import PerfectVolume
import CoreData
import SwiftUI
import SwiftUI

extension MainMenuView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 135)
        __designTimeSelection(MainMenuView(), "#5884.[3].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: deleteNote(offsets:)) private func __preview__deleteNote(offsets: IndexSet) {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 126)
        __designTimeSelection(withAnimation {
            __designTimeSelection(offsets.map { __designTimeSelection(notes[__designTimeSelection($0, "#5884.[2].[10].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].[0].value")], "#5884.[2].[10].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]") }.forEach(__designTimeSelection(managedObjContext.delete, "#5884.[2].[10].[0].arg[0].value.[0].modifier[1].arg[0].value")), "#5884.[2].[10].[0].arg[0].value.[0]")
            __designTimeSelection(DataController().save(context: __designTimeSelection(managedObjContext, "#5884.[2].[10].[0].arg[0].value.[1].modifier[0].arg[0].value")), "#5884.[2].[10].[0].arg[0].value.[1]")
        }, "#5884.[2].[10].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: deleteMuscle(offsets:)) private func __preview__deleteMuscle(offsets: IndexSet) {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 119)
        __designTimeSelection(withAnimation {
            __designTimeSelection(offsets.map { __designTimeSelection(muscleGroups[__designTimeSelection($0, "#5884.[2].[9].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].[0].value")], "#5884.[2].[9].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]") }.forEach(__designTimeSelection(managedObjContext.delete, "#5884.[2].[9].[0].arg[0].value.[0].modifier[1].arg[0].value")), "#5884.[2].[9].[0].arg[0].value.[0]")
            __designTimeSelection(DataController().save(context: __designTimeSelection(managedObjContext, "#5884.[2].[9].[0].arg[0].value.[1].modifier[0].arg[0].value")), "#5884.[2].[9].[0].arg[0].value.[1]")
        }, "#5884.[2].[9].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 32)
        __designTimeSelection(NavigationView {
            __designTimeSelection(ZStack {
                __designTimeSelection(Color(.white).ignoresSafeArea(), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(VStack {
                    switch selectedIndex {
                    case 0:

                        __designTimeSelection(List {
                            __designTimeSelection(ForEach(__designTimeSelection(muscleGroups, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[0].value")) { muscle in
                                __designTimeSelection(Section {
                                    __designTimeSelection(NavigationLink(destination: __designTimeSelection(EditMuscleGroupView(muscle: __designTimeSelection(muscle, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.arg[0].value")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value")) {
                                        __designTimeSelection(HStack {
                                            __designTimeSelection(Text(__designTimeSelection(muscle.name, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                            __designTimeSelection(Spacer(), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1]")
                                        }, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[1].value.[0]")
                                    }, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                }
                                .listRowBackground(__designTimeSelection(Color.red, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0]")
                            }
                            .onDelete(perform: __designTimeSelection(deleteMuscle, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0]")
                        }
                        .listStyle(__designTimeSelection(InsetGroupedListStyle(), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0].modifier[0].arg[0].value"))
                        .environment(\.horizontalSizeClass, .regular), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[0]")
                        __designTimeSelection(Spacer(), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[1]")
                        
                        __designTimeSelection(NavigationLink(destination: __designTimeSelection(CreateMuscleGroupView(), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[0].value")) {
                            __designTimeSelection(Image(systemName: __designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].arg[0].value", fallback: "plus.app.fill"))
                                .font(.system(size: __designTimeInteger("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40), weight: .bold))
                                .foregroundColor(__designTimeSelection(Color(__designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[1].arg[0].value"))
                                .padding(), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0]")
                        }
                        .navigationTitle(__designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].modifier[0].arg[0].value", fallback: "Muscle Groups")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2]")
                        
                    case 1:
                        __designTimeSelection(List {
                            __designTimeSelection(ForEach(__designTimeSelection(notes, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[0].value")) { note in
                                __designTimeSelection(NavigationLink(destination: __designTimeSelection(EditNoteView(note: __designTimeSelection(note, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.arg[0].value")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")) {
                                    __designTimeSelection(HStack {
                                        __designTimeSelection(Text(note.title ?? __designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: "")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0]")
                                        __designTimeSelection(Spacer(), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[1]")
                                    }, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                                }
                                .listRowBackground(__designTimeSelection(secondarySystem, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0]")
                            }
                            .onDelete(perform: __designTimeSelection(deleteNote, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0]")
                        }, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0]")
                        __designTimeSelection(Spacer(), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[1]")
                        __designTimeSelection(NavigationLink(destination: __designTimeSelection(CreateNoteView(), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[0].value")) {
                            __designTimeSelection(ZStack {
                                __designTimeSelection(Image(systemName: __designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "square.fill")).font(.system(size: __designTimeInteger("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40)))
                                    .foregroundColor(__designTimeSelection(Color(__designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0]")
                                __designTimeSelection(Image(systemName: __designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "pencil")).font(.system(size: __designTimeInteger("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 30), weight: .bold))
                                    .foregroundColor(.white), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1]")

                            }
                                .padding(), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0]")
                        }
                        .navigationBarTitle(__designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].modifier[0].arg[0].value", fallback: "Workout Notes")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2]")
                    default:
                        __designTimeSelection(NavigationView {
                            __designTimeSelection(Text(__designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[2].[0].arg[0].value.[0].arg[0].value", fallback: "Error")), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[2].[0].arg[0].value.[0]")
                        }, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[2].[0]")
                    }
                    
                    __designTimeSelection(Spacer(), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1]")
                    __designTimeSelection(HStack {
                        __designTimeSelection(ForEach(__designTimeInteger("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0]", fallback: 0)..<__designTimeInteger("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1]", fallback: 2)) { num in
                            __designTimeSelection(Button(action: {
                                selectedIndex = num
                            }, label: {
                                __designTimeSelection(Spacer(), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                                __designTimeSelection(Image(systemName: __designTimeSelection(tabBarImageNames[__designTimeSelection(num, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].arg[0].value.[0].value")], "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].arg[0].value"))
                                    .font(.system(size: __designTimeInteger("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 24), weight: .bold))
                                    .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: __designTimeFloat("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[1].arg[0].value.[0]", fallback: 0.75))), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1]")
                                __designTimeSelection(Spacer(), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[2]")
                            }), "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0]")
                            
                        }, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0]")
                    }, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2]")
                }, "#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }, "#5884.[2].[8].property.[0].[0].arg[0].value.[0]")
        }, "#5884.[2].[8].property.[0].[0]")
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: dateFormatter) private var __preview__dateFormatter: DateFormatter {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 26)
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return __designTimeSelection(formatter, "#5884.[2].[7].property.[0].[2]")
    #sourceLocation()
    }
}

import struct PerfectVolume.MainMenuView
import struct PerfectVolume.MainMenuView_Previews