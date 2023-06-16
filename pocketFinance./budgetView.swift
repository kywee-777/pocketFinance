//
//  budgetView.swift
//  pocketFinance.
//
//  Created by Kylie Nguyen on 6/16/23.
//

import SwiftUI

struct budgetView: View {
    @State private var facts: String = ""
    @State private var isButtonPressed: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("myGreen"), Color("sage"), Color("myYellow")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                Group{
                    Text("Sample Budget")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("myGreen"))
                } .padding()
                    .background(Rectangle() .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(radius: 20))
                    .padding()
                
                Pie(pieData: PieModel.sample)
                    .padding()
                
                Button(action: {
                    isButtonPressed.toggle()
                }) {
                    Text("Sample Budget Breakdown")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(Color("myGreen"))
                        .cornerRadius(10)
                }
                .padding()
                    .background(Rectangle() .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(radius: 20))
                    .padding()
                
                if isButtonPressed {
                    Text("40% - Food, 25% - Clothes, 20% - Savings, 15% - Travel. This follows the 50-30-20 rule. Good job!")
                        .multilineTextAlignment(.center)
                        .font(.body)
                }
                
            }
            .padding()
        }
    }
}

struct budgetView_Previews: PreviewProvider {
    static var previews: some View {
        budgetView()
    }
}

struct PieModel: Identifiable {
    let id = UUID()
    var value: Double
    var color: Color
    var name: String
}

extension PieModel {
    static var sample: [PieModel] {
        [
            PieModel(value: 40, color: Color.blue, name: "Food"),
            PieModel(value: 25, color: Color.yellow, name: "Clothes"),
            PieModel(value: 20, color: Color.red, name: "Savings"),
            PieModel(value: 15, color: Color.purple, name: "Travel")
        ]
    }
}

struct Pie: View {
    var pieData: [PieModel]
    
    @State private var animate = false
    
    var body: some View {
        VStack{
            VStack{
                ZStack {
                    ForEach(pieData) { item in
                        PieSlice(startAngle: startAngle(for: item), endAngle: endAngle(for: item))
                            .fill(item.color)
                        
                        
                    }
                }
                    VStack(alignment: .trailing, spacing: 10) {
                        ForEach(pieData) { item in
                            HStack {
                                Rectangle()
                                    .foregroundColor(item.color)
                                    .frame(width: 10, height: 10)
                                Text(item.name)
                                    .font(.subheadline)
                                    .multilineTextAlignment(.trailing)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                            }
                        }
                    }
                    .frame(maxWidth: 80)
                    .padding(.trailing, 20)
            }
        }
    }
        private func startAngle(for item: PieModel) -> Angle {
            var startAngle = Angle.degrees(0)
            
            for data in pieData {
                if data.id == item.id {
                    break
                }
                startAngle += Angle.degrees(data.value / totalValue) * 360
            }
            
            return startAngle
        }
        
        private func endAngle(for item: PieModel) -> Angle {
            startAngle(for: item) + Angle.degrees(item.value / totalValue) * 360
        }
        
        private var totalValue: Double {
            pieData.reduce(0) { $0 + $1.value }
        }
        
        struct PieSlice: Shape {
            var startAngle: Angle
            var endAngle: Angle
            
            func path(in rect: CGRect) -> Path {
                var path = Path()
                let center = CGPoint(x: rect.midX, y: rect.midY)
                let radius = min(rect.width, rect.height) / 2
                
                path.move(to: center)
                path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
                path.closeSubpath()
                
                return path
            }
        }
    }
