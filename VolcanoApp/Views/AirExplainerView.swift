//
//  AirExplainerView.swift
//  VolcanoApp
//
//  Created by Kristbjorg Oskarsdottir on 4.5.2021.
//

import SwiftUI


struct Pollutants: Identifiable {
    let id = UUID()
    let name: String
    let text: String
    var items: [Pollutants]?
    
    // Children
    static let so2 = Pollutants(name: "", text: "Brennisteinsdíoxíð (brennisteinstvíildi) er litlaus lofttegund sem flest fólk finnur lykt af, ef styrkurinn nær u.þ.b.1000 µg/m3. Margar tegundir af jarðefnaeldsneyti innihalda brennistein og er það háð uppruna og tegund eldsneytisins hve mikill hann er. Brennisteinsdíoxíð hefur neikvæð áhrif á heilsu manna og hár styrkur brennisteinsdíoxíðs getur hindrað öndun, ert augu, nef og háls, valdið köfnun, hósta, öndunarsjúkdómum og óþægindum í brjósti. Einnig hefur það áhrif á öndun plantna, getur valdið drepi og vanlíðan dýra og valdið málmtæringu.")
    static let pm10 = Pollutants(name: "", text: "Svifryk er smágerðar agnir sem svífa um í andrúmsloftinu og er flokkað eftir stærð agnanna. Þær sem eru minni en 10 μm (1 μm = 1 míkrómetri sem jafngildir einum milljónasta úr metra) í þvermál eru kallaðar PM10 (PM, particulate matter), PM2,5 eru agnir minni en 2.5 µm í þvermál og PM1 eru agnir minni en 1 µm í þvermál. Örfínt ryk (UFP, ultra-fine particles) er minna en 0,1 μm í þvermál. Til samanburðar má geta þess að mannshár er um 60 μm í þvermál. Agnir sem myndast við slit eða núning eru yfirleitt fremur grófar, t.d. ryk sem myndast við slit á malbiki. Smágerðari agnir verða einna helst til við bruna, t.d. sót, eða vegna þess að efni þéttast, t.d. brennisteinn, köfnunarefnissambönd og lífræn efni. Helstu uppsprettur svifryks í þéttbýli eru umferð (slit gatna, útblástur bíla o.fl.), byggingarframkvæmdir og uppþyrlun göturyks. Efnasamsetning svifryks er mismunandi og fer mikið eftir uppsprettunni og árstíð þegar sýnið er tekið. Utan þéttbýlisstaða eru uppsprettur svifryks m.a. sandfok, eldgos (öskufall/öskufok) og uppþyrlun ryks af malarvegum. Utan þéttbýlis er hærri svifryksmengun einna helst í moldar-, sand- og/eða öskufoki sem eykst er snjóa leysir og jörð nær að þorna. Ryk frá malarvegum er vandamál víða úti á landi og þá sérstaklega í þurrkum að sumri til.  hrif svifryks á heilsu fólks er að mjög miklu leyti háð stærð agnanna. Fínar agnir eru heilsufarslega mun hættulegri en þær grófu, en agnir minni en 10 µm eiga auðveldara með að ná djúpt niður í lungun og geta því safnast þar fyrir. Þegar svo langt er komið, fara áhrifin alfarið eftir því hversu lengi og hversu oft persónan andar að sér menguðu lofti og hvort hættuleg efni eru í rykinu eða loða við það, t.d. þungmálmar eða PAH (fjölarómatísk vetniskolefni). Almenningur finnur þó mismikið fyrir áhrifum svifryks en aldraðir, börn og þeir sem eru með undurliggjandi öndunarfæra- og/eða hjartasjúkdóma eru viðkvæmastir")
    static let no2 = Pollutants(name: "", text: "Í stórum þéttbýliskjörnum getur styrkur köfnunarefnisoxíða nálgast mörkin þar sem áhrifa á heilsu manna fer að gæta. Mengun af völdum köfnunarefnisoxíða er algengt vandamál. Upptök hennar eru í iðnaði, orkuverum og frá bílaumferð. Við bruna bæði í bílvélum og í brennslustöðvum, myndast köfnunarefnismónoxíð (NO) þegar köfnunarefni og súrefni hvarfast saman við hátt hitastig. Í andrúmsloftinu oxast köfnunarefnismónoxíð smám saman yfir í köfnunarefnisdíoxíð (NO2). Í bæjarfélögum sem umkringd eru fjöllum geta verður af og til hitahvarf, þannig að endurnýjun loftsins verður sérlega dræm. Við slíkar kringumstæður getur styrkur mengunar orðið mjög hár. Engar mælingar eru til frá slíkum bæjarfélögum á Íslandi, en í norskum bæjum eins og Tromsö og Mo í Rana verður styrkur köfnunarefnisdíoxíðs af og til mjög mikill og langt yfir viðmiðunarmörkum. Vegna legu Reykjavíkur við hafið og hve vindasamt er þar, er meðalstyrkur köfnunarefnisdíoxíðs sjaldan meiri en 20 µg/m3 á veturna. En þegar logn er á veturna getur myndast mjög greinilegt slör af menguðu lofti yfir borginni og þá fer magn köfnunarefnisdíoxíðs á sólarhring stundum yfir viðmiðunarmörkin sem eru 75 µg/m3. Köfnunarefnisdíoxíð (NO2) ertir lungu manna og dýra og meðal annars er talið að langvarandi álag á lungu af völdum NO2 geti valdið lungnaskemmdum síðar á ævinni. Enn fremur getur hár styrkur köfnunarefnisoxíða orsakað plöntuskemmdir.")
    
    
    // Title
    static let So2 = Pollutants(name: "So2 = Brennisteinsdíoxíð", text: "", items: [Pollutants.so2])
    static let PM10 = Pollutants(name: "PM10 = Svifryk", text: "",  items: [Pollutants.pm10])
    static let No2 = Pollutants(name: "No2 = Köfnunarefnisdíoxíð", text: "",  items: [Pollutants.no2])
}



struct AirExplainerView: View {
    let items: [Pollutants] = [.So2, .PM10, .No2]
    
    var body: some View {
        
        VStack {
            HStack {
                VStack {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 100, height: 50)
                    Text("Mjög góð")
                        .font(.caption)
                }
                VStack {
                    Circle()
                        .fill(Color.yellow)
                        .frame(width: 100, height: 50)
                    Text("Sæmileg")
                        .font(.caption)
                }
                VStack {
                    Circle()
                        .fill(Color.orange)
                        .frame(width: 100, height: 50)
                    Text("Óholl f.viðkvæma")
                        .font(.caption)
                }
                VStack {
                    Circle()
                        .fill(Color.red)
                        .frame(width: 100, height: 50)
                    Text("Óholl")
                        .font(.caption)
                }
                
            }
            
            VStack {
                List(items, children: \.items) { row in
                    Text(row.name)
                        .fontWeight(.semibold)
                    Text(row.text)
                }
                .padding()
            }
            .padding()
            Spacer()
        }
    }
}

struct AirExlainerView_Previews: PreviewProvider {
    static var previews: some View {
        AirExplainerView()
    }
}
