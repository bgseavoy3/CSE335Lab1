//
//  part2.swift
//  CSE335Lab1
//
//  Created by bseavoy on 1/28/25.
//

import SwiftUI

struct part2View: View {
    @State var weight: Double = 0.0
    @State var height: Double = 0.0
    @State var BMI: Double = 0.0
    @State var heightSq: Double = 0.0
    @State var fHalf: Double = 0.0
    @State var firstHalf: Double = 0.0
    @State var secondHalf: Double = 0.0
    @State var Ideal: Double = 0.0
    @State var result: String = "test"
    var body: some View {
        VStack
        {
            Text("Ideal Weight")
          Spacer()

    Text("Your Weight(in inches)")
            Slider(value: $weight, in: 0...300)
            Text(String(format: "%.2f", weight))


            Text("Height(in inches): ")
    Slider(value: $height, in: 0...100)
    Text(String(String(format: "%.2f", height)))

            Button("Calculate BMI & Ideal Weight", action:
            {
                heightSq = height * height
                fHalf = weight / heightSq
                    BMI = fHalf*703
                    firstHalf = 5 * BMI
                    secondHalf = (BMI / 5)*(height - 60)
                    Ideal = firstHalf + secondHalf
                if(Ideal + 20 <= weight)
                {
                    result = "You are overweight"
                }
                else if(Ideal + 10 <= weight)
                {
                    result = "need to control your weight"
                }
                else if(Ideal + 5 <= weight)
                {
                    result = "You need to watch your weight gain"
                }
                else if(Ideal - 5 <= weight)
                {
                    result = "You are in good shape"
                }
                else
                {
                    result = "you need to eat more carb"
                }
            })
            Spacer()

            if(BMI != 0)
            {
                Text("Your BMI: " + String(String(format: "%.2f", BMI)))
                Spacer()
                Text("Your Ideal Weight: " + String(String(format: "%.2f", Ideal)))
                Spacer()
                
                if(result == "You are overweight")
                {
                    Text(result).foregroundStyle(.red)
                }
                if(result == "You need to control your weight")
                {
                    Text(result).foregroundStyle(.blue)
                }
                if(result == "You need to watch your weight gain")
                {
                    Text(result).foregroundStyle(.purple)
                }
                if(result == "You are in good shape")
                {
                    Text(result).foregroundStyle(.green)
                }
                if(result == "You need to eat more carb")
                {
                    Text(result).foregroundStyle(.yellow)
                }
            }
            }
    }

}

#Preview {
    part2View()
}


