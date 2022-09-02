//
//  ContentView.swift
//  Shared
//
//  Created by Alexander Nanda and Alicia Deng on 6/8/21.
//

import SwiftUI
import UIKit
import AVFoundation
    


@available(iOS 14.0, *)

struct ContentView: View{
    //@State var presented=false
    @State var selectedIndex = 0 //this changes where first tab is selected
    //default first tab is zero; ex: 0=home, 1=edit etc (placeholders)
    //change to 1 after!!
    let icons = [//from sf symbols
        "info.circle",
        "house",
        "gear"]
    let buttonImg = [
        "cat"
        ]
    let image1:UIImage? = UIImage(named: "burger.jpg")
    let image2:UIImage? = UIImage(named: "hotdog.jpg")
    let eatVisual:UIImage? = UIImage(named: "eat.png")
    let helpVisual:UIImage? = UIImage(named: "help.png")
    let musicVisual:UIImage? = UIImage(named: "music.png")
    let noVisual:UIImage? = UIImage(named: "no.png")
    let playVisual:UIImage? = UIImage(named: "play.png")
    let toiletVisual:UIImage? = UIImage(named: "toilet.png")
    let waterVisual:UIImage? = UIImage(named: "water.png")
    let yesVisual:UIImage? = UIImage(named: "yes.png")
    let appIcon:UIImage? = UIImage(named: "appIcon.jpg")
    

    @State var player: AVAudioPlayer?
    
