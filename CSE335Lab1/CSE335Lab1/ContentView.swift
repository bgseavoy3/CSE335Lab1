//
//  ContentView.swift
//  CSE335Lab1
//
//  Created by bseavoy on 1/28/25.
//

import SwiftUI

struct ContentView: View {
    @State var weight: String = ""
    @State var height: String = ""
    @State var BMI: Double = 0.0
    @State var heightSq = 0.0
    @State var fHalf: Double = 0.0
    @State var firstHalf: Double = 0.0
    @State var secondHalf: Double = 0.0
    @State var Ideal: Double = 0.0
    @State var result:String = "test"
    var body: some View {
        VStack
        {
            Text("Ideal Weight")
            Spacer()
            HStack 
            {
                Text("Your Weight(in inches)")
                Spacer()
                Spacer()
                TextField("please enter your weight here", text: $weight)
            }
            HStack 
            {
                Text("Height(in inches): ")
                Spacer()
                Spacer()
                TextField("please enter your height here", text: $height)
            }
            Button("Calculate BMI & Ideal Weight", action: 
            {
                heightSq = (Double(height) ?? 0.0) * (Double(height) ?? 0.0)
                fHalf = (Double(weight) ?? 0.0) / heightSq
                    BMI = fHalf*703
                    firstHalf = 5 * BMI
                secondHalf = (BMI / 5)*((Double(height) ?? 0.0) - 60)
                    Ideal = firstHalf + secondHalf
            })
            Spacer()
            if(BMI != 0)
            {
                Text("Your BMI: " + String(BMI))
                Spacer()
                Text("Your Ideal Weight: " + String(Ideal))
                Spacer()
                Text(result)
            }
            }
    }

}

#Preview {
    ContentView()
}
