//
//  DropdownMenuListRow.swift
//  DropdownMenu
//
//  Created by Abdelrahman Talaat on 28/11/2022.
//

import SwiftUI

struct DropdownMenuListRow: View {
	let option: DropdownMenuOption
	
	/// An action called when user select an action.
	let onSelectedAction: (_ option: DropdownMenuOption) -> Void
	
    var body: some View {
		Button(action: {
			self.onSelectedAction(option)
		}) {
			Text(option.option)
				.frame(maxWidth: .infinity, alignment: .leading)
		}
		.foregroundColor(.black)
		.padding(.vertical, 5)
		.padding(.horizontal)
    }
}

struct DropdownMenuListRow_Previews: PreviewProvider {
    static var previews: some View {
		DropdownMenuListRow(option: DropdownMenuOption.testSingleMonth, onSelectedAction: { _ in })
    }
}
