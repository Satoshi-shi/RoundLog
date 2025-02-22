//
//  ContentView.swift
//  RoundLog
//
//  Created by 臼井智 on 2025/02/11.
//

import SwiftUI

struct RoundData: Identifiable {
    var id: UUID = UUID()
    var playDate: String  //プレー日とスタート時間
    var playCourseName: String  //ゴルフ場名称
    var totalDistance: Int //総距離
    var teePosition: String //ティー
    var greenType: String //グリーン
    var firstHalfCourseName: String //前半コース名
    var secondHalfCourseName: String //後半コース名
//    var totalScore: Int //トータルスコア
//    var totalPutts: Int //トータルパット数
    var firstHalfScore: Int //前半スコア
    var firstHalfPutts: Int //前半パット
    var secondHalfSocre: Int //後半スコア
    var secondHalfPutts: Int //後半パット
    func calcTotalScore() -> Int {
        return firstHalfScore + secondHalfSocre
    } //トータルスコア
    func calcTotalPutts() -> Int {
        return firstHalfPutts + secondHalfPutts
    } //トータルパット
}




struct ContentView: View {

// 複数データ
    var rounds:[RoundData] = [
        RoundData(playDate: "2025年2月15日(土) 09:37", playCourseName: "オリムピックCC", totalDistance: 6117, teePosition: "レギュラー", greenType: "ベント", firstHalfCourseName: "ハナミズキ", secondHalfCourseName: "リンドウ", firstHalfScore: 58, firstHalfPutts: 18, secondHalfSocre: 63, secondHalfPutts: 23),
        RoundData(playDate: "2025年2月9日(日) 08:06" , playCourseName: "赤とんぼCC", totalDistance:6214, teePosition: "レギュラー青", greenType: "ベント", firstHalfCourseName: "IN", secondHalfCourseName: "OUT", firstHalfScore: 55, firstHalfPutts: 18, secondHalfSocre: 53, secondHalfPutts: 19),
        RoundData(playDate: "2025年1月13日(月) 10:07", playCourseName: "川崎国際生田緑地GC", totalDistance: 5860, teePosition: "レギュラー", greenType: "ベント", firstHalfCourseName: "IN", secondHalfCourseName: "OUT", firstHalfScore: 50, firstHalfPutts: 18, secondHalfSocre: 57, secondHalfPutts: 21),
        RoundData(playDate: "2025年1月5日(日) 09:12", playCourseName: "新武蔵丘GC", totalDistance: 5911, teePosition: "レギュラー青", greenType: "ベント", firstHalfCourseName: "IN", secondHalfCourseName: "OUT", firstHalfScore: 59, firstHalfPutts: 23, secondHalfSocre: 57, secondHalfPutts: 18),
        RoundData(playDate: "2025年1月2日(木) 07:47", playCourseName: "筑波東急GC", totalDistance: 6214, teePosition: "レギュラー白", greenType: "ベントB", firstHalfCourseName: "OUT", secondHalfCourseName: "IN", firstHalfScore: 49, firstHalfPutts: 18, secondHalfSocre: 61, secondHalfPutts: 21),
        
        
        RoundData(playDate: "2025年2月15日(土) 09:37", playCourseName: "オリムピックCC", totalDistance: 6117, teePosition: "レギュラー", greenType: "ベント", firstHalfCourseName: "ハナミズキ", secondHalfCourseName: "リンドウ", firstHalfScore: 58, firstHalfPutts: 18, secondHalfSocre: 63, secondHalfPutts: 23),
        RoundData(playDate: "2025年2月9日(日) 08:06" , playCourseName: "赤とんぼCC", totalDistance:6214, teePosition: "レギュラー青", greenType: "ベント", firstHalfCourseName: "IN", secondHalfCourseName: "OUT", firstHalfScore: 55, firstHalfPutts: 18, secondHalfSocre: 53, secondHalfPutts: 19),
        RoundData(playDate: "2025年1月13日(月) 10:07", playCourseName: "川崎国際生田緑地GC", totalDistance: 5860, teePosition: "レギュラー", greenType: "ベント", firstHalfCourseName: "IN", secondHalfCourseName: "OUT", firstHalfScore: 50, firstHalfPutts: 18, secondHalfSocre: 57, secondHalfPutts: 21),
        RoundData(playDate: "2025年1月5日(日) 09:12", playCourseName: "新武蔵丘GC", totalDistance: 5911, teePosition: "レギュラー青", greenType: "ベント", firstHalfCourseName: "IN", secondHalfCourseName: "OUT", firstHalfScore: 59, firstHalfPutts: 23, secondHalfSocre: 57, secondHalfPutts: 18),
        RoundData(playDate: "2025年1月2日(木) 07:47", playCourseName: "筑波東急GC", totalDistance: 6214, teePosition: "レギュラー白", greenType: "ベントB", firstHalfCourseName: "OUT", secondHalfCourseName: "IN", firstHalfScore: 49, firstHalfPutts: 18, secondHalfSocre: 61, secondHalfPutts: 21)
    ]

 
    /*以下テストデータ１件
    let round:RoundData = RoundData(date: Date() , playCourseName: "鳩山CC", totalDistance: 6000, teePosition: "レギュラー白", greenType: "ベント", firstHalfCourseName: "OUT", secondHalfCourseName: "IN", firstHalfScore: 48, firstHalfPutts: 18, secondHalfSocre: 51, secondHalfPutts: 19)
    */

