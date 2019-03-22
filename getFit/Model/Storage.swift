import Foundation
import UIKit

class StorageExercises {
    
    enum Exercises: String, CaseIterable {
        case Shoulders
        case Chest
        case Abdominals
        case Arms
        case Legs
        case Back
        case Cardio
        case Stretch
    }
    
    static var exercisesImages = [UIImage]()
    static var exercisesNames = [String]()
    
    static func getExercises() {
        for i in Exercises.allCases {
            exercisesImages.append(UIImage(named: i.rawValue)!)
            exercisesNames.append(i.rawValue)
        }
    }
}


//MARK: - Some Exercises

class SomeExercises {
    
    static var shoulders = ["shouldersTest1", "shouldersTest2", "shouldersTest3"]
    
    static var chest = ["Barbell bench press", "Barbell incline bench press", "Machine fly", "Dumbbell bench press", "Dumbbell incline bench press", "Dumble Fly"]
    
    
    
    static var someExercisesImages = [UIImage]()
    static var someExercisesNames = [String]()
    
    static func getSomeExercises(_ exercisesGroup: [String]) {
        
        for i in exercisesGroup {
            someExercisesNames.append(i)
        }
        
    }
    
}







