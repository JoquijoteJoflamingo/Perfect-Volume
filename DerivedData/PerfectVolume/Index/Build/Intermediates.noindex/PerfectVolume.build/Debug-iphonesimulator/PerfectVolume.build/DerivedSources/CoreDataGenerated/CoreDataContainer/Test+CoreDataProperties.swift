//
//  Test+CoreDataProperties.swift
//  
//
//  Created by Joseph Schaubroeck on 8/10/23.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Test {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Test> {
        return NSFetchRequest<Test>(entityName: "Test")
    }

    @NSManaged public var name: String?

}

extension Test : Identifiable {

}
