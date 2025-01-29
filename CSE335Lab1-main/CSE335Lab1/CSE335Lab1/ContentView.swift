//
//  ContentView.swift
//  CSE335Lab1
//
//  Created by bseavoy on 1/28/25.
//

import SwiftUI

struct ContentView: View 
{
    var body: some View
    {
        NavigationStack
        {
            VStack
            {
                NavigationLink("Part 1")
                {
                    part1View()
                }.buttonStyle(.bordered)
                
                Spacer()
                
                NavigationLink("Part 2")
                {
                    part2View()
                }.buttonStyle(.bordered)
            }
        }
    }

}

#Preview {
    ContentView()
}
