//
//  DataController.swift
//  PerfectVolume
//
//  Created by Joseph Schaubroeck on 7/29/22.
//

import Foundation
import CoreData
import SwiftUI

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "CoreDataContainer")
    
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Failed to load the data \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data saved")
        } catch {
            print("We could not save data")
        }
    }
    
    func addMuscleGroupTest(name: String, minTarget: Int, maxTarget: Int, context: NSManagedObjectContext) {
        let muscle = MuscleGroupEntity(context: context)
        muscle.id = UUID()
        muscle.name = name
        muscle.setsWorked = 0
        muscle.minTargetSets = Int64(minTarget)
        muscle.maxTargetSets = Int64(maxTarget)
        save(context: context)
    }
    
    func addMuscleGroup(name: String, minTarget: Int, maxTarget: Int, context: NSManagedObjectContext) {
        let muscle = MuscleGroupEntity(context: context)
        muscle.id = UUID()
        muscle.name = name
        muscle.setsWorked = 0
        muscle.minTargetSets = Int64(minTarget)
        muscle.maxTargetSets = Int64(maxTarget)
        save(context: context)
    }
    
    func editMuscleGroup(muscle: MuscleGroupEntity, name: String, minTarget: Int, maxTarget: Int, context: NSManagedObjectContext) {
        muscle.name = name
        muscle.minTargetSets = Int64(minTarget)
        muscle.maxTargetSets = Int64(maxTarget)
        save(context: context)
        
    }
    
    func addExercise(name: String, numSets: Int, muscleGroup: MuscleGroupEntity, context: NSManagedObjectContext) -> ExerciseEntity {
        let exercise = ExerciseEntity(context: context)
        exercise.id = UUID()
        exercise.name = name
        exercise.numSets = Int64(numSets)
        exercise.sets = []
        exercise.muscleGroup = muscleGroup
        for _ in 0..<10 {
            let blankSet = SetDetailEntity(context: context)
            blankSet.weight = ""
            blankSet.reps = ""
            exercise.addToSets(blankSet)
        }
        muscleGroup.setsWorked += Int64(numSets)

        return exercise
    }
    
    func addNote(title: String, exercises: [ExerciseEntity], date: Date, context: NSManagedObjectContext) {
        let note = NoteEntity(context: context)
        note.id = UUID()
        note.title = title
        note.date = date

        
        // CHANGE + IMPLEMENT FOR EDIT NOTE
        for exercise in exercises {
            note.addToExercises(exercise)
//            exercise.muscleGroup?.setsWorked += exercise.numSets
        }
        
        save(context: context)
        
    }
    
    func editNote(note: NoteEntity, title: String, date: Date, exercises: [ExerciseEntity], context: NSManagedObjectContext) {
        note.title = title
        note.exercises = []
        for exercise in exercises {
            note.addToExercises(exercise)
        }
        save(context: context)
    }
 }
