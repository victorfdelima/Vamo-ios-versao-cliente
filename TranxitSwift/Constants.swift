//
//  Constants.swift
//  Centros_Camprios
//
//  Created by imac on 12/18/17.
//  Copyright © 2017 Appoets. All rights reserved.
//

import UIKit
import Foundation
import GoogleMaps

typealias ViewController = (UIViewController & PostViewProtocol)
var presenterObject :PostPresenterInputProtocol?

var polyLinePath = GMSPolyline()
var gmsPath = GMSPath()
var isRerouteEnable:Bool = false

// MARK: - Constant Strings

struct Constants {
    static let string = Constants()
    let writeSomething = "Escreva Algo"
    let noChatHistory = "Nenhum histórico de bate-papo encontrado"
    let yes = "Sim"
    let no = "Não"
    let Done = "Pronto"
    let Back = "Voltar"
    let delete = "Deletar"
    let noDevice = "Sem dispositivo"
    let manual = "Manual"
    let OK = "OK"
    let Cancel = "Cancelar"
    let NA = "N/D"
    let MobileNumber = "Número de Celular"
    let next = "Próximo"
    let selectSource = "Selecione a Fonte"
    let ConfirmPassword = "Confirmar Senha"
    let camera = "Camera"
    let photoLibrary = "Galeria de Fotos"
    let walkthrough = "Passo a passo"
    let signIn = "ENTRAR"
    let signUp = "CADASTRAR"
    let orConnectWithSocial = "Ou entre com o facebook"
    let changePassword = "Mudar Senha"
    let resetPassword = "Redefinir Senha"
    let enterOtp = "Informe o OTP"
    let otpIncorrect = "OTP incorreto"
    let enterCurrentPassword = "Senha Atual"
    let walkthroughWelcome = "Serviços para transportar você ou sua entrega onde você precisa. Nossos motoristas são apaixonados pelo que fazem."
    let walkthroughDrive = "\(AppName) é a maneira mais ágil de se locomover. Um toque e um carro ou moto vai até você."
    let walkthroughEarn = "Solicite uma viagem e pague com dinheiro ou cartão. A escolha é sua!"
    let welcome = "Bem-vindo(a)"
    let schedule = "Agilidade"
    let drivers = "Comodidade"
    let country = "País"
    let timeZone = "Time Zone"
    let referalCode = "Código de Referência"
    let business = "Negócio"
    let emailPlaceHolder = "E-mail"
    let email = "E-mail"
    let iNeedTocreateAnAccount = "Quero criar uma conta"
    let whatsYourEmailAddress = "Qual é o seu e-mail?"
    let welcomeBackPassword = "Bem-vindo(a) de volta, informe sua senha."
    let enterPassword = "Informe sua senha"
    let enterNewpassword = "Nova Senha"
    let enterConfirmPassword = "Confirmar Nova Senha"
    let password = "Senha"
    let newPassword = "Nova Senha"
    let iForgotPassword = "Esqueci a minha senha"
    let enterYourMailIdForrecovery = "Informe seu e-mail para recuperar"
    let registerDetails = "Informe seus dados para se cadastrar"
    let chooseAnAccount = "Selecione uma conta"
    let facebook = "Facebook"
    let google = "Google"
    let payment = "Pagamento"
    let yourTrips = "Minhas Viagens"
    let coupon = "Cupom de Desconto"
    let wallet = "Carteira"
    let passbook = "Histórico da Carteira"
    let settings = "Locais Favoritos"
    let help = "Ajuda"
    let share = "Compartilhe"
    let inviteReferral = "Convidar Referência"
    let faqSupport = "Suporte"
    let termsAndConditions = "Termos e Condições"
    let privacyPolicy = "Política de Privacidade"
    let logout = "Sair"
    let profile = "Perfil"
    let first = "Nome"
    let last = "Sobrenome"
    let phoneNumber = "Número de Telefone"
    let tripType = "Viagem de viagem"
    let personal = "Pessoal"
    let save = "Salvar"
    let lookingToChangePassword = "Quer mudar a senha?"
    let areYouSure = "Deseja continuar?"
    let areYouSureWantToLogout = "Tem certeza de que deseja sair?"
    let sure = "Certo"
    let source = "Local de partida"
    let destination = "Para onde ir?"
    let home = "Casa"
    let work = "Trabalho"
    let addLocation = "Adicionar Local"
    let selectService = "Selecionar Serviço"
    let service = "Serviço"
    let more = "Mais"
    let change = "mudar"
    let getPricing = "OBTER PREÇO"
    let cancelRequest = "Cancelar Solitcitação"
    let cancelRequestDescription = "Tem certeza de que deseja cancelar a solicitação?"
    let findingDriver = "Procurando Motoristas..."
    let dueToHighDemandPriceMayVary = "Devido a alta demanda o preço pode variar"
    let estimatedFare = "Tarifa Estimada"
    let ETA = "ETA"
    let model = "Modelo"
    let useWalletAmount = "Usar Carteira"
    let scheduleRide = "Agendar"
    let rideNow = "Chamar Agora"
    let scheduleARide = "Agende sua Viagem"
    let select = "Selecionar"
    let driverAccepted = "Viagem aceita. Motorista a caminho!"
    let youAreOnRide = "Você está em viagem."
    let bookingId = "ID Viagem"
    let distanceTravelled = "Distância Percorrida"
    let timeTaken = "Tempo Gasto"
    let baseFare = "Tarifa Base"
    let cash = "Dinheiro"
    let paytm = "Paytm"
    let Payumoney = "PayUmoney"
    let braintree = "Braintree"
    let paynow = "Pagar Agora"
    let rateyourtrip = "Avalie sua viagem com"
    let writeYourComments = "Escreva seu comentário"
    let distanceFare = "Tarifa de distância"
    let tax = "Taxa"
    let total = "Total"
    let submit = "Enviar"
    let driverArrived = "O motorista chegou no local."
    let peakInfo = "Devido ao horário de pico, as taxas serão variadas com base na disponibilidade dos motoristas"
    let call = "Ligar"
    let past = "Concluídas"
    let upcoming = "Agendadas"
    let addCardPayments = "Adicionar cartão para pagamento!"
    let paymentMethods = "Modos de Pagamento"
    let yourCards = "Seus Cartões"
    let walletHistory = "Histórico da Carteira"
    let couponHistory = "Concluídas"
    let enterCouponCode = "Informe e Código Promocional"
    let addCouponCode = "Adicionar Código Promocional"
    let resetPasswordDescription = "Por favor, insira o OTP a ser enviado para seu e-mail de cadastro"
    let latitude = "latitude"
    let longitude = "longitude"
    let totalDistance = "Distância Total"
    let shareRide = "Compartilhar"
    let wouldLikeToShare = "Gostaria de compartilhar minha viagem com você em "
    let profileUpdated = "Perfil atualizado com sucesso!"
    let otp = "OTP"
    let at = "a"
    let favourites = "Favoritos"
    let changeLanguage = "Selecionar Idioma"
    let noFavouritesFound = "Nenhum endereço favorito disponível"
    let cannotMakeCallAtThisMoment = "Impossível fazer uma ligação agora!"
    let offer = "Cupons Promocionais"
    let amount = "Montante"
    let creditedBy = "Creditado por"
    let CouponCode = "Código do Cupom"
    let OFF = "OFF"
    let couldnotOpenEmailAttheMoment = "Não foi possível abrir o e-mail no momento."
    let couldNotReachTheHost = "Não foi possível alcançar a web"
    let wouldyouLiketoMakeaSOSCall = "Você gostaria de fazer uma chamada SOS?"
    let mins = "mins"
    let invoice = "Fatura"
    let viewRecipt = "Veja o recibo"
    let payVia = "Pago via"
    let comments = "Comentários"
    let pastTripDetails = "Detalhes da viagem concluída"
    let upcomingTripDetails = "Detalhes da viagem agendada"
    let paymentMethod = "Modo de Pagamento"
    let cancelRide = "Cancelar Viagem"
    let noComments = "Sem comentários"
    let noPastTrips = "Nenhuma viagem concluída"
    let noUpcomingTrips = "Nenhuma viagem agendada"
    let noWalletHistory = "Nenhum detalhe da carteira"
    let noCouponDetail = "Nenhum detalhe de cupons"
    let fare = "Tarifa"
    let fareType = "Tipo de Tarifa"
    let capacity = "Capacidade"
    let rateCard = "Informação do Serviço"
    let distance = "Distância"
    let sendMyLocation = "Enviar minha Localização"
    let noInternet = "Sem internet?"
    let bookNowOffline = "Reserve agora usando o SMS"
    let tapForCurrentLocation = "Toque no botão abaixo para enviar sua localização atual por SMS."
    let standardChargesApply = "Taxas padrão podem ser aplicadas"
    let noThanks = "Não, obrigado, vou tentar depois!"
    let iNeedCab = "Preciso de um taxi @"
    let donotEditMessage = "(Por favor, não edite este SMS. Taxas padrão de SMS de Rs.3 por SMS podem ser aplicadas)"
    let pleaseTryAgain = "Por favor, tente novamente!"
    let ADDCOUPON = "ADICIONAR CUPOM"
    let addAmount = "Adicionar Dinheito"
    let ADDAMT = "ADICIONAR QUANTIA"
    let yourWalletAmnt = "Saldo atual da sua carteira"
    let Support = "Suporte"
    let helpQuotes = "As pessoas da nossa equipe entrarão em contato com você em breve!"
    let areYouSureCard = "Tem certeza de que deseja excluir este cartão?"
    let remove = "Excluir"
    let discount = "Desconto"
    let planChanged = "Plano Alterado!"
    let bookedAnotherCab = "Reservou outra Viagem"
    let driverDelayed = "Motorista Atrasado"
    let lostWallet = "Carteira Perdida"
    let othersIfAny = "Outros"
    let reasonForCancellation = "Motivo do cancelamento"
    let addCard = "Adicionar cartão para continuar com a carteira"
    let enterValidAmount = "Digite um valor válido"
    let allPaymentMethodsBlocked = "Todos os métodos de pagamento foram bloqueados"
    let selectCardToContinue = "Selecione um cartão para continuar"
    let timeFare = "Tarifa de tempo"
    let tips = "Gorjetas"
    let walletDeduction = "Desconto da Carteira"
    let toPay = "Pagar"
    let addTips = "Adicionar Gorjeta"
    let proceed = "Prosseguir"
    let extimationFareNotAvailable = "Estimativa não disponível"
    let viewCoupons = "Ver Cupons"
    let apply = "Aplicar"
    let validity = "Validade"
    let paid = "Pago"
    let noCoupons = "Sem cupons"
    let english = "English"
    let arabic = "Arabic"
    let becomeADriver = "Quero ser motorista"
    let balance = "Balanço"
    let noDriversFound = "Motoristas não encontrados! Tente novamente."
    let newVersionAvailableMessage = "Uma nova versão deste aplicativo está disponível na App Store"
    let changePasswordMsg = "Senha alterada! Por favor faça o login com nova senha."
    let MIN = "MIN"
    let HOUR = "HOUR"
    let DISTANCE = "DISTANCE"
    let DISTANCEMIN = "DISTANCEMIN"
    let DISTANCEHOUR = "DISTANCEHOUR"
    
