//
//  ContentView.swift
//  First try
//
//  Created by mac on 2024/6/20.
//

import SwiftUI



struct ContentView: View {
    @State var playercard = "card13"
    @State var cpucard = "card7"
    @State var playerscore = 0
    @State var cpuscore = 0
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
                //Image("button")
                Button(action: {
                    button()
                }, label: {
                    Image("button")
                })
                

                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            
                            
                        Text(String(playerscore))
                            .font(.largeTitle)
                            .padding(.bottom,7.0)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                        Text(String(cpuscore))
                            .font(.largeTitle)
                            .padding(.bottom,7.0)
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                    
            }


        }

    }
    func button()
    {
        var playcardvalue = (String(Int.random(in: 2...14)))
        var cpucardvalue = (String(Int.random(in: 2...14)))
        playercard = "card"+playcardvalue
        cpucard = "card"+cpucardvalue
        if (playcardvalue>cpucardvalue)
        {
            playerscore+=1
        }else if(cpucardvalue>playcardvalue)
        {
            cpuscore+=1
        }
            
    }
}

#Preview {
    ContentView()
}
