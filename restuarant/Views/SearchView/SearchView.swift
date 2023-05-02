import SwiftUI

struct SearchView: View {
    @StateObject var searchViewModel = SearchViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        HStack {
                            HStack {
                                HStack {
                                    Spacer()
                                    Image("img_search")
                                        .resizable()
                                        .frame(width: getRelativeWidth(15.0),
                                               height: getRelativeWidth(15.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(8.0))
                                    TextField(StringConstants.kLblSearch,
                                              text: $searchViewModel.searchfield)
                                        .font(FontScheme
                                            .kSourceSansProRegular(size: getRelativeHeight(17.0)))
                                        .foregroundColor(ColorConstants.Gray80099)
                                        .padding()
                                    Image("img_microphone")
                                        .resizable()
                                        .frame(width: getRelativeWidth(11.0),
                                               height: getRelativeHeight(16.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(10.0))
                                        .padding(.bottom, getRelativeHeight(9.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.trailing, getRelativeWidth(8.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(276.0),
                                       height: getRelativeHeight(36.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(ColorConstants.Gray6001e))
                                Spacer()
                                Text(StringConstants.kLblCancel)
                                    .font(FontScheme
                                        .kMontserratRomanRegular(size: getRelativeHeight(17.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Green600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(56.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(9.0))
                                    .onTapGesture {
                                        searchViewModel.nextScreen = "IPhone14ProOneView"
                                    }
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(36.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(36.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(36.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            ZStack(alignment: .topLeading) {
                                Divider()
                                    .frame(width: getRelativeWidth(375.0),
                                           height: getRelativeHeight(1.0), alignment: .topLeading)
                                    .background(ColorConstants.Gray300)
                                    .padding(.bottom, getRelativeHeight(85.0))
                                Text(StringConstants.kLblPopular)
                                    .font(FontScheme
                                        .kSourceSansProRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .padding(.leading, getRelativeWidth(15.0))
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .foregroundColor(ColorConstants.Gray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(375.0),
                                           height: getRelativeHeight(44.0), alignment: .topLeading)
                                    .background(ColorConstants.WhiteA700)
                                    .padding(.bottom, getRelativeHeight(42.0))
                                Text(StringConstants.kLblEatFast)
                                    .font(FontScheme
                                        .kMontserratRomanRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .padding(.horizontal, getRelativeWidth(15.0))
                                    .padding(.bottom, getRelativeHeight(13.0))
                                    .padding(.top, getRelativeHeight(14.0))
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(90.0),
                                           height: getRelativeHeight(44.0), alignment: .center)
                                    .background(ColorConstants.Gray200)
                                    .padding(.top, getRelativeHeight(42.0))
                                    .padding(.leading, getRelativeWidth(145.0))
                                    .padding(.trailing, getRelativeWidth(140.0))
                                Text(StringConstants.kLblVegetarian)
                                    .font(FontScheme
                                        .kMontserratRomanRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .padding(.horizontal, getRelativeWidth(10.0))
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(108.0),
                                           height: getRelativeHeight(44.0), alignment: .center)
                                    .background(ColorConstants.Gray200)
                                    .padding(.top, getRelativeHeight(42.0))
                                    .padding(.trailing, getRelativeWidth(253.0))
                                Text(StringConstants.kLblChicken)
                                    .font(FontScheme
                                        .kMontserratRomanRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .padding(.horizontal, getRelativeWidth(13.0))
                                    .padding(.bottom, getRelativeHeight(13.0))
                                    .padding(.top, getRelativeHeight(14.0))
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(93.0),
                                           height: getRelativeHeight(44.0), alignment: .center)
                                    .background(ColorConstants.Gray200)
                                    .padding(.top, getRelativeHeight(42.0))
                                    .padding(.leading, getRelativeWidth(245.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(86.0),
                                   alignment: .leading)
                            HStack {
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblBurger)
                                            .font(FontScheme
                                                .kMontserratRomanRegular(size: getRelativeHeight(16.0)))
                                            .fontWeight(.regular)
                                            .padding(.trailing, getRelativeWidth(10.0))
                                            .padding(.leading, getRelativeWidth(16.0))
                                            .padding(.vertical, getRelativeHeight(14.0))
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(83.0),
                                                   height: getRelativeHeight(44.0),
                                                   alignment: .topLeading)
                                            .background(RoundedCorners(topLeft: 12.0,
                                                                       topRight: 12.0,
                                                                       bottomLeft: 12.0,
                                                                       bottomRight: 12.0)
                                                    .fill(ColorConstants.Gray200))
                                    }
                                })
                                .frame(width: getRelativeWidth(83.0),
                                       height: getRelativeHeight(44.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray200))
                                Spacer()
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblHotPot)
                                            .font(FontScheme
                                                .kMontserratRomanRegular(size: getRelativeHeight(16.0)))
                                            .fontWeight(.regular)
                                            .padding(.trailing, getRelativeWidth(15.0))
                                            .padding(.leading, getRelativeWidth(12.0))
                                            .padding(.vertical, getRelativeHeight(14.0))
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(89.0),
                                                   height: getRelativeHeight(44.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 12.0,
                                                                       topRight: 12.0,
                                                                       bottomLeft: 12.0,
                                                                       bottomRight: 12.0)
                                                    .fill(ColorConstants.Gray200))
                                            .padding(.leading, getRelativeWidth(24.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(89.0),
                                       height: getRelativeHeight(44.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray200))
                                .padding(.leading, getRelativeWidth(24.0))
                            }
                            .frame(width: getRelativeWidth(196.0), height: getRelativeHeight(44.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(14.0))
                            .padding(.horizontal, getRelativeWidth(17.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(8.0), alignment: .leading)
                                .background(ColorConstants.Gray300)
                                .padding(.top, getRelativeHeight(12.0))
                            Text(StringConstants.kLblRecentSearch)
                                .font(FontScheme
                                    .kSourceSansProRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .padding(.leading, getRelativeWidth(15.0))
                                .padding(.bottom, getRelativeHeight(13.0))
                                .padding(.top, getRelativeHeight(14.0))
                                .foregroundColor(ColorConstants.Gray700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(44.0), alignment: .leading)
                                .background(ColorConstants.WhiteA700)
                            ZStack(alignment: .bottomLeading) {
                                HStack {
                                    Text(StringConstants.kMsgFrenchOnionC)
                                        .font(FontScheme
                                            .kMontserratRomanRegular(size: getRelativeHeight(16.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(179.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(47.0))
                                        .onTapGesture {
                                            searchViewModel.nextScreen = "IPhone14OneView"
                                        }
                                    Image("img_closebuttonli")
                                        .resizable()
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeWidth(22.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(106.0))
                                        .padding(.trailing, getRelativeWidth(19.0))
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(44.0), alignment: .topLeading)
                                .background(ColorConstants.WhiteA700)
                                .padding(.bottom, getRelativeHeight(44.0))
                                HStack {
                                    Text(StringConstants.kMsgHealthyBreakfa)
                                        .font(FontScheme
                                            .kMontserratRomanRegular(size: getRelativeHeight(16.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(139.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(47.0))
                                        .onTapGesture {
                                            searchViewModel.nextScreen = "IPhone14TwoView"
                                        }
                                    Image("img_closebuttonli")
                                        .resizable()
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeWidth(22.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(146.0))
                                        .padding(.trailing, getRelativeWidth(19.0))
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(44.0), alignment: .bottomLeading)
                                .background(ColorConstants.WhiteA700)
                                .padding(.top, getRelativeHeight(44.0))
                                Image("img_group")
                                    .resizable()
                                    .frame(width: getRelativeWidth(14.0),
                                           height: getRelativeHeight(15.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(41.32))
                                    .padding(.trailing, getRelativeWidth(344.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(88.0),
                                   alignment: .leading)
                            HStack {
                                HStack {
                                    Image("img_group")
                                        .resizable()
                                        .frame(width: getRelativeWidth(14.0),
                                               height: getRelativeHeight(15.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblFishSalad2)
                                        .font(FontScheme
                                            .kMontserratRomanRegular(size: getRelativeHeight(16.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(77.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(16.0))
                                        .onTapGesture {
                                            searchViewModel.nextScreen = "IPhone14ThreeView"
                                        }
                                }
                                .frame(width: getRelativeWidth(107.0),
                                       height: getRelativeHeight(30.0), alignment: .top)
                                .padding(.vertical, getRelativeHeight(1.0))
                                .padding(.leading, getRelativeWidth(17.0))
                                Spacer()
                                Image("img_closebuttonli")
                                    .resizable()
                                    .frame(width: getRelativeWidth(22.0),
                                           height: getRelativeWidth(22.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(11.0))
                                    .padding(.bottom, getRelativeHeight(10.0))
                                    .padding(.trailing, getRelativeWidth(19.0))
                            }
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(44.0),
                                   alignment: .leading)
                            .background(ColorConstants.WhiteA700)
                            Image("img_group")
                                .resizable()
                                .frame(width: getRelativeWidth(14.0),
                                       height: getRelativeHeight(15.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(4.0))
                                .padding(.horizontal, getRelativeWidth(17.0))
                        }
                        .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(359.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(359.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(8.0))
                }
                .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.vertical, getRelativeHeight(44.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone14ProOneView(),
                                   tag: "IPhone14ProOneView",
                                   selection: $searchViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone14OneView(),
                                   tag: "IPhone14OneView",
                                   selection: $searchViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone14TwoView(),
                                   tag: "IPhone14TwoView",
                                   selection: $searchViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone14ThreeView(),
                                   tag: "IPhone14ThreeView",
                                   selection: $searchViewModel.nextScreen,
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

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