    let WaitingTime = "Quantidade de Espera"
    let invideFriends = "Convide Amigos"
    let referHeading = "Seu Código de Referência"
    let tollCharge = "Taxa de Pedágio"
    
    //Referral
    let referalMessage = "Ei, confira este aplicativo \(AppName)"
    let installMessage = "Instale este aplicativo com o código de referência"
    
    let dispute = "Disputa"
    let lostItem = "Itens Perdidos"
    let disputeStatus = "Status Disputa"
    let lostItemStatus = "Status do Item Perdido"
    let open = "abrir"
    let you = "Você"
    let admin = "Admin"
    
    let disputeMsg = "Por favor escolha o tipo de disputa"
    let enterComment = "Por favor insira seus comentários"
    let disputecreated = "Sua disputa já foi iniciada"
    let locationChange = "Atualizar viagem? \n Se você atualizar seu destino, sua tarifa pode mudar"
    let withoutDest = "Sem destino?"
    let notifications = "Notificações"
    let destinationChange = "Quer mudar de destino?"
    
    let scheduleReqMsg = "Pedido de agendamento criado!"
    
    let rideCreated = "Viagem criado com sucesso"
    
    let confirmPayment = "Pagamento não confirmado pelo motorista."
    
    let warningMsg = "Você está usando aplicativos de passageiro e motorista no mesmo dispositivo. O aplicativo pode não funcionar corretamente."
    let Continue = "Continuar"
    
    //PayTm
    let mid = "MID"
    let orderId = "ORDER_ID"
    let custId = "CUST_ID"
    let mobileNo = "MOBILE_NO"
    let emailId = "EMAIL"
    let channelId = "CHANNEL_ID"
    let website = "WEBSITE"
    let txnAmount = "TXN_AMOUNT"
    let industryType = "INDUSTRY_TYPE_ID"
    let checksumhash = "CHECKSUMHASH"
    let callbackUrl = "CALLBACK_URL"
    
    //PayUMoney
    let sid = "id"
    let spay = "pay"
    let swallet = "wallet"
    let stype = "type"
    let suid = "uid"
    let stxnid = "txnid"
    
    let  roundOff = "Arredondar"
    
    let readMore = "Ver mais"
    let readLess = "Ver menos"
    
    let waitingAlertText = "**Taxa de espera não aplicável a este tipo de serviço"
    
    let noNotifications = "Sem notificações"
}


//ENUM TRIP TYPE

enum TripType : String, Codable {
    
    case Business
    case Personal
    
}

//Payment Type

enum  PaymentType : String, Codable {
    
    case CASH = "CASH"
    case CARD = "CARD"
    case PAYTM = "PAYTM"
    case PAYUMONEY = "PAYUMONEY"
    case BRAINTREE = "BRAINTREE"
    case NONE = "NONE"
    
