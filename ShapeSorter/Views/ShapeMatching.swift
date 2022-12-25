//
//  Test.swift
//  ShapeSorter
//
//  Created by Shakhnoza Mirabzalova on 12/13/22.
//

import SwiftUI

struct ShapeMatching: View {
    @State private var currentPosition: CGPoint = .zero
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 400, height: 700)
            VStack {
                Circle()
                    .fill(.white)
                    .frame(width: 200, height: 200)
            }
            Circle()
                .fill(.green)
                .frame(width: 200, height: 200)
                .offset(x: currentPosition.x-100, y: currentPosition.y-100)
                .gesture(
                    DragGesture()
                        .onChanged { value in
//                            let newX = value.location.x + value.startLocation.x
//                            let newY = value.location.y + value.startLocation.y
                            self.currentPosition = value.location
                            print(value.location)
                        }
                )
                
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        ShapeMatching()
    }
}
