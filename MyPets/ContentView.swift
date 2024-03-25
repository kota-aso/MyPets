//
//  ContentView.swift
//  MyPets
//
//  Created by Kota Aso on 2024/03/25.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var weight = ""
    @State var height = ""
    @State var age = ""
    @State var isShowInfoView = false


    var body: some View {
        VStack {
            VStack {
                Text("あなたのペット情報を入力してください。")
                TextField("名前", text: $name)
                TextField("体重", text: $weight)
                TextField("体長", text: $height)
                TextField("年齢", text: $age)
                Button("決定") {
                    isShowInfoView = true
                }
                .sheet(isPresented: $isShowInfoView) {
                    InfoView(name: $name, weight: $weight, height: $height, age: $age)
                }

            }
        }
        .textFieldStyle(.roundedBorder)
        .padding()

    }
}

struct InfoView: View {
    @Binding var name: String
    @Binding var weight: String
    @Binding var height: String
    @Binding var age: String

    var body: some View {
    VStack {
        Text("あなたのペット情報")
        Text("名前：\(name)")
        Text("体重：\(weight)")
        Text("体長：\(height)")
        Text("年齢：\(age)")
    }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
