import SwiftUI

struct WalkThroughFourView: View {
    @StateObject var walkThroughFourViewModel = WalkThroughFourViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Image("img_image16")
                                .resizable()
                                .frame(width: getRelativeWidth(245.0),
                                       height: getRelativeHeight(205.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.horizontal, getRelativeWidth(30.0))
                            VStack {
                                Text(StringConstants.kLblRating)
                                    .font(FontScheme
                                        .kMontserratRomanMedium(size: getRelativeHeight(22.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(70.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.horizontal, getRelativeWidth(17.0))
                                Text(StringConstants.kMsgHelpUsImprove)
                                    .font(FontScheme
                                        .kMontserratRomanRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(313.0),
                                           height: getRelativeHeight(40.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(22.0))
                                    .padding(.leading, getRelativeWidth(17.0))
                                    .padding(.trailing, getRelativeWidth(13.0))
                                PageIndicator(numPages: 4, currentPage: .constant(1),
                                              selectedColor: ColorConstants.Green600,
                                              unSelectedColor: ColorConstants.Gray400,
                                              spacing: 12.0)
                                HStack {
                                    Button(action: {
                                        walkThroughFourViewModel.nextScreen = "WalkThroughThreeView"
                                    }, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblBack2)
                                                .font(FontScheme
                                                    .kMontserratRomanMedium(size: getRelativeHeight(18.0)))
                                                .fontWeight(.medium)
                                                .padding(.horizontal, getRelativeWidth(30.0))
                                                .padding(.vertical, getRelativeHeight(13.0))
                                                .foregroundColor(ColorConstants.Green600)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(164.0),
                                                       height: getRelativeHeight(44.0),
                                                       alignment: .leading)
                                                .overlay(RoundedCorners(topLeft: 12.0,
                                                                        topRight: 12.0,
                                                                        bottomLeft: 12.0,
                                                                        bottomRight: 12.0)
                                                        .stroke(ColorConstants.Green600,
                                                                lineWidth: 1))
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0,
                                                                           bottomLeft: 12.0,
                                                                           bottomRight: 12.0)
                                                        .fill(Color.clear.opacity(0.7)))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(164.0),
                                           height: getRelativeHeight(44.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                            bottomLeft: 12.0, bottomRight: 12.0)
                                            .stroke(ColorConstants.Green600,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    Spacer()
                                    Button(action: {
                                        walkThroughFourViewModel.nextScreen = "IPhone14ProOneView"
                                    }, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblGetStarted2)
                                                .font(FontScheme
                                                    .kMontserratRomanMedium(size: getRelativeHeight(18.0)))
                                                .fontWeight(.medium)
                                                .padding(.horizontal, getRelativeWidth(30.0))
                                                .padding(.vertical, getRelativeHeight(13.0))
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(164.0),
                                                       height: getRelativeHeight(44.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0,
                                                                           bottomLeft: 12.0,
                                                                           bottomRight: 12.0)
                                                        .fill(ColorConstants.Green600))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(164.0),
                                           height: getRelativeHeight(44.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.Green600))
                                }
                                .frame(width: getRelativeWidth(344.0),
                                       height: getRelativeHeight(44.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(203.0))
                            }
                            .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(405.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(64.0))
                        }
                        .frame(width: getRelativeWidth(344.0), alignment: .topLeading)
                    }
                }
                .frame(width: getRelativeWidth(344.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(103.0))
                .padding(.bottom, getRelativeHeight(102.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: WalkThroughThreeView(),
                                   tag: "WalkThroughThreeView",
                                   selection: $walkThroughFourViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone14ProOneView(),
                                   tag: "IPhone14ProOneView",
                                   selection: $walkThroughFourViewModel.nextScreen,
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
    }
}

struct WalkThroughFourView_Previews: PreviewProvider {
    static var previews: some View {
        WalkThroughFourView()
    }
}
