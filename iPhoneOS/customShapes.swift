//
//  customShapes.swift
//  iPhoneOS
//
//  Created by Abdulaziz Albastaki on 14/06/2021.
//

import SwiftUI

struct gradientShape: Shape {
    let rows: Int
    let cols: Int
    
    func path(in rect: CGRect) -> Path {
        let rowWidth = rect.height/CGFloat(rows)
        let colWidth = rect.width/CGFloat(cols)
        var path = Path()
        
        for row in 0..<rows {
            for col in 0..<cols {
                if (row+col).isMultiple(of: 2) {
                let startX = colWidth * CGFloat(col)
                let startY = rowWidth * CGFloat(row)
                let rect = CGRect(x: startX, y: startY, width: colWidth, height: rowWidth)
                path.addRect(rect)
            }
            }
        }
        return path
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        return path
    }
}
