//
//  ContentView.swift
//  DropdownMenu
//
//  Created by Abdelrahman Talaat on 28/11/2022.
//

import SwiftUI

struct ContentView: View {
	@State private var birthMonth: DropdownMenuOption? = nil
	
    var body: some View {
        VStack {
            DropdownMenu(
				selectedOption: self.$birthMonth,
				placeholder: "Select your birth month",
				options: DropdownMenuOption.testAllMonths
			)
			
			Text(birthMonth?.option ?? "")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
