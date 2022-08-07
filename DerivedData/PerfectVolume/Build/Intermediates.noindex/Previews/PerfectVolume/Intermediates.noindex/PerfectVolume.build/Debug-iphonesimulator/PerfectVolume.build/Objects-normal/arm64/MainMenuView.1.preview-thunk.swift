@_private(sourceFile: "MainMenuView.swift") import PerfectVolume
import CoreData
import SwiftUI
import SwiftUI

extension MainMenuView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 135)
        MainMenuView()
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: deleteNote(offsets:)) private func __preview__deleteNote(offsets: IndexSet) {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 126)
        withAnimation {
            offsets.map { notes[$0] }.forEach(managedObjContext.delete)
            DataController().save(context: managedObjContext)
        }
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: deleteMuscle(offsets:)) private func __preview__deleteMuscle(offsets: IndexSet) {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 119)
        withAnimation {
            offsets.map { muscleGroups[$0] }.forEach(managedObjContext.delete)
            DataController().save(context: managedObjContext)
        }
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 32)
        NavigationView {
            ZStack {
                Color(.white).ignoresSafeArea()
                
                VStack {
                    switch selectedIndex {
                    case 0:

                        List {
                            ForEach(muscleGroups) { muscle in
                                Section {
                                    NavigationLink(destination: EditMuscleGroupView(muscle: muscle)) {
                                        HStack {
                                            Text(muscle.name)
                                            Spacer()
                                        }
                                    }
                                }
                                .listRowBackground(Color.red)
                            }
                            .onDelete(perform: deleteMuscle)
                        }
                        .listStyle(InsetGroupedListStyle())
                        .environment(\.horizontalSizeClass, .regular)
                        Spacer()
                        
                        NavigationLink(destination: CreateMuscleGroupView()) {
                            Image(systemName: __designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].arg[0].value", fallback: "plus.app.fill"))
                                .font(.system(size: __designTimeInteger("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40), weight: .bold))
                                .foregroundColor(Color(__designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")))
                                .padding()
                        }
                        .navigationTitle(__designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[0].[2].modifier[0].arg[0].value", fallback: "Muscle Groups"))
                        
                    case 1:
                        List {
                            ForEach(notes) { note in
                                NavigationLink(destination: EditNoteView(note: note)) {
                                    HStack {
                                        Text(note.title ?? __designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: ""))
                                        Spacer()
                                    }
                                }
                                .listRowBackground(secondarySystem)
                            }
                            .onDelete(perform: deleteNote)
                        }
                        Spacer()
                        NavigationLink(destination: CreateNoteView()) {
                            ZStack {
                                Image(systemName: __designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "square.fill")).font(.system(size: __designTimeInteger("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 40)))
                                    .foregroundColor(Color(__designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "Mint Green")))
                                Image(systemName: __designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "pencil")).font(.system(size: __designTimeInteger("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 30), weight: .bold))
                                    .foregroundColor(.white)

                            }
                                .padding()
                        }
                        .navigationBarTitle(__designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[1].[2].modifier[0].arg[0].value", fallback: "Workout Notes"))
                    default:
                        NavigationView {
                            Text(__designTimeString("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].[2].[0].arg[0].value.[0].arg[0].value", fallback: "Error"))
                        }
                    }
                    
                    Spacer()
                    HStack {
                        ForEach(__designTimeInteger("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0]", fallback: 0)..<__designTimeInteger("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1]", fallback: 2)) { num in
                            Button(action: {
                                selectedIndex = num
                            }, label: {
                                Spacer()
                                Image(systemName: tabBarImageNames[num])
                                    .font(.system(size: __designTimeInteger("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 24), weight: .bold))
                                    .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: __designTimeFloat("#5884.[2].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[1].arg[0].value.[0]", fallback: 0.75)))
                                Spacer()
                            })
                            
                        }
                    }
                }
            }
        }
    #sourceLocation()
    }
}

extension MainMenuView {
    @_dynamicReplacement(for: dateFormatter) private var __preview__dateFormatter: DateFormatter {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/MainMenuView.swift", line: 26)
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    #sourceLocation()
    }
}

import struct PerfectVolume.MainMenuView
import struct PerfectVolume.MainMenuView_Previews