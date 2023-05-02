import SwiftUI

struct DetailFoodView: View {
    @StateObject var detailFoodViewModel = DetailFoodViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack {
                    HStack {
                        HStack {
                            Image("img_arrowleft_green_600")
                                .resizable()
                                .frame(width: getRelativeWidth(11.0),
                                       height: getRelativeHeight(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(6.0))
                                .onTapGesture {
                                    self.presentationMode.wrappedValue.dismiss()
                                }
                            Spacer()
                            Text(StringConstants.kLblProductDetails)
                                .font(FontScheme
                                    .kMontserratRomanRegular(size: getRelativeHeight(20.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(153.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(6.0))
                            Spacer()
                            Button(action: {}, label: {
                                Image("img_closebuttonli")
                            })
                            .frame(width: getRelativeWidth(30.0), height: getRelativeWidth(30.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                       bottomLeft: 15.0, bottomRight: 15.0)
                                    .fill(ColorConstants.Gray50C6))
                            .shadow(radius: 54.36563491821289)
                        }
                        .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(30.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(30.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(27.0))
                    .padding(.trailing, getRelativeWidth(16.0))
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(30.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        Divider()
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(1.0),
                                   alignment: .leading)
                            .background(ColorConstants.Gray300)
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgVeganMushroom)
                                .font(FontScheme
                                    .kMontserratRomanBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(324.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.trailing)
                            HStack {
                                HStack {
                                    RatingBarView(selected: $detailFoodViewModel.ratingbarRating,
                                                  heightWeightImage: getRelativeWidth(23.0))
                                        .frame(width: getRelativeWidth(120.0),
                                               height: getRelativeHeight(23.0), alignment: .center)
                                }
                                .frame(width: getRelativeWidth(120.0),
                                       height: getRelativeHeight(23.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 1.0, topRight: 1.0,
                                                           bottomLeft: 1.0, bottomRight: 1.0))
                                Spacer()
                                Text(StringConstants.kLbl2)
                                    .font(FontScheme
                                        .kMontserratRomanRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(23.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(11.0))
                            .padding(.trailing, getRelativeWidth(4.0))
                            Image("img_rectangle41")
                                .resizable()
                                .frame(width: getRelativeWidth(344.0),
                                       height: getRelativeHeight(225.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(12.0))
                            Text(StringConstants.kMsgNutritionFacts)
                                .font(FontScheme
                                    .kMontserratRomanRegular(size: getRelativeHeight(20.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(277.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(20.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                Text(StringConstants.kLbl365Calories)
                                    .font(FontScheme
                                        .kMontserratRomanRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Green600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(74.0),
                                           height: getRelativeHeight(36.0), alignment: .center)
                                    .padding(.vertical, getRelativeHeight(5.0))
                                Divider()
                                    .frame(width: getRelativeWidth(1.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                                    .background(ColorConstants.Gray300)
                                    .padding(.leading, getRelativeWidth(8.0))
                                Text(StringConstants.kLbl13gFat)
                                    .font(FontScheme
                                        .kMontserratRomanRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Green600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(26.0),
                                           height: getRelativeHeight(36.0), alignment: .center)
                                    .padding(.vertical, getRelativeHeight(5.0))
                                    .padding(.leading, getRelativeWidth(31.0))
                                Divider()
                                    .frame(width: getRelativeWidth(1.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                                    .background(ColorConstants.Gray300)
                                    .padding(.leading, getRelativeWidth(31.0))
                                Text(StringConstants.kLbl50gCarbs)
                                    .font(FontScheme
                                        .kMontserratRomanRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Green600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(49.0),
                                           height: getRelativeHeight(36.0), alignment: .center)
                                    .padding(.vertical, getRelativeHeight(5.0))
                                    .padding(.leading, getRelativeWidth(18.0))
                                Divider()
                                    .frame(width: getRelativeWidth(1.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                                    .background(ColorConstants.Gray300)
                                    .padding(.leading, getRelativeWidth(19.0))
                                Text(StringConstants.kLbl12gProtein)
                                    .font(FontScheme
                                        .kMontserratRomanRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Green600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(61.0),
                                           height: getRelativeHeight(36.0), alignment: .center)
                                    .padding(.vertical, getRelativeHeight(5.0))
                                    .padding(.leading, getRelativeWidth(12.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(336.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.trailing, getRelativeWidth(7.0))
                            Text(StringConstants.kMsgThePlantBased)
                                .font(FontScheme
                                    .kMontserratRomanRegular(size: getRelativeHeight(18.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(331.0),
                                       height: getRelativeHeight(313.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.trailing, getRelativeWidth(12.0))
                        }
                        .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(731.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(15.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(747.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(747.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(14.0))
            }
            .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(44.0))
            .padding(.bottom, getRelativeHeight(45.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct DetailFoodView_Previews: PreviewProvider {
    static var previews: some View {
        DetailFoodView()
    }
}
