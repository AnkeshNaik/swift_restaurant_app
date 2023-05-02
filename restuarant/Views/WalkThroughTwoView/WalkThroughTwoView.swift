import SwiftUI

struct WalkThroughTwoView: View {
    @StateObject var walkThroughTwoViewModel = WalkThroughTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Image("img_image12")
                                .resizable()
                                .frame(width: getRelativeWidth(221.0),
                                       height: getRelativeHeight(209.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.horizontal, getRelativeWidth(61.0))
                            VStack {
                                Text(StringConstants.kMsgSpendTimeWith)
                                    .font(FontScheme
                                        .kMontserratRomanMedium(size: getRelativeHeight(22.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(309.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                Text(StringConstants.kMsgExperienceASp)
                                    .font(FontScheme
                                        .kMontserratRomanRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(326.0),
                                           height: getRelativeHeight(70.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(22.0))
                                    .padding(.horizontal, getRelativeWidth(8.0))
                                PageIndicator(numPages: 4, currentPage: .constant(1),
                                              selectedColor: ColorConstants.Green600,
                                              unSelectedColor: ColorConstants.Gray400,
                                              spacing: 12.0)
                                HStack {
                                    Button(action: {
                                        walkThroughTwoViewModel.nextScreen = "WalkThroughOneView"
                                    }, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblBack)
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
                                        walkThroughTwoViewModel.nextScreen = "WalkThroughThreeView"
                                    }, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblNext)
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
                                                        .fill(ColorConstants.Orange700))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(164.0),
                                           height: getRelativeHeight(44.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.Orange700))
                                }
                                .frame(width: getRelativeWidth(344.0),
                                       height: getRelativeHeight(44.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(203.0))
                            }
                            .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(405.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(69.0))
                        }
                        .frame(width: getRelativeWidth(344.0), alignment: .topLeading)
                    }
                }
                .frame(width: getRelativeWidth(344.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.vertical, getRelativeHeight(93.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: WalkThroughOneView(),
                                   tag: "WalkThroughOneView",
                                   selection: $walkThroughTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: WalkThroughThreeView(),
                                   tag: "WalkThroughThreeView",
                                   selection: $walkThroughTwoViewModel.nextScreen,
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

struct WalkThroughTwoView_Previews: PreviewProvider {
    static var previews: some View {
        WalkThroughTwoView()
    }
}
