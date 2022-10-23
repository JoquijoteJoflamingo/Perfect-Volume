@_private(sourceFile: "CreateMuscleGroupView.swift") import PerfectVolume
import SwiftUI
import SwiftUI

extension CreateMuscleGroupView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateMuscleGroupView.swift", line: 83)
        CreateMuscleGroupView()
    #sourceLocation()
    }
}

extension CreateMuscleGroupView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateMuscleGroupView.swift", line: 23)
        
        VStack {
            Form {
                Section {
                    TextField(__designTimeString("#2423.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Muscle group name"), text: $name)
                }.listRowBackground(secondarySystem)
                Section {
                    VStack {
                        Text("Minimum Target Sets: \(Int(minTargetSets))")
                        Slider(value: $minTargetSets, in: __designTimeInteger("#2423.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0]", fallback: 0)...__designTimeInteger("#2423.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1]", fallback: 30), step: __designTimeInteger("#2423.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].arg[2].value", fallback: 1))
                    }
                    .padding()
                    .listRowBackground(secondarySystem)
                    
                    VStack {
                        Text("Maximum Target Sets: \(Int(maxTargetSets))")
                        Slider(value: $maxTargetSets, in: __designTimeInteger("#2423.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0]", fallback: 0)...__designTimeInteger("#2423.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].arg[1].value.[1]", fallback: 30), step: __designTimeInteger("#2423.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].arg[2].value", fallback: 1))
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
                            Text(__designTimeString("#2423.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "SAVE"))
                                .foregroundColor(Color.white)
                            .font(.headline)
                            Spacer()
                        }
                    })
                }
                .padding(__designTimeInteger("#2423.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 15))
                .listRowBackground(textValid(name: name, minTarget: Int(minTargetSets), maxTarget: Int(maxTargetSets)) ? Color(__designTimeString("#2423.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[1].arg[0].value.then.arg[0].value", fallback: "Mint Green")) : Color.gray)
                
            }
            
            
            
            Spacer()
        }
        .preferredColorScheme(ColorScheme.light)
        
    #sourceLocation()
    }
}

import struct PerfectVolume.CreateMuscleGroupView
import struct PerfectVolume.CreateMuscleGroupView_Previews