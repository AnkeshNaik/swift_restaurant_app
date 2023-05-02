import SwiftUI

struct IPhone14OneView: View {
    @StateObject var iPhone14OneViewModel = IPhone14OneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ZStack {
                                Image("img_arrowleft")
                                    .resizable()
                                    .frame(width: getRelativeWidth(7.0),
                                           height: getRelativeHeight(14.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(9.0))
                                    .padding(.horizontal, getRelativeWidth(13.61))
                                    .onTapGesture {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }
                            }
                            .hideNavigationBar()
                            .onTapGesture {
                                iPhone14OneViewModel.nextScreen = "SearchView"
                            }
                            .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(32.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                    bottomRight: 10.0)
                                    .stroke(ColorConstants.Black901,
                                            lineWidth: 0))
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(ColorConstants.Orange400))
                            .padding(.trailing, getRelativeWidth(10.0))
                            Image("img_rectangle15_300x300")
                                .resizable()
                                .frame(width: getRelativeWidth(300.0),
                                       height: getRelativeWidth(300.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Circle())
                                .padding(.top, getRelativeHeight(11.0))
                                .padding(.horizontal, getRelativeWidth(19.0))
                            Text(StringConstants.kMsgFrenchOnionCh)
                                .font(FontScheme.kDMSansBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(243.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(37.0))
                                .padding(.horizontal, getRelativeWidth(19.0))
                            HStack {
                                Text(StringConstants.kLbl22900)
                                    .font(FontScheme.kDMSansBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Orange401)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(88.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(8.0))
                                    .padding(.bottom, getRelativeHeight(7.0))
                                Spacer()
                                HStack {
                                    Image("img_group38")
                                        .resizable()
                                        .frame(width: getRelativeWidth(32.0),
                                               height: getRelativeWidth(32.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(4.0))
                                    Text(StringConstants.kLbl1)
                                        .font(FontScheme
                                            .kDMSansRegular(size: getRelativeHeight(24.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(8.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(19.0))
                                    Button(action: {}, label: {
                                        Image("img_group37")
                                    })
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeWidth(32.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                               bottomLeft: 16.0, bottomRight: 16.0)
                                            .fill(ColorConstants.Orange401))
                                    .shadow(color: ColorConstants.OrangeA20026, radius: 10, x: 0,
                                            y: 0)
                                    .padding(.leading, getRelativeWidth(19.0))
                                    .padding(.trailing, getRelativeWidth(4.0))
                                }
                                .frame(width: getRelativeWidth(118.0),
                                       height: getRelativeHeight(40.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0)
                                        .fill(ColorConstants.Orange50))
                            }
                            .frame(width: getRelativeWidth(373.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(23.0))
                            .padding(.leading, getRelativeWidth(5.0))
                            HStack {
                                Spacer()
                                VStack(alignment: .leading, spacing: 0) {
                                    Picker(StringConstants.kLblSize,
                                           selection: $iPhone14OneViewModel.framefiftyonePicker1) {
                                        ForEach(iPhone14OneViewModel.framefiftyonePicker1Values,
                                                id: \.self) { value in
                                            Text(value)
                                        }
                                    }
                                    .foregroundColor(ColorConstants.Orange401)
                                    .font(.system(size: getRelativeHeight(14)))
                                    .pickerStyle(MenuPickerStyle())
                                    Text(StringConstants.kLblMedium)
                                        .font(FontScheme
                                            .kDMSansMedium(size: getRelativeHeight(18.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Black901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(67.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(12.0))
                                        .padding(.bottom, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(8.0))
                                }
                                .frame(width: getRelativeWidth(104.0),
                                       height: getRelativeHeight(65.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(ColorConstants.Orange401,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(ColorConstants.WhiteA700))
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblEnergy)
                                        .font(FontScheme
                                            .kDMSansMedium(size: getRelativeHeight(14.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Orange401)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(44.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(12.0))
                                        .padding(.horizontal, getRelativeWidth(8.0))
                                    Text(StringConstants.kLbl554Kcal)
                                        .font(FontScheme
                                            .kDMSansMedium(size: getRelativeHeight(18.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Black901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(72.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(8.0))
                                }
                                .frame(width: getRelativeWidth(104.0),
                                       height: getRelativeHeight(65.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(ColorConstants.Orange401,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.leading, getRelativeWidth(23.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblDelivery)
                                        .font(FontScheme
                                            .kDMSansMedium(size: getRelativeHeight(14.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Orange401)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(51.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(11.0))
                                        .padding(.horizontal, getRelativeWidth(8.0))
                                    Text(StringConstants.kLbl45Min)
                                        .font(FontScheme
                                            .kDMSansMedium(size: getRelativeHeight(18.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Black901)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(56.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(8.0))
                                }
                                .frame(width: getRelativeWidth(104.0),
                                       height: getRelativeHeight(65.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(ColorConstants.Orange401,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.leading, getRelativeWidth(23.0))
                            }
                            .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(65.0),
                                   alignment: .trailing)
                            .padding(.top, getRelativeHeight(27.0))
                            .padding(.leading, getRelativeWidth(10.0))
                            Text(StringConstants.kLblAbout)
                                .font(FontScheme.kDMSansMedium(size: getRelativeHeight(18.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Black901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(51.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.horizontal, getRelativeWidth(38.0))
                            Text(StringConstants.kMsgIngredients1)
                                .font(FontScheme.kDMSansRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(170.0),
                                       height: getRelativeHeight(113.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(23.0))
                                .padding(.horizontal, getRelativeWidth(38.0))
                            Button(action: {
                                iPhone14OneViewModel.nextScreen = "IPhone14FourView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblOrderNow)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(13.0)))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(17.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(163.0),
                                               height: getRelativeHeight(48.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 24.0, topRight: 24.0,
                                                                   bottomLeft: 24.0,
                                                                   bottomRight: 24.0)
                                                .fill(ColorConstants.Orange400))
                                        .shadow(color: ColorConstants.Red100, radius: 40, x: 0,
                                                y: 20)
                                        .padding(.top, getRelativeHeight(25.0))
                                        .padding(.horizontal, getRelativeWidth(96.0))
                                }
                            })
                            .frame(width: getRelativeWidth(163.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 24.0, topRight: 24.0,
                                                       bottomLeft: 24.0, bottomRight: 24.0)
                                    .fill(ColorConstants.Orange400))
                            .shadow(color: ColorConstants.Red100, radius: 40, x: 0, y: 20)
                            .padding(.top, getRelativeHeight(25.0))
                            .padding(.horizontal, getRelativeWidth(96.0))
                        }
                        .frame(width: getRelativeWidth(378.0), alignment: .topLeading)
                    }
                }
                .frame(width: getRelativeWidth(378.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.vertical, getRelativeHeight(18.0))
                .padding(.leading, getRelativeWidth(4.0))
                .padding(.trailing, getRelativeWidth(8.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SearchView(),
                                   tag: "SearchView",
                                   selection: $iPhone14OneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: IPhone14FourView(),
                                   tag: "IPhone14FourView",
                                   selection: $iPhone14OneViewModel.nextScreen,
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

struct IPhone14OneView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone14OneView()
    }
}
