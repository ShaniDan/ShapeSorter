//
//  MyShape.swift
//  ShapeSorter
//
//  Created by Shakhnoza Mirabzalova on 12/13/22.
//

import SwiftUI

struct TriangleView: View {
  @State private var currentPosition: CGPoint = .zero

  var body: some View {
    Path { path in
      path.move(to: CGPoint(x: 100, y: 0))
      path.addLine(to: CGPoint(x: 0, y: 200))
      path.addLine(to: CGPoint(x: 200, y: 200))
      path.addLine(to: CGPoint(x: 100, y: 0))
    }
    .fill(Color.red)
    .offset(x: currentPosition.x, y: currentPosition.y)
    .gesture(
      DragGesture()
        .onChanged { value in
          self.currentPosition = value.location
        }
    )
  }
}

struct MyShape_Previews: View {
    var body: some View {
        TriangleView()
    }
}
