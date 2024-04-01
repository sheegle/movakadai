//
//  ContentView.swift
//  kadaiM20240402
//
//  Created by 渡邊 翔矢 on 2024/03/31.
//

import SwiftUI


struct ContentView: View {
    
    @State private var selectionNumber = 0
    let time = Array(0...23)
    let startTime = 18
    let endTime = 3
    
    var body: some View {
        VStack {
            Text("選択した時刻: \(selectionNumber)")
            Text(isTimeInRange(selectionNumber, from: startTime, to: endTime) ? "指定した時間の範囲内に含まれています" : "指定した時間の範囲内に含まれていません")
            Picker("時刻を選択して下さい",selection: $selectionNumber) {
                ForEach(0 ..< time.count) { index in
                    Text("\(self.time[index])")
                }
            }
            .pickerStyle(WheelPickerStyle())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
