@_private(sourceFile: "CreateMuscleGroupView.swift") import PerfectVolume
import SwiftUI
import SwiftUI

extension CreateMuscleGroupView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateMuscleGroupView.swift", line: 82)
        __designTimeSelection(CreateMuscleGroupView(), "#5238.[2].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension CreateMuscleGroupView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josephschaubroeck/Desktop/CoreData_Swift/PerfectVolume/PerfectVolume/Views/CreateMuscleGroupView.swift", line: 23)
        
        __designTimeSelection(VStack {
            __designTimeSelection(Form {
                __designTimeSelection(Section {
                    __designTimeSelection(TextField(__designTimeString("#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Muscle group name"), text: __designTimeSelection($name, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]")
                }.listRowBackground(__designTimeSelection(secondarySystem, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                __designTimeSelection(Section {
                    __designTimeSelection(VStack {
                        __designTimeSelection(Text("Minimum Target Sets: \(__designTimeSelection(Int(__designTimeSelection(minTargetSets, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].value.arg[0].value.arg[0].value")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].value.arg[0].value"))"), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0]")
                        __designTimeSelection(Slider(value: __designTimeSelection($minTargetSets, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].arg[0].value"), in: __designTimeInteger("#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0]", fallback: 0)...__designTimeInteger("#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1]", fallback: 30), step: __designTimeInteger("#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].arg[2].value", fallback: 1)), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1]")
                    }
                    .padding()
                    .listRowBackground(__designTimeSelection(secondarySystem, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].modifier[1].arg[0].value")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
                    
                    __designTimeSelection(VStack {
                        __designTimeSelection(Text("Maximum Target Sets: \(__designTimeSelection(Int(__designTimeSelection(maxTargetSets, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].value.arg[0].value.arg[0].value")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1].value.arg[0].value"))"), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0]")
                        __designTimeSelection(Slider(value: __designTimeSelection($maxTargetSets, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].arg[0].value"), in: __designTimeInteger("#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0]", fallback: 0)...__designTimeInteger("#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].arg[1].value.[1]", fallback: 30), step: __designTimeInteger("#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1].arg[2].value", fallback: 1)), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[1]")
                    }
                    .padding()
                    .listRowBackground(__designTimeSelection(secondarySystem, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].modifier[1].arg[0].value")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1]")
                }, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
                
                __designTimeSelection(Section {
                    __designTimeSelection(Button(action: {
                        if textValid(name: name, minTarget: Int(minTargetSets), maxTarget: Int(maxTargetSets)) {
                            __designTimeSelection(withAnimation {
                                __designTimeSelection(DataController().addMuscleGroup(name: __designTimeSelection(name, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[0].value.[0].modifier[0].arg[0].value"), minTarget: __designTimeSelection(Int(__designTimeSelection(minTargetSets, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[0].value.[0].modifier[0].arg[1].value.arg[0].value")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[0].value.[0].modifier[0].arg[1].value"), maxTarget: __designTimeSelection(Int(__designTimeSelection(maxTargetSets, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[0].value.[0].modifier[0].arg[2].value.arg[0].value")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[0].value.[0].modifier[0].arg[2].value"), context: __designTimeSelection(managedObjContext, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[0].value.[0].modifier[0].arg[3].value")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[0].value.[0]")
                                __designTimeSelection(self.presentationMode.wrappedValue.dismiss(), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].[0].[0].arg[0].value.[1]")
                            }, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].[0].[0]")
                        }
                        
                        
                    }, label: {
                        __designTimeSelection(HStack {
                            __designTimeSelection(Spacer(), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                            __designTimeSelection(Text(__designTimeString("#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "SAVE"))
                                .foregroundColor(__designTimeSelection(Color.white, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1].modifier[0].arg[0].value"))
                            .font(.headline), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1]")
                            __designTimeSelection(Spacer(), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value.[2]")
                        }, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0]")
                    }), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0]")
                }
                .padding(__designTimeInteger("#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 15))
                .listRowBackground(__designTimeSelection(textValid(name: __designTimeSelection(name, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[1].arg[0].value.if.arg[0].value"), minTarget: __designTimeSelection(Int(__designTimeSelection(minTargetSets, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[1].arg[0].value.if.arg[1].value.arg[0].value")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[1].arg[0].value.if.arg[1].value"), maxTarget: __designTimeSelection(Int(__designTimeSelection(maxTargetSets, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[1].arg[0].value.if.arg[2].value.arg[0].value")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[1].arg[0].value.if.arg[2].value")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[1].arg[0].value.if") ? __designTimeSelection(Color(__designTimeString("#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[1].arg[0].value.then.arg[0].value", fallback: "Mint Green")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[1].arg[0].value.then") : __designTimeSelection(Color.gray, "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[1].arg[0].value.else")), "#5238.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2]")
                
            }, "#5238.[1].[7].property.[0].[0].arg[0].value.[0]")
            
            
            
            __designTimeSelection(Spacer(), "#5238.[1].[7].property.[0].[0].arg[0].value.[1]")
        }, "#5238.[1].[7].property.[0].[0]")
        
    #sourceLocation()
    }
}

import struct PerfectVolume.CreateMuscleGroupView
import struct PerfectVolume.CreateMuscleGroupView_Previews