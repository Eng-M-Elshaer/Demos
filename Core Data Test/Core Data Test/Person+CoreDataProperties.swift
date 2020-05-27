//
//  Person+CoreDataProperties.swift
//  Core Data Test
//
//  Created by Mohamed Elshaer on 3/5/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16

}
