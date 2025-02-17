//
//  ContentView.swift
//  RoundLog
//
//  Created by 臼井智 on 2025/02/11.
//

import SwiftUI

struct RoundData: Identifiable {
    var id: UUID = UUID()
    var date: Date
    var course: String
    var roundType: String
    var score: Int
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    HStack {
                        VStack(alignment: .leading) {
                            
                            HStack {
                                Text("2025年1月2日(木) 07:47")
                            }
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                            Text("筑波東急GC")
                                .font(.title2)
                            HStack {
                                
                                Text("6214yds")
                                
                                Text("レギュラー白")
                                Text("ベントB")
                            }
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                        }
                        Spacer()
                        VStack(alignment:.trailing,spacing:0){
                            //                            Text("PAR 72")
                            //                                .font(.caption2)
                            //                                .foregroundStyle(.secondary)
                            HStack(alignment: .bottom, spacing: 3) {
                                Text("110")
                                    .font(.title2)
                                Text("(39)")
                                    .font(.title3)
                                    .foregroundStyle(.secondary)
                            }
                            
                            HStack(spacing: 3) {
                                VStack(alignment: .trailing) {
                                    Text("OUT")
                                    Text("IN")
                                }
                                .font(.caption)
                                VStack{
                                    Text("49")
                                    Text("61")
                                }
                                .font(.caption)
                                
                                VStack {
                                    Text("(18)")
                                    Text("(21)")
                                }
                                .font(.caption)
                                .foregroundStyle(.secondary)
                            }
                            
                        }
                    }
                    
                    
                    
                    HStack {
                        VStack(alignment: .leading) {
                            
                            HStack {
                                Text("2025年1月5日(日) 09:12")
                            }
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                            Text("新武蔵丘GC")
                                .font(.title2)
                            HStack {
                                
                                Text("5911yds")
                                
                                Text("レギュラー青")
                                Text("ベント")
                            }
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                        }
                        Spacer()
                        VStack(alignment:.trailing,spacing:0){
                            //                            Text("PAR 71")
                            //                                .font(.caption2)
                            //                                .foregroundStyle(.secondary)
                            HStack(alignment: .bottom, spacing: 3) {
                                Text("116")
                                    .font(.title2)
                                Text("(41)")
                                    .font(.title3)
                                    .foregroundStyle(.secondary)
                            }
                            
                            HStack(spacing: 3) {
                                VStack(alignment: .trailing) {
                                    Text("IN")
                                    Text("OUT")
                                }
                                .font(.caption)
                                VStack{
                                    Text("59")
                                    Text("57")
                                }
                                .font(.caption)
                                
                                VStack {
                                    Text("(23)")
                                    Text("(18)")
                                }
                                .font(.caption)
                                .foregroundStyle(.secondary)
                            }
                            
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .leading) {
                            
                            HStack {
                                Text("2025年1月13日(月) 10:07")
                            }
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                            Text("川崎国際生田緑地GC")
                                .font(.title2)
                            HStack {
                                
                                Text("5860yds")
                                
                                Text("レギュラー")
                                Text("ベント")
                            }
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                        }
                        Spacer()
                        VStack(alignment:.trailing,spacing:0){
                            //                            Text("PAR 72")
                            //                                .font(.caption2)
                            //                                .foregroundStyle(.secondary)
                            HStack(alignment: .bottom, spacing: 3) {
                                Text("107")
                                    .font(.title2)
                                Text("(39)")
                                    .font(.title3)
                                    .foregroundStyle(.secondary)
                            }
                            
                            HStack(spacing: 3) {
                                VStack(alignment: .trailing) {
                                    Text("IN")
                                    Text("OUT")
                                }
                                .font(.caption)
                                VStack{
                                    Text("50")
                                    Text("57")
                                }
                                .font(.caption)
                                
                                VStack {
                                    Text("(18)")
                                    Text("(21)")
                                }
                                .font(.caption)
                                .foregroundStyle(.secondary)
                            }
                            
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .leading) {
                            
                            HStack {
                                Text("2025年2月9日(日) 08:06")
                            }
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                            Text("赤とんぼCC")
                                .font(.title2)
                            HStack {
                                
                                Text("6218yds")
                                
                                Text("レギュラー青")
                                Text("ベント")
                            }
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                        }
                        Spacer()
                        VStack(alignment:.trailing,spacing:0){
                            //                            Text("PAR 72")
                            //                                .font(.caption2)
                            //                                .foregroundStyle(.secondary)
                            HStack(alignment: .bottom, spacing: 3) {
                                Text("108")
                                    .font(.title2)
                                Text("(37)")
                                    .font(.title3)
                                    .foregroundStyle(.secondary)
                            }
                            
                            HStack(spacing: 3) {
                                VStack(alignment: .trailing) {
                                    Text("IN")
                                    Text("OUT")
                                }
                                .font(.caption)
                                VStack{
                                    Text("55")
                                    Text("53")
                                }
                                .font(.caption)
                                
                                VStack {
                                    Text("(18)")
                                    Text("(19)")
                                }
                                .font(.caption)
                                .foregroundStyle(.secondary)
                            }
                            
                        }
                    }
                }
                .listStyle(.plain)
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            
            .navigationTitle("RoundLog")
        }
    }
}


#Preview {
    ContentView()
}
