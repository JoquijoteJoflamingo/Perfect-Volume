//
//  CreateMuscleGroupView.swift
//  PerfectVolume
//
//  Created by Joseph Schaubroeck on 7/29/22.
//

import SwiftUI

struct CreateMuscleGroupView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var name : String = ""
    @State var minTargetSets : Double = 0
    @State var maxTargetSets : Double = 0

    let secondarySystem : Color = Color(UIColor.secondarySystemBackground)
    init() {
        UITableView.appearance().backgroundColor = .clear
    }
    var body: some View {
        
        VStack {
            Form {
                Section {
                    TextField("Muscle group name", text: $name)
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
                                DataController().addMuscleGroup(name: name, minTarget: Int(minTargetSets), maxTarget: Int(maxTargetSets), context: managedObjContext)
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

struct CreateMuscleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        CreateMuscleGroupView()
    }
}
