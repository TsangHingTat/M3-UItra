//
//  trainView.swift
//  M3 UItra
//
//  Created by HingTatTsang on 17/8/2022.
//

import SwiftUI

struct trainView: View {
    @State var view1 = false
    @State var view2 = false
    @State var view3 = false
    var body: some View {
        Button(action: {
            view3 = true
        }) {
            Rectangle()
                .frame(width: 340, height: 50)
                .foregroundColor(.purple)
                .cornerRadius(15)
                .padding()
                .overlay() {
                    ZStack {
                        HStack {
                            Text("可選項目")
                                .foregroundColor(.black)
                                .font(.title)
                                .bold()
                        }
                        HStack {
                            Spacer()
                            Image(systemName: "line.3.horizontal")
                                .resizable()
                                .foregroundColor(.black)
                                .frame(width: 25, height: 25)
                                .padding()
                            Spacer()
                                .frame(width: 15, height: 50)
                        }
                    }
                }
        }
        Button(action: {
            view1 = true
        }) {
            Image("push")
                .resizable()
                .frame(width: 340, height: 240)
                .foregroundColor(.pink)
                .cornerRadius(15)
                .padding()
                .overlay() {
                    ZStack {
                        VStack {
                            Spacer()
                            HStack {
                                Text("掌上壓")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .bold()
                                    .padding()
                                Spacer()
                            }
                        }
                        
                    }
                }
        }
        Button(action: {
            view2 = true
        }) {
            Image("pull")
                .resizable()
                .frame(width: 340, height: 240)
                .foregroundColor(.pink)
                .cornerRadius(15)
                .padding()
                .overlay() {
                    ZStack {
                        VStack {
                            Spacer()
                            HStack {
                                Text("仰臥起坐")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .bold()
                                    .padding()
                                Spacer()
                            }
                        }
                        
                    }
                }
        }
        .fullScreenCover(isPresented: $view1) {
            NavigationView {
                aiView()
                    .navigationTitle("掌上壓")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar() {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                view1 = false
                            }, label: {
                                Text("退出")
                            })
                        }
                    }
            }
        }
        .fullScreenCover(isPresented: $view2) {
            NavigationView {
                aiView()
                    .navigationTitle("仰臥起坐")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar() {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                view2 = false
                            }, label: {
                                Text("退出")
                            })
                        }
                    }
            }
        }
        .sheet(isPresented: $view3) {
            errorView()
        }
        
    }
}


struct trainView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            trainView()
        }
    }
}