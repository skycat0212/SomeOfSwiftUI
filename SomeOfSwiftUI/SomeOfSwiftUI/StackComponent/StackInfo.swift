//
//  StackInfo.swift
//  SomeOfSwiftUI
//
//  Created by 김수진 on 2022/04/29.
//

import SwiftUI

enum StackInfo: String {
    case HStack
    case VStack
    case ZStack
    case LazyHStack
    case LazyVStack

    var explanation: String {
        switch self {
        case .HStack:
            return "\(self)은 자식뷰를 수평 방향으로 정렬하여 보여주는 컨테이너 뷰입니다."
        case .VStack:
            return "\(self)은 자식뷰를 수직 방향으로 정렬하여 보여주는 컨테이너 뷰입니다."
        case .ZStack:
            return "\(self)은 자식뷰를 두 축에 정렬하여 보여주는 컨테이너 뷰입니다."
        case .LazyHStack:
            return "\(self)은 필요한 만큼만 자식뷰를 생성하여 수평 방향으로 정렬하여 보여주는 컨테이너 뷰입니다."
        case .LazyVStack:
            return "\(self)은 필요한 만큼만 자식뷰를 생성하여 수직 방향으로 정렬하여 보여주는 컨테이너 뷰입니다."
        }
    }

    // TODO: exampleView 내부에서 사용됨. ViewBuilder 때문에 exampleView 내부 코드에 넣을 수가 없는데 StackInfo enum의 property로 두기에는 StackInfo의 관심사가 아님. 개선 방법 찾기.
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss:SS"
        return formatter
    }

    /// 해당 스택을 사용하면 어떻게 표현되는지 나타내는 뷰
    @ViewBuilder
    var exampleView: some View {
        let colors: [Color] = [.red, .orange, .yellow, .green, .blue]

        switch self {
        case .HStack:
            SwiftUI.HStack(spacing: 0) {
                ForEach(0..<colors.count, id: \.self) {
                    Text("Item \($0 + 1)")
                        .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing: 5))
                        .background(colors[$0])
                }
            }

        case .VStack:

            SwiftUI.VStack(spacing: 0) {
                ForEach(0..<colors.count, id: \.self) {
                    Text("Item \($0 + 1)")
                        .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing: 5))
                        .background(colors[$0])
                }
            }

        case .ZStack:
            SwiftUI.ZStack {
                ForEach(0..<colors.count, id: \.self) {
                    Rectangle()
                        .fill(colors[$0])
                        .frame(width: 100, height: 100)
                        .offset(x: CGFloat($0) * 10.0,
                                y: CGFloat($0) * 10.0)
                }
            }
            .frame(width: 140, height: 140, alignment: .topLeading)

        case .LazyHStack:
            SwiftUI.VStack(spacing: 30) {
                Text("스크롤 뷰와 함께 적용한 예시입니다.")
                ScrollView(.horizontal) {
                    SwiftUI.LazyHStack(spacing: 10) {
                        ForEach(1...100, id: \.self) {
                            Text("""
                                     Column \($0)
                                     CreatedTime
                                     \(dateFormatter.string(from: Date()))
                                     """)
                            .font(.footnote)
                            .padding(.bottom, 10)
                        }
                    }
                }
            }

        case .LazyVStack:
            SwiftUI.VStack(spacing: 30) {
                Text("스크롤 뷰와 함께 적용한 예시입니다.")
                ScrollView(.vertical) {
                    SwiftUI.LazyVStack(spacing: 0) {
                        ForEach(1...100, id: \.self) {
                            Text("Column \($0), CreatedTime: \(dateFormatter.string(from: Date()))")
                                .font(.footnote)
                        }
                    }
                }.frame(height: 300)
            }

        }

    }

    /// 해당 스택을 사용해서 어떤 것을 표현할 수 있는지 활용 사례를 나타내는 뷰
    var caseView: some View {

        switch self {
        case .HStack:
            @State var a: String = "홍길동"
            return AnyView(
                SwiftUI.HStack(spacing: 10) {
                    Text("이름 :")
                        .padding(5)
                        .border(.red, width: 1)
                    TextField("", text: $a)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(5)
                        .border(.red, width: 1)
                    Button("중복확인", action: {})
                        .padding(5)
                        .border(.red, width: 1)
                }
            )

        case .VStack:
            @State var b: String = "홍길동"
            return AnyView(
                SwiftUI.VStack(spacing: 10) {

                    SwiftUI.HStack(spacing: 10) {
                        Text("이메일 :")
                            .padding(5)
                        TextField("", text: $b)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(5)
                        Button("중복확인", action: {})
                            .padding(5)
                    }
                    .padding(5)
                    .border(.red, width: 1)

                    SwiftUI.HStack(spacing: 10) {
                        Text("이름 :")
                            .padding(5)
                        TextField("", text: $b)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(5)
                    }
                    .padding(5)
                    .border(.red, width: 1)

                    SwiftUI.HStack(spacing: 10) {
                        Text("닉네임 :")
                            .padding(5)
                        TextField("", text: $b)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(5)
                        Button("중복확인", action: {})
                            .padding(5)
                    }
                    .padding(5)
                    .border(.red, width: 1)

                }
            )

        default:
            return AnyView(
                Text("")
            )
        }
    }

}