    var body: some View {
        NavigationStack {
            
                        
            VStack {
                List {
                    ForEach(rounds) { round in
//                    Text(rounds.count.description + " rounds")　//ラウンド件数表示
                    
                    HStack {
                        
                        VStack(alignment: .leading) {
                            
                            HStack {
                                Text(round.playDate)
                            }
                            .font(.caption)
                            .foregroundStyle(.secondary)
                            
                            Text(round.playCourseName)
                                .font(.title2)
                            
                            HStack(spacing:1) {
                                
                                Text("\(round.totalDistance)yds")
                                Text("|")
                                    .foregroundStyle(.black)
                                Text("\(round.teePosition)")
                                Text("|")
                                    .foregroundStyle(.black)
                                Text("\(round.greenType)")
                                Text("|")
                                    .foregroundStyle(.black)
                                Text("Par72")
                            }
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                        }
                        Spacer()
                        VStack(alignment:.trailing,spacing:1){
                            //                            Text("PAR 72")
                            //                                .font(.caption2)
                            //                                .foregroundStyle(.secondary)
                            HStack(alignment: .bottom, spacing: 3) {
                                Text("\(round.calcTotalScore())")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Text("(\(round.calcTotalPutts()))")
                                    .font(.title2)
                                    .fontWeight(.regular)
                                    .foregroundStyle(.secondary)
                            }
                            
                            HStack(spacing: 3) {
                                VStack(alignment: .trailing) {
                                    Text("\(round.firstHalfCourseName)")
                                    Text("\(round.secondHalfCourseName)")
                                }
                                .font(.caption)
                                .fontWeight(.light)
                                VStack{
                                    Text("\(round.firstHalfScore)")
                                    Text("\(round.secondHalfSocre)")

                                }
                                .font(.caption)
                                .fontWeight(.bold)
                                
                                VStack {
                                    Text("(\(round.firstHalfPutts))")
                                    Text("(\(round.secondHalfPutts))")
                                }
                                .font(.caption)
                                .fontWeight(.regular)
                                .foregroundStyle(.secondary)
                            }
                            
                        }
                    }
                    
                }
                    
//                    HStack {
//                        
//                        VStack(alignment: .leading) {
//                            
//                            HStack {
//                                Text("2025年1月2日(木) 07:47")
//                            }
//                            .font(.subheadline)
//                            .foregroundStyle(.secondary)
//                            Text("筑波東急GC")
//                                .font(.title2)
//                            HStack {
//                                
//                                Text("6214yds")
//                                
//                                Text("レギュラー白")
//                                Text("ベントB")
//                            }
//                            .font(.caption2)
//                            .foregroundStyle(.secondary)
//                        }
//                        Spacer()
//                        VStack(alignment:.trailing,spacing:1){
//                            //                            Text("PAR 72")
//                            //                                .font(.caption2)
//                            //                                .foregroundStyle(.secondary)
//                            HStack(alignment: .bottom, spacing: 3) {
//                                Text("110")
//                                    .font(.title2)
//                                    .fontWeight(.bold)
//                                Text("(39)")
//                                    .font(.title2)
//                                    .fontWeight(.regular)
//                                    .foregroundStyle(.secondary)
//                            }
//                            
//                            HStack(spacing: 3) {
//                                VStack(alignment: .trailing) {
//                                    Text("OUT")
//                                    Text("IN")
//                                }
//                                .font(.caption)
//                                .fontWeight(.light)
//                                VStack{
//                                    Text("3,214y")
//                                    Text("3,000y")
//                                }
//                                .font(.caption2)
//                                .foregroundStyle(.secondary)
//                                
//                                VStack{
//                                    Text("49")
//                                    Text("61")
//                                }
//                                .font(.caption)
//                                .fontWeight(.bold)
//                                
//                                VStack {
//                                    Text("(18)")
//                                    Text("(21)")
//                                }
//                                .font(.caption)
//                                .fontWeight(.regular)
//                                .foregroundStyle(.secondary)
//                            }
//                            
//                        }
//                    }
             
//                    HStack {
//                        VStack(alignment: .leading) {
//                            
//                            HStack {
//                                Text("2025年1月5日(日) 09:12")
//                            }
//                            .font(.subheadline)
//                            .foregroundStyle(.secondary)
//                            Text("新武蔵丘GC")
//                                .font(.title2)
//                            HStack {
//                                
//                                Text("5911yds")
//                                
//                                Text("レギュラー青")
//                                Text("ベント")
//                            }
//                            .font(.caption2)
//                            .foregroundStyle(.secondary)
//                        }
//                        Spacer()
//                        VStack(alignment:.trailing,spacing:0){
//                            //                            Text("PAR 71")
//                            //                                .font(.caption2)
//                            //                                .foregroundStyle(.secondary)
//                            HStack(alignment: .bottom, spacing: 3) {
//                                Text("116")
//                                    .font(.title2)
//                                Text("(41)")
//                                    .font(.title3)
//                                    .foregroundStyle(.secondary)
//                            }
//                            
//                            HStack(spacing: 3) {
//                                VStack(alignment: .trailing) {
//                                    Text("IN")
//                                    Text("OUT")
//                                }
//                                .font(.caption)
//                                VStack{
//                                    Text("59")
//                                    Text("57")
//                                }
//                                .font(.caption)
//                                
//                                VStack {
//                                    Text("(23)")
//                                    Text("(18)")
//                                }
//                                .font(.caption)
//                                .foregroundStyle(.secondary)
//                                VStack{
//                                    Text("3,214y")
//                                    Text("3,000y")
//                                }
//                                .font(.caption2)
//                                .foregroundStyle(.secondary)
//                            }
//                            
//                        }
//                    }
                    
//                    HStack {
//                        VStack(alignment: .leading) {
//                            
//                            HStack {
//                                Text("2025年1月13日(月) 10:07")
//                            }
//                            .font(.subheadline)
//                            .foregroundStyle(.secondary)
//                            Text("川崎国際生田緑地GC")
//                                .font(.title2)
//                            HStack {
//                                
//                                Text("5860yds")
//                                
//                                Text("レギュラー")
//                                Text("ベント")
//                            }
//                            .font(.caption2)
//                            .foregroundStyle(.secondary)
//                        }
//                        Spacer()
//                        VStack(alignment:.trailing,spacing:0){
//                            //                            Text("PAR 72")
//                            //                                .font(.caption2)
//                            //                                .foregroundStyle(.secondary)
//                            HStack(alignment: .bottom, spacing: 3) {
//                                Text("107")
//                                    .font(.title2)
//                                Text("(39)")
//                                    .font(.title3)
//                                    .foregroundStyle(.secondary)
//                            }
//                            
//                            HStack(spacing: 3) {
//                                VStack(alignment: .trailing) {
//                                    Text("IN")
//                                    Text("OUT")
//                                }
//                                .font(.caption)
//                                VStack{
//                                    Text("50")
//                                    Text("57")
//                                }
//                                .font(.caption)
//                                
//                                VStack {
//                                    Text("(18)")
//                                    Text("(21)")
//                                }
//                                .font(.caption)
//                                .foregroundStyle(.secondary)
//                                VStack{
//                                    Text("3,214y")
//                                    Text("3,000y")
//                                }
//                                .font(.caption2)
////                                .foregroundStyle(.secondary)
//                            }
//                            
//                        }
//                    }
                    
//                    HStack {
//                        VStack(alignment: .leading) {
//                            
//                            HStack {
//                                Text("2025年2月9日(日) 08:06")
//                            }
//                            .font(.subheadline)
//                            .foregroundStyle(.secondary)
//                            Text("オリムピックナショナルGC EAST")
//                                .font(.title2)
//                            HStack {
//                                
//                                Text("6218yds")
//                                
//                                Text("レギュラー青")
//                                Text("ベント")
//                            }
//                            .font(.caption2)
//                            .foregroundStyle(.secondary)
//                        }
//                        Spacer()
//                        VStack(alignment:.trailing,spacing:0){
//                            //                            Text("PAR 72")
//                            //                                .font(.caption2)
//                            //                                .foregroundStyle(.secondary)
//                            HStack(alignment: .bottom, spacing: 3) {
//                                Text("108")
//                                    .font(.title2)
//                                Text("(37)")
//                                    .font(.title3)
//                                    .foregroundStyle(.secondary)
//                            }
//                            
//                            HStack(spacing: 3) {
//                                VStack(alignment: .trailing) {
//                                    Text("IN")
//                                    Text("OUT")
//                                }
//                                .font(.caption)
//                                VStack{
//                                    Text("55")
//                                    Text("53")
//                                }
//                                .font(.caption)
//                                
//                                VStack {
//                                    Text("(18)")
//                                    Text("(19)")
//                                }
//                                .font(.caption)
//                                .foregroundStyle(.secondary)
//                            }
//                            
//                        }
//                    }
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
