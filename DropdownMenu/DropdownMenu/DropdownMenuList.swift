//
//  DropdownMenuList.swift
//  DropdownMenu
//
//  Created by Abdelrahman Talaat on 28/11/2022.
//

import SwiftUI

struct DropdownMenuList: View {
	/// The drop-down menu list options
	let options: [DropdownMenuOption]
	
	/// An action called when user select an action.
	let onSelectedAction: (_ option: DropdownMenuOption) -> Void
	
    var body: some View {
		ScrollView {
			LazyVStack(alignment: .leading, spacing: 2) {
				ForEach(options) { option in
					DropdownMenuListRow(option: option, onSelectedAction: self.onSelectedAction)
				}
			}
		}
		// Check first if number of options * 32 (Option height - CONSTANT - YOU
		// MAY CHANGE IT) is greater than 300 (MAX HEIGHT - ALSO, YOU MAY CHANGE
		// IT), if true, then make it options list scroll, if not set frame only
		// for available options.
		.frame(height: CGFloat(self.options.count * 32) > 300
			   ? 300
			   : CGFloat(self.options.count * 32)
		)
		.padding(.vertical, 5)
		.overlay {
			RoundedRectangle(cornerRadius: 5)
				.stroke(.gray, lineWidth: 2)
		}
    }
}

struct DropdownMenuList_Previews: PreviewProvider {
    static var previews: some View {
		DropdownMenuList(options: DropdownMenuOption.testAllMonths, onSelectedAction: { _ in })
    }
}
