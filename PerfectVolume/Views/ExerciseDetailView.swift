//
//  ExerciseDetailView.swift
//  PerfectVolume
//
//  Created by Joseph Schaubroeck on 8/6/22.
//

import SwiftUI

struct ExerciseDetailView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @State var exercise : FetchedResults<ExerciseEntity>.Element
    let secondarySystem = Color(UIColor.secondarySystemBackground)
    @State var repsArray = ["", "", "", "", "", "", "", "", "", ""]
    @State var weightArray = ["", "", "", "", "", "", "", "", "", ""]
    var body: some View {
        NavigationView {
            List(0..<Int(exercise.numSets), id: \.self) { set in
                Section("Set \(set + 1)") {
                    VStack {
                        HStack {
                            Text("Reps")

                            TextField("0", text: $repsArray[set])
                                .onAppear {
//                                    for i in exercise.sets {
//
//                                    }
                                }
                        }

                        HStack {
                            Text("Weight")
                            HStack {
                                TextField("0", text: $weightArray[set])
                                    .frame(width: 35)
                                Text("lbs")
                                Spacer()
                            }
                        }
                    }
                }
                .listRowBackground(secondarySystem)
            }

            .navigationBarTitle(exercise.name ?? "", displayMode: .inline)

        }
        .preferredColorScheme(ColorScheme.light)
        
    }
}

//struct ExerciseDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ExerciseDetailView()
//    }
//}
