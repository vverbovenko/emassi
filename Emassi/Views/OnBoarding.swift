//
//  OnBoarding.swift
//  Emassi
//
//  Created by MacBook Pro on 18.01.2022.
//

import SwiftUI
import UIKit

struct OnBoarding: View {

    @State var showSheetView = false
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(red: 0.412, green: 0.631, blue: 0.675, alpha: 1.0)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
        }
    var body: some View {
        NavigationView {
            pages()
        }.sheet(isPresented: $showSheetView) {
            Location()
        }.animation(.none)
    }
    
}



struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}


struct pages: View {
    var body: some View {
        VStack {
            
                TabView {
                    ForEach(Slide) { page in
                        GeometryReader { g in
                            VStack(spacing:0.0) {
                                Image(page.image)
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.horizontal, 40)
                                Text(page.title)
                                    .font(.title).foregroundColor(Color(red: 0.412, green: 0.631, blue: 0.675, opacity: 1.0)).bold()
                                Text(page.descrip)
                                    .foregroundColor(Color(red: 0.412, green: 0.631, blue: 0.675, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            }
                            .opacity(Double(g.frame(in : . global).minX)/200+1)
                        }
                    }
                }
                .edgesIgnoringSafeArea(.top)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
            NavigationLink(
                destination: Login().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                label: {
                    Text("Войти")
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(width: 230, height: 40, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 1)))
                        .cornerRadius(10)
                })
            
            NavigationLink(
                destination: SignUp().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                label: {
                    Text("Зарегистрироваться")
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(width: 230, height: 40, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 1)))
                        .cornerRadius(10)
                })
            Spacer()
            
        } .padding(.bottom, 30)
            .padding(.horizontal, 10)
        
//        .navigationBarItems(trailing:
//                                NavigationLink(
//                                    destination: Location().navigationBarBackButtonHidden(true).navigationBarHidden(true),
//                                    label: {
//                                        Image(systemName: "arrow.right")
//                                            .font(Font.system(.title3))
//                                            .foregroundColor(Color(#colorLiteral(red: 0.412, green: 0.631, blue: 0.675, alpha: 1)))
//                                    })
//        )
//        .navigationBarBackButtonHidden(true)
    }
}
