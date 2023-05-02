import SwiftUI

struct SplashScreenView: View {
    @StateObject var splashScreenViewModel = SplashScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Image("img_image18")
                                .resizable()
                                .frame(width: getRelativeWidth(188.0),
                                       height: getRelativeHeight(202.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(12.0))
                                .padding(.trailing, getRelativeWidth(9.0))
                            Text(StringConstants.kLblYourFood)
                                .font(FontScheme
                                    .kMontserratRomanBold(size: getRelativeHeight(40.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(209.0),
                                       height: getRelativeHeight(40.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(25.0))
                            Button(action: {
                                splashScreenViewModel.nextScreen = "WalkThroughOneView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblGetStarted)
                                        .font(FontScheme
                                            .kMontserratRomanMedium(size: getRelativeHeight(18.0)))
                                        .fontWeight(.medium)
                                        .padding(.trailing, getRelativeWidth(24.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(13.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(164.0),
                                               height: getRelativeHeight(44.0), alignment: .leading)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0)
                                                .fill(ColorConstants.Red500))
                                        .padding(.top, getRelativeHeight(134.0))
                                        .padding(.horizontal, getRelativeWidth(12.0))
                                }
                            })
                            .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(44.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Red500))
                            .padding(.top, getRelativeHeight(134.0))
                            .padding(.horizontal, getRelativeWidth(12.0))
                        }
                        .frame(width: getRelativeWidth(209.0), alignment: .topLeading)
                    }
                }
                .frame(width: getRelativeWidth(209.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.vertical, getRelativeHeight(145.0))
                .padding(.leading, getRelativeWidth(80.0))
                .padding(.trailing, getRelativeWidth(84.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: WalkThroughOneView(),
                                   tag: "WalkThroughOneView",
                                   selection: $splashScreenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            splashScreenViewModel.nextScreen = "WalkThroughOneView"
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
