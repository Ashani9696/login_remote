//
//  DashboardView.swift
//  login
//
//  Created by malindu pabasara on 2023-09-14.
//

import SwiftUI
import SwiftUICharts

struct DashboardView: View {
    var body: some View {
        VStack {
                    Text("Your Financial Status")
                        .font(.title)
                    
                    BarChartView(data: ChartData(values: [
                        ("Income", 500),
                        ("Expenses", 300),
                        ("Savings", 200)
                    ]), title: "Monthly Summary", legend: "In Rupees")
                    .padding()
                }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