    @available(iOS 14.0, *)
    func playSound(fileName: String) {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "wav") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            guard let player = player else { return }
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    var body: some View{
            VStack{
                //Content (this is where stuff goes)
                //ZStack{
                    switch selectedIndex{
                    
                    case 1:
                        NavigationView{
                            VStack{
                                Image(uiImage: appIcon!)
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .font(.system(
                                            size: 150, weight: .regular, design: .default))
                                    .padding()
                                    .cornerRadius(15)
                                Text("Future developments and updates to come!")
                            }
                            .navigationTitle("Settings")
                        }
                    case 0:
                        //NavigationView{
                                VStack{
                                    ScrollView(){
                                        VStack{
                                           // ForEach(0..<4){index in //index is a var
                                                //ScrollView(.horizontal, showsIndicators: false, content: {
                                                HStack{
                                                        Button(action: {
                                                            playSound(fileName: "eat")
                                                        }, label: {
                                                            Image(uiImage: eatVisual!)
                                                                .resizable()
                                                                .frame(width: 150, height: 150)
                                                                .shadow(radius: 10)
                                                                .cornerRadius(15)
                                                                .padding()
                                                        })
                                                        Button(action: {
                                                            playSound(fileName: "water")
                                                        }, label: {
                                                            Image(uiImage: waterVisual!)
                                                                .resizable()
                                                                .frame(width: 150, height: 150)
                                                                .shadow(radius: 10)
                                                                .cornerRadius(15)
                                                                .padding()
                                                        })
                                                    }
                                               
                                                HStack{
                                                        Button(action: {
                                                            playSound(fileName: "music")
                                                        }, label: {
                                                            Image(uiImage: musicVisual!)
                                                                .resizable()
                                                                .frame(width: 150, height: 150)
                                                                .shadow(radius: 10)
                                                                .cornerRadius(15)
                                                                .padding()
                                                        })
                                                        Button(action: {
                                                            playSound(fileName: "play")
                                                        }, label: {
                                                            Image(uiImage: playVisual!)
                                                                .resizable()
                                                                .frame(width: 150, height: 150)
                                                                .shadow(radius: 10)
                                                                .cornerRadius(15)
                                                                .padding()
                                                        })
                                                    }
                                                HStack{
                                                        Button(action: {
                                                            playSound(fileName: "toilet")
                                                        }, label: {
                                                            Image(uiImage: toiletVisual!)
                                                                .resizable()
                                                                .frame(width: 150, height: 150)
                                                                .shadow(radius: 10)
                                                                .cornerRadius(15)
                                                                .padding()
                                                        })
                                                        Button(action: {
                                                            playSound(fileName: "help")
                                                        }, label: {
                                                            Image(uiImage: helpVisual!)
                                                                .resizable()
                                                                .frame(width: 150, height: 150)
                                                                .shadow(radius: 10)
                                                                .cornerRadius(15)
                                                                .padding()
                                                        })
                                                    }
                                                HStack{
                                                        Button(action: {
                                                            playSound(fileName: "yes")
                                                        }, label: {
                                                            Image(uiImage: yesVisual!)
                                                                .resizable()
                                                                .frame(width: 150, height: 150)
                                                                .shadow(radius: 10)
                                                                .cornerRadius(15)
                                                                .padding()
                                                        })
                                                        Button(action: {
                                                            playSound(fileName: "no")
                                                        }, label: {
                                                            Image(uiImage: noVisual!)
                                                                .resizable()
                                                                .frame(width: 150, height: 150)
                                                                .shadow(radius: 10)
                                                                .cornerRadius(15)
                                                                .padding()
                                                        })
                                                    }
                                                //}
                                                // })
                                                
                                            }
                                        }
                                        
                                    //eat, drink, restroom, play, more, please
                                    //.padding()
                                    //Text("Select An Icon To Say The Action Aloud")
                                
                                }
                               // .navigationBarTitle("Home", displayMode: .inline)
                        //}
                           
                        
                    default:
                        NavigationView{
                            VStack{
                                ScrollView(){
                                    Image(uiImage: appIcon!)
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .font(.system(
                                                size: 70, weight: .regular, design: .default))
                                        .padding()
                                        .cornerRadius(15)
                                       // .padding()
                                Text("Talk2Me was created and designed by highschool juniors, Alexander Nanda and Alicia Deng, as part of the Congressional App Challenge 2021.")
                                        .padding()
                                        .font(Font.system(size: 24, design: .default))
                                Text("The idea for this project was inspired by Alicia's older sister, Isabella. Isabella was born with microcephaly–– a condition where a baby's head is much smaller than normal due to abnormal brain development. Growing up, Isabella was nonverbal and communicated through the means of images, physical augmented alternative communication devices, and occasionally even sign language. Now, as technology becomes more and more important and integrated into daily life, Alex and Alicia wanted to make a free communication (AAC) app for people like Isabella.")
                                        .padding()
                                        .font(Font.system(size: 24, design: .default))
                                Text("Talk2Me is currently only compatible with iPhone models. For more information or inquiries, please email nandaa23@columbusacademy.org or denga23@columbusacademy.org.")
                                        .padding()
                                        .font(Font.system(size: 24, design: .default))
                                //Text("")
                                }
                            }
                            .navigationTitle("Info")
                        }
                    
                }
                
                
                Divider()
                HStack{
                    ForEach(0..<3, id: \.self) {number in
                        Spacer()
                        Button(action: {
                            //4 specifci stuff 2 a button you can ust do:
                            //if number==2{ajkdakjsld}
                            //else { and but self.sepelcledted index etc etc etc
                        
                            self.selectedIndex = number - 1
                        }, label: {
                            
                            if(number==1){
                                Image(systemName:self.icons[number])
                                    .font(.system(
                                            size: 18, weight: .regular, design: .default))
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(15)
                                    
                            }
                            else{
                                Image(systemName:self.icons[number])
                                    .font(.system(
                                            size: 15, weight: .regular, design: .default))
                                    .foregroundColor(self.selectedIndex == number - 1 ? .black: Color(UIColor(hue: 359/360, saturation: 0/100, brightness: 35/100, alpha: 1.0)))
                                    .padding()
                                    .background(self.selectedIndex == number ? Color(UIColor(hue: 359/360, saturation: 0/100, brightness: 90/100, alpha: 1.0)): Color(UIColor(hue: 359/360, saturation: 0/100, brightness: 90/100, alpha: 1.0)))
                                    .cornerRadius(15)
                            }
                        })
                        Spacer()
                    }
                }
                }
            }
    }


@available(iOS 14.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




