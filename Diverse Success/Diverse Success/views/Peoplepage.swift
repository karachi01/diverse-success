//
//  Peoplepage.swift
//  Diverse Success
//
//  Created by Karachi Onwuanibe on 3/26/24.
//

import SwiftUI

struct ProfileInfo {
    var title: String
    var biography: String
    var achievement: String
}

struct Peoplepage: View {
    @State private var showingSheetForKatherine = false
    @State private var showingSheetForMark = false
    @State private var showingSheetForMae = false
    @State private var showingSheetForUrsula = false
    @State private var showingSheetForLonnie = false
    @State private var showingSheetForAnnie = false
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            
            VStack {
                Text("These are the profiles of successful minority figures in the tech industry, highlighting their achievements, career paths, and contributions to inspire and motivate others. Tap on the images to learn more and have fun!")
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .padding()
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .lineLimit(5)
                    .minimumScaleFactor(0.5)
                
                
                Spacer()
                
                // First row of images
                HStack {
                    Spacer()
                    Button(action: {
                        showingSheetForKatherine = true
                    }) {
                        VStack {
                            Image("katherine")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300, height: 300)
                                .cornerRadius(15)
                            Text("Katherine Johnson")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .sheet(isPresented: $showingSheetForKatherine) {
                        SheetView(profileInfo: ProfileInfo(title: "Katherine Johnson", biography: "Katherine Johnson was an American mathematician whose calculations orbital mechanics as a NASA employee were critical to the success of the first and subsequent U.S. crewed spaceflights. (Source - Wikipedia).", achievement: "Achievements & Contributions: Katherine's precise calculations were crucial for the success of the first actual moon landing and early U.S space missions at NASA. she pioneered complex mathematical techniques in space exploration. She has also broken barriers as an African American woman and inspired future generations to pursue careers in STEM. In 2015, she received the Presidential Medal of Freedome for her contributions to space exploration and promoting diversity in STEM."))
                            .font(.title)
                    }
                    
                    Spacer()
                    Button(action: {
                        showingSheetForMark = true
                    }) {
                        VStack {
                            Image("Mark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300, height: 300)
                                .cornerRadius(15)
                            Text("Mark Dean")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .sheet(isPresented: $showingSheetForMark) {
                        SheetView(profileInfo: ProfileInfo(title: "Mark Dean", biography: "Mark Dean is an inventor and computer engineer who co-created the IBM personal computer and led the development of the ISA bus.", achievement: "Achievements evments & Contributions: He developed the ISA bus, which were key components to early computers in the 1980s. He also led a design team for making a one-gigahertz computer processor chip. He holds up to 9 patents related to IBM computers and his work related to modern computers. "))
                            .font(.title)
                    }
                    Spacer()
                    Button(action: {
                        showingSheetForMae = true
                    }) {
                        VStack {
                            Image("mae")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300, height: 300)
                                .cornerRadius(15)
                            Text("Mae Jemison")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .sheet(isPresented: $showingSheetForMae) {
                        SheetView(profileInfo: ProfileInfo(title: "Mae Jemison", biography: "Mae Jemison is an American engineer, physician and the first African American woman to travel in space as a NASA astronaut aboard the Space Shuttle Endeavour in 1992.(Source - Wikipedia)", achievement: "Achievements & Contributions: She became the first African American woman to travel to space, breaking all barriers and stereotypes. She also created an international space camp for middle and high schoolers and a program in Los Angeles public schools to help educate them about science. She has also received several awards and honorary doctorates. She is quite known for her advocacy about diversity and inclusion in STEM fields."))
                            .font(.title)
                    }
                    Spacer()
                }
                
                // Second row of images
                Spacer()
                Spacer()
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        showingSheetForUrsula = true
                    }) {
                        VStack {
                            Image("ursula")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .frame(width: 300, height: 300)
                                .cornerRadius(15)
                            Text("Ursula Burns")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .sheet(isPresented: $showingSheetForUrsula) {
                        SheetView(profileInfo: ProfileInfo(title: "Ursula Burns", biography: "Ursula Burns is the first black woman to lead s Fortune 500 company, serving as CEO of Xerox from 2009 to 2016.", achievement: "Achievements & Contributions: She was the first female to accede to the position of CEO of a Fortune 500 company in succession after another female. During her tenure as CEO of Xerox, she transfromed the company by shifting its focus from products and services and oversaw the acquisition of Affiliated Computer Services in 2010. Burns held various other appointments, including helping to lead the Science, Technology, Engineering, and Mathematics (STEM) Education Coalition, and serving as a member of the President's Export Council. In 2020, she published her memoir, Where You Are Is Not Who You Are."))
                            .font(.title)
                    }
                    Spacer()
                    Button(action: {
                        showingSheetForLonnie = true
                    }) {
                        VStack {
                            Image("lonnie")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .frame(width: 300, height: 300)
                                .cornerRadius(15)
                            Text("Lonnie Johnson")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .sheet(isPresented: $showingSheetForLonnie) {
                        SheetView(profileInfo: ProfileInfo(title: "Lonnie Johnson", biography: "Lonnie Johnson is an American engineer and inventor known for creating the Super Soaker water gun and holding over 100 patents. After years of tinkering and pitching his device, Johnson finally sold it to the Larami Corporation in 1989, and it became a massive commercial success. Today, hundreds of millions of Super Soakers have been sold, and the toy was added to the National Toy Hall of Fame in 2015. (Source - Wikipedia)", achievement: "Achievements & Contributions: Johnson invented the popular toy water gun, which was initially developed as an environmentally friendly heat pump that used water instead of Freon. He sold the device to the Larami Corporation in 1989, and it became a massive commercial success. Johnson worked as a scientist at NASA, where he developed his skills and expertise in engineering and inventing. Johnson served as an officer in the US Air Force, where he continued to pursue his passion for inventing and engineering."))
                            .font(.title)
                    }
                    Spacer()
                    Button(action: {
                        showingSheetForAnnie = true
                    }) {
                        VStack {
                            Image("annie")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .frame(width: 300, height: 300)
                                .cornerRadius(15)
                            Text("Annie")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .sheet(isPresented: $showingSheetForAnnie) {
                        SheetView(profileInfo: ProfileInfo(title: "Additional 1", biography: "Biography for Additional 1", achievement: "Achievement for Additional 1"))
                            .font(.title)
                    }
                    Spacer()
                }
                Spacer()
                Spacer()
            }
            .navigationBarTitle("") // Remove the title of the navigation bar
            //.navigationBarHidden(true) // Hide the navigation bar
        }
    }
    
    
    // this is for the popover sheet
    struct SheetView: View {
        var profileInfo: ProfileInfo
        
        var body: some View {
            VStack {
                Text(profileInfo.title)
                    .font(.title)
                    .padding()
                Spacer()
                
                // Biography text
                Text(profileInfo.biography)
                    .padding()
                Spacer()
                Text(profileInfo.achievement)
                    .padding()
                Spacer()
                Spacer()
                Spacer()
            }
        }
    }
    
    struct Peoplepage_Previews: PreviewProvider {
        static var previews: some View {
            Peoplepage()
        }
    }
    
}
