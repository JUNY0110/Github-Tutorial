//
//  fjeiowa.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/21.
//

//import SwiftUI
//
//struct StepModel: Identifiable, Hashable {
//
//    let id =  UUID()
//    let stepNumber: Int
//    let title: String
//}
//
//struct StepperView: View {
//    @State var currentState = 1
//
//    let steps = [
//        StepModel(stepNumber: 1, title: "One"),
//        StepModel(stepNumber: 2, title: "Two"),
//        StepModel(stepNumber: 3, title: "Three"),
//        StepModel(stepNumber: 4, title: "Four"),
//        StepModel(stepNumber: 5, title: "‍Five")
//    ]
//
//    var body: some View {
//
//
//
//
//        StepperView(steps: steps, currentStep: $currentState, direction: .leftToRight)
//            .frame(width: 300, height: 100)
//            .padding(.top, 10)
//
//        VStack{
//
//            Stepper("하루에 몇시간을 자나요?", value: $currentState, in: 1...24)
//            Text("\(currentState) hours")
//        }
//    }
//}
//struct CustomStepper : View {
//    @Binding var value: Double
//    var textColor: Color
//    var colorName: String
//    var step = 1.0/255
//
//    var body: some View {
//            HStack {
//                Text(colorName + " \(Int(value * 255.0))")
//                    .font(.system(.caption, design: .rounded))
//                    .foregroundColor(textColor)
//                Spacer()
//
//                Button(action: {
//                    if self.value > 0 {
//                        self.value -= self.step
//                        self.feedback()
//                    }
//                }, label: {
//                    Image(systemName: "minus.square")
//                        .foregroundColor(value > 0 ? textColor : Color.gray)
//                })
//
//                Button(action: {
//                    if self.value < 1 {
//                        self.value += self.step
//                        self.feedback()
//                    }
//                }, label: {
//                    Image(systemName: "plus.square")
//                        .foregroundColor(value < 1 ? textColor : Color.gray)
//                })
//        }
//    }
//
//    func feedback() {
//        let generator = UIImpactFeedbackGenerator(style: .light)
//        generator.impactOccurred()
//    }
//}
//
//struct fjeiowa_Previews: PreviewProvider {
//    static var previews: some View {
//        StepperView()
//    }
//}
