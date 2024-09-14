//
//  ContentView.swift
//  SDP_01
//
//  Created by Rodrigo Mazuca Ramirez on 23/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //background(Color.white);
            //BackgroundView(topC: Color.white, cenC: Color.white, botC: Color.black)
            VStack{
                HStack (spacing: 100){
                    Button(action: {}, label: {
                        ImgNavView(img: "play.square", width: 40, height: 40)
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ImgNavView(img: "calendar", width: 40, height: 40)
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ImgNavView(img: "list.bullet", width: 40, height: 40)
                    })
                }
                //.padding(.bottom)
                
                //ScrollView(.vertical) {
                
                VStack {
                    HStack (spacing: -20) {
                        Button(action: {}, label: {
                        MuscleGroupButView(backC: .gray, widthBack: 180, heightBack: 180, name: "pecho", widthImg: 150, heightImg: 150)
                        })
                        Button(action: {}, label: {
                        MuscleGroupButView(backC: .gray, widthBack: 180, heightBack: 180, name: "atras", widthImg: 150, heightImg: 150)
                        })
                    }
                               
                    HStack (spacing: -20) {
                        Button(action: {}, label: {
                        MuscleGroupButView(backC: .gray, widthBack: 180, heightBack: 180, name: "pierna", widthImg: 150, heightImg: 150)
                        })
                        Button(action: {}, label: {
                        MuscleGroupButView(backC: .gray, widthBack: 180, heightBack: 180, name: "biceps", widthImg: 150, heightImg: 150)
                        })
                    }
                    
                    HStack (spacing: -20) {
                        Button(action: {}, label: {
                            MuscleGroupButView(backC: .gray, widthBack: 180, heightBack: 180, name: "cardio", widthImg: 170, heightImg: 170)
                        })
                        Button(action: {}, label: {
                            MuscleGroupButView(backC: .gray, widthBack: 180, heightBack: 180, name: "corazon", widthImg: 150, heightImg: 150)
                        })
                    }
                    
                    /*HStack () {
                        /*RoundedRectangle(cornerRadius: 15)
                            .fill(Color.black)
                            .frame(width: 180, height: 180)
                            .padding(.horizontal)*/
                        /*Button(action: {}, label: {
                            Image("pecho")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150)
                                .colorMultiply(.black)
                        })*/
                            
                    }*/
                }
                
            }
        }
        Spacer()
        
        //HStack (spacing: 35) {
            Rectangle()
            .fill(.white)
                .frame(width: 400, height: 60)
                .ignoresSafeArea(.all)
                .overlay(
                    HStack (spacing: 30) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ImgNavView(img: "dumbbell", width: 45, height: 45)
                    //.padding()
                })
                Button(action: {}, label: {
                    ImgNavView(img: "cart", width: 45, height: 45)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ImgNavView(img: "house", width: 45, height: 45)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ImgNavView(img: "newspaper", width: 45, height: 45)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ImgNavView(img: "person", width: 45, height: 45)
                })
            }
                        //.ignoresSafeArea(.all)
        )
                //.ignoresSafeArea()
                //.padding(.bottom, 5)
                .padding(.top, 90)
    }
}

#Preview {
    ContentView()
}

struct BackgroundView: View {
    var topC: Color
    var cenC: Color
    var botC: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topC, cenC,botC]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ImgNavView: View {
    var img: String
    var width: Double
    var height: Double
    
    var body: some View {
        Image(systemName: img)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: width, height: height)
            .colorMultiply(.black)
    } 
}

struct MuscleGroupButView: View {
    var backC: Color
    var widthBack: Double
    var heightBack: Double
    var name: String
    var widthImg: Double
    var heightImg: Double
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(backC)
            .frame(width: widthBack, height: heightBack)
            .padding(.horizontal)
            .overlay(
            Image(name)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: widthImg, height: heightImg)
            .colorMultiply(.black)
            )
    }
}

