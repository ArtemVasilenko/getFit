//
//  ExercisesView.swift
//  getFit
//
//  Created by Артем on 3/12/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class ExercisesView: UIView {
    
    //var viewCell: UIView?
    static var viewsForCellsExercises: [UIView]?
    
    var backImage: UIImage?
    var nameExercices: UILabel?

    override func draw(_ rect: CGRect) {
       
    }
    
    func addValuesToView() -> [UIView] {
        //let view: UIView?
        var arrViewCell: [UIView]?
        var image: UIImage?
        
        for i in Exercises.allCases {
            image = UIImage(named: i.rawValue)
            
        }
        
        let imageViewCell = UIImageView(image: image)
        
        
        return arrViewCell!
    }
    
    
    

}
