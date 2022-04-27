//
//  Color-LBL.swift
//  Color-LBL
//
//  Created by iOS on 25/03/22.
//

import Foundation
import UIKit


class Color_LBL : UILabel
{
    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
        self.startChangeColor()
    }
}

extension Color_LBL
{
    private func getRandomColor() -> UIColor
    {
        return UIColor(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1),
                    alpha: 1.0
                )
    }
    
    private func startChangeColor()
    {
        let _ = Timer.scheduledTimer(withTimeInterval: 0.75, repeats: true) { [self] (timer) in
            
            var tempAttStr = NSMutableAttributedString()
            
            for char in text!
            {
                tempAttStr.append(NSMutableAttributedString(string: "\(char)", attributes: [NSAttributedString.Key.font : font, NSAttributedString.Key.foregroundColor:getRandomColor()]))
            }
            
            attributedText = tempAttStr
            
        }
    }
}
