//
//  BaseView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/04/28.
//

import SwiftUI

struct BaseView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Components")) {
                    // List Items - rows
                    NavigationLink("Stack") {
                        StackComponentInfoView()
                    }
                }
            }
            .navigationTitle("Some of SwiftUI")
            .listStyle(.grouped)
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
