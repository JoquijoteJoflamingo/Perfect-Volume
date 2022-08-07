//
//  EditMuscleGroupView.swift
//  PerfectVolume
//
//  Created by Joseph Schaubroeck on 7/29/22.
//

import SwiftUI

struct EditMuscleGroupView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var muscle : FetchedResults<MuscleGroupEntity>.Element
    
    @State private var name : String = ""
    @State private var minTargetSets : Double = 0
    @State private var maxTargetSets : Double = 0
    
    let secondarySystem : Color = Color(UIColor.secondarySystemBackground)
    
    var body: some View {
        VStack {
            Form {
                Section {
                    TextField("\(muscle.name)", text: $name)
                        .onAppear {
                            name = muscle.name
                            minTargetSets = Double(muscle.minTargetSets)
                            maxTargetSets = Double(muscle.maxTargetSets)
                        }
                }.listRowBackground(secondarySystem)
                Section {
                    VStack {
                        Text("Minimum Target Sets: \(Int(minTargetSets))")
                        Slider(value: $minTargetSets, in: 0...30, step: 1)
                    }
                    .padding()
                    .listRowBackground(secondarySystem)
                    
                    VStack {
                        Text("Maximum Target Sets: \(Int(maxTargetSets))")
                        Slider(value: $maxTargetSets, in: 0...30, step: 1)
                    }
                    .padding()
                    .listRowBackground(secondarySystem)
                }
                
                Section {
                    Button(action: {
                        
                        if textValid(name: name, minTarget: Int(minTargetSets), maxTarget: Int(maxTargetSets)) {
                            withAnimation {
                                DataController().editMuscleGroup(muscle: muscle, name: name, minTarget: Int(minTargetSets), maxTarget: Int(maxTargetSets), context: managedObjContext)
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        }
                        
                    }, label: {
                        HStack {
                            Spacer()
                            Text("SAVE")
                                .foregroundColor(Color.white)
                            .font(.headline)
                            Spacer()
                        }
                    })
                }
                .padding(15)
                .listRowBackground(textValid(name: name, minTarget: Int(minTargetSets), maxTarget: Int(maxTargetSets)) ? Color("Mint Green") : Color.gray)
                
            }
            
            
            
            Spacer()
        }
    }
}

//struct EditMuscleGroupView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditMuscleGroupView()
//    }
//}