    var image : UIImage? {
        var name = "ic_error"
        switch self {
        case .CARD:
            name = "visa"
        case .CASH:
            name = "money_icon"
        case .BRAINTREE:
            name = "Braintree-logo"
        case .PAYTM:
            name = "Paytm_logo"
        case .PAYUMONEY:
            name = "payumoney-logo"
        case .NONE :
            name = "ic_error"
        }
      return UIImage(named: name)
   }
}


// Date Formats

struct DateFormat {
    
    static let list = DateFormat()
    let yyyy_mm_dd_HH_MM_ss = "yyyy-MM-dd HH:mm:ss"
    let MMM_dd_yyyy_hh_mm_ss_a = "MMM dd, yyyy hh:mm:ss a" 
    let hhmmddMMMyyyy = "hh:mm a - dd:MMM:yyyy"
    let ddMMyyyyhhmma = "dd-MM-yyyy hh:mma"
    let ddMMMyyyy = "dd MMM yyyy"
    let hh_mm_a = "hh : mm a"
    let dd_MM_yyyy = "dd/MM/yyyy"
}



// Devices

enum DeviceType : String, Codable {
    
    case ios = "ios"
    case android = "android"
    
}

//Dispute Status

enum DisputeStatus : String, Codable {
    
    case open
    case closed
    
}


//Lanugage

enum Language : String, Codable, CaseIterable {
    case english = "en"
    case arabic = "ar"
    
    var code : String {
        switch self {
        case .english:
            return "en"
        case .arabic:
            return "ar"
        }
    }
    
    var title : String {
        switch self {
        case .english:
            return Constants.string.english
        case .arabic:
            return Constants.string.arabic
        }
    }
    
    static var count: Int{ return 2 }
}



// MARK:- Login Type

enum LoginType : String, Codable {
    
    case facebook
    case google
    case manual
    
}


// MARK:- Ride Status

enum RideStatus : String, Codable {
    
    case searching = "SEARCHING"
    case accepted = "ACCEPTED"
    case started = "STARTED"
    case arrived = "ARRIVED"
    case pickedup = "PICKEDUP"
    case dropped = "DROPPED"
    case completed = "COMPLETED"
    case cancelled = "CANCELLED"
    case none
    
}

// MARK:- Service Calclulator

enum ServiceCalculator : String, Codable {
    case MIN
    case HOUR
    case DISTANCE
    case DISTANCEMIN
    case DISTANCEHOUR
    case NONE
}



enum Vibration : UInt {
    case weak = 1519
    case threeBooms = 1107
}
