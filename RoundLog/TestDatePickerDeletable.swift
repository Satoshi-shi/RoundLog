//
//  TestDatePickerDeletable.swift
//  RoundLog
//
//  Created by 臼井智 on 2025/02/18.
//

import SwiftUI

struct TestDatePickerDeletable: View {
    @State var theDate = Date()
    
    var dateFormat1: DateFormatter {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.dateStyle = .full
        df.timeStyle = .short
        return df
    }
    
    var dateFormat2: DateFormatter {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.calendar = Calendar(identifier: .japanese)
        df.dateFormat = "令和yy(YYYY)年M月dd日(E) HH時mm分"
        return df
    }
    
    var dateFormat3: DateFormatter {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.dateFormat = "yyyy年M月d日(E) HH:mm"
        return df
    }
    
    var body: some View {
        DatePicker(selection: $theDate, label: { Text("日時") })
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .padding(50)
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Text("\(theDate)")
        Text(dateFormat1.string(from: theDate))
        Text(dateFormat2.string(from: theDate))
        Text(dateFormat3.string(from: theDate))
    }
}

#Preview {
    TestDatePickerDeletable()
}
