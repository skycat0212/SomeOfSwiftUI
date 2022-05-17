//
//  StackCaseUseExampleView.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/05/02.
//

import SwiftUI

struct StackCaseUseExampleView: View {
    let type: StackType
    @State private var tempName: String = "홍길동"
    @State private var tempEmail: String = "gildong@example.com"
    @State private var tempNickname: String = "길동쓰"

    var body: some View {
        switch type {
        case .HStack:
            HStack(spacing: 10) {
                Text("이름 :")
                    .padding(5)
                    .border(.red, width: 1)
                TextField("", text: $tempName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(5)
                    .border(.red, width: 1)
                Button("중복확인", action: {})
                    .padding(5)
                    .border(.red, width: 1)
            }
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            .border(.blue, width: 2)
            .frame(minHeight: 100)

        case .VStack:
            VStack(spacing: 10) {

                HStack(spacing: 10) {
                    Text("이메일 :")
                        .padding(5)
                    TextField("email", text: $tempEmail)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(5)
                    Button("중복확인", action: {})
                        .padding(5)
                }
                .padding(5)
                .border(.red, width: 1)

                HStack(spacing: 10) {
                    Text("이름 :")
                        .padding(5)
                    TextField("", text: $tempName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(5)
                }
                .padding(5)
                .border(.red, width: 1)

                HStack(spacing: 10) {
                    Text("닉네임 :")
                        .padding(5)
                    TextField("", text: $tempNickname)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(5)
                    Button("중복확인", action: {})
                        .padding(5)
                }
                .padding(5)
                .border(.red, width: 1)
            }
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            .border(.blue, width: 2)
            .frame(minHeight: 200)

        default:
            EmptyView()
        }
    }
}

struct StackCaseUseExampleView_Previews: PreviewProvider {
    static var previews: some View {
        StackCaseUseExampleView(type: .VStack)
    }
}
