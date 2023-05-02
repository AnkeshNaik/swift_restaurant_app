import SwiftUI

struct IPhone14ProOneView: View {
    @StateObject var iPhone14ProOneViewModel = IPhone14ProOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ZStack(alignment: .center) {
                                Image("img_pexelschanwal")
                                    .resizable()
                                    .frame(width: getRelativeWidth(359.0),
                                           height: getRelativeHeight(228.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0))
                                HStack {
                                    HStack {
                                        Image("img_vector")
                                            .resizable()
                                            .frame(width: getRelativeWidth(19.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kMsgFindWhatYouW)
                                            .font(FontScheme
                                                .kPoppinsLight(size: getRelativeHeight(12.0)))
                                            .fontWeight(.light)
                                            .foregroundColor(ColorConstants.Black9007c)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(127.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(20.0))
                                    }
                                    .onTapGesture {
                                        iPhone14ProOneViewModel.nextScreen = "SearchView"
                                    }
                                    .frame(width: getRelativeWidth(166.0),
                                           height: getRelativeHeight(21.0), alignment: .bottom)
                                    .padding(.leading, getRelativeWidth(4.0))
                                    Image("img_category")
                                        .resizable()
                                        .frame(width: getRelativeWidth(24.0),
                                               height: getRelativeHeight(21.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(158.0))
                                        .padding(.trailing, getRelativeWidth(4.0))
                                }
                                .frame(width: getRelativeWidth(358.0),
                                       height: getRelativeHeight(42.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 13.0, topRight: 13.0,
                                                           bottomLeft: 13.0, bottomRight: 13.0)
                                        .fill(ColorConstants.Orange400))
                                .padding(.bottom, getRelativeHeight(186.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(228.0),
                                   alignment: .center)
                            .padding(.leading, getRelativeWidth(5.0))
                            .padding(.trailing, getRelativeWidth(11.0))
                            HStack {
                                HStack {
                                    Text(StringConstants.kLblBreakfast)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Bluegray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(66.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                    Text(StringConstants.kLblLunch)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Bluegray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(40.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(70.0))
                                }
                                .frame(width: getRelativeWidth(177.0),
                                       height: getRelativeHeight(14.0), alignment: .center)
                                Spacer()
                                Text(StringConstants.kLblDinner)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(45.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(333.0), height: getRelativeHeight(14.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(85.0))
                            .padding(.leading, getRelativeWidth(23.0))
                            .padding(.trailing, getRelativeWidth(19.0))
                            ZStack(alignment: .center) {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(98.0),
                                           height: getRelativeHeight(295.0),
                                           alignment: .topTrailing)
                                    .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                            bottomLeft: 25.0, bottomRight: 25.0)
                                            .stroke(ColorConstants.WhiteA700,
                                                    lineWidth: 5))
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Black90023, radius: 9, x: 0, y: 0)
                                    .padding(.bottom, getRelativeHeight(42.0))
                                    .padding(.leading, getRelativeWidth(277.9))
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(98.0),
                                           height: getRelativeHeight(295.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                            bottomLeft: 25.0, bottomRight: 25.0)
                                            .stroke(ColorConstants.WhiteA700,
                                                    lineWidth: 5))
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Black90023, radius: 9, x: 0, y: 0)
                                    .padding(.bottom, getRelativeHeight(42.0))
                                    .padding(.leading, getRelativeWidth(133.59))
                                    .padding(.trailing, getRelativeWidth(144.41))
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(88.0),
                                           height: getRelativeHeight(295.0), alignment: .topLeading)
                                    .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                            bottomLeft: 25.0, bottomRight: 25.0)
                                            .stroke(ColorConstants.WhiteA700,
                                                    lineWidth: 5))
                                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                               bottomLeft: 25.0, bottomRight: 25.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Black90023, radius: 9, x: 0, y: 0)
                                    .padding(.bottom, getRelativeHeight(42.0))
                                    .padding(.trailing, getRelativeWidth(278.73))
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                ColumnellipseeighteenCell(ellipseeighteenClick: {
                                                    iPhone14ProOneViewModel
                                                        .nextScreen = "IPhone14TwoView"
                                                })
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(347.0), alignment: .center)
                                .padding(.bottom, getRelativeHeight(51.0))
                                .padding(.leading, getRelativeWidth(16.27))
                                .padding(.trailing, getRelativeWidth(12.73))
                                Image("img_plussbutton")
                                    .resizable()
                                    .frame(width: getRelativeWidth(298.0),
                                           height: getRelativeHeight(221.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(115.89))
                                    .padding(.trailing, getRelativeWidth(78.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(376.0), height: getRelativeHeight(337.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(32.0))
                        }
                        .frame(width: getRelativeWidth(376.0), alignment: .topLeading)
                    }
                }
                .frame(width: getRelativeWidth(376.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.vertical, getRelativeHeight(85.0))
                .padding(.leading, getRelativeWidth(6.0))
                .padding(.trailing, getRelativeWidth(10.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SearchView(),
                                   tag: "SearchView",
                                   selection: $iPhone14ProOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone14OneView(),
                                   tag: "IPhone14OneView",
                                   selection: $iPhone14ProOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone14ThreeView(),
                                   tag: "IPhone14ThreeView",
                                   selection: $iPhone14ProOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone14TwoView(),
                                   tag: "IPhone14TwoView",
                                   selection: $iPhone14ProOneViewModel.nextScreen,
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

struct IPhone14ProOneView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone14ProOneView()
    }
}
