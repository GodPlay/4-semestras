# 2 Kontrolinis
## Funkciniai Reikalavimai
- **Reikalavimai**, nusakantys, kokias paslaugas privalo teikti sistema, kokia turi būti jos reakcija į konkrečius stimulus ir kaip ji turi elgtis konkrečiose situacijose.
- Gaunami iš:
  - Operacinių poreikių
  - Užduočių
  - Sistemos Naudojimo Scenarijaus
- Aprašo:
  - Įeigą
  - Išeigą
  - Algoritmą
- PS funkcinių reikalavimų atžvilgiu yra **korektiška** jei tenkina operacinius vartotojų poreikius ir funkcinės savybės atitinka reikalavimų specifikacija numatytus reikalavimus.

## Nefunkciniai Reikalavimai
- **Ribojimai** potencialiai galimų projektinių sprendimų aibei.
- Nefunkciniai reikalavimai aprašo:
  - interfeiso ribojimus;
  - veikimo ribojimus;
  - ekonominius ribojimus;
  - politinius ribojimus;
  - teisinius ribojimus.

<hr>

### Interfeiso Ribojimai
- Interfeiso ribojimai riboja sistemos ir jos aplinkos sąveikos būdus.
- Programų sistemos aplinką sudaro:
  - vartotojai;
  - kitos dalykinės programų sistemos;
  - operacinė sistema;
  - duomenų bazės;
  - kompiuterių tinklas;
  - programavimo kalbos;
  - dokumentai.
- Interfeiso reikalavimai atsako į klausimus
  - Kaip turi atrodyti vartotojo interfeisai?
  - Kaip programų sistemos interfeisai turi susieti tą sistemą su jos aplinkos elementais?  
- **Vartotojo interfeiso Reikalavimai:**
  - užduočių formulavimo kalbos (**UFK**) reikalavimai;
    - Kalbos semantinė galia. (abstrakcijos lygmuo)
    - Kalbos procedūriškumas. (procedūrinė | deklaratyvioji | funkcinė | objektinė)
    - Kalbos dalykinė orientacija. (Metaforizavimo principas: Naujas pažinimo struktūras žmonės kuria metaforizuodami esamas (jau išstudijuotas) pažinimo struktūras.)
    - Kalbos selektyvinė geba. (nusako kokiu tikslumu galima filtruoti įvesties ir išvesties duomenis)
    - Kalbos raiškos galia (išsamumas)
    - Sintaksė
    - Užduoties Pateikties Protokolas (UPP) (aprašo, kokiais pranešimais, pateikdamas užduotį, vartotojas keičiasi su sistema etc.)
  - naudojimo paprastumo (**easy-to-use**) reikalavimai;
    - *Vidinė darna*: komandų formato standartas, klavišų naudojimo nepriklausomybė nuo konteksto, pranešimuose vartojamų terminų darna, manipuliavimo ekranu operacijų standartas ir t.t..
    - *Išorinė darna*:  atitikimas išoriniams standartams (pvz., GUI standartams).
    - *Akivaizdumas*: interfeisas suprojektuotas metaforos terminais.
    - *Informatyvumas*: informuoja apie padarytų klaidų pobūdį, aiškina kaip elgtis ir pan.
    - *Prasmingumas*: visi sistemos pranešimai yra glausti, informatyvūs ir formuluojami metaforos terminais.
  - patogumo vartotojui (**user-friend*less***) reikalavimai;
    - Informavimo priemonių tinkamumas (*helpfulness*): ką reikia įtraukti į informavimo (help) failus ir kaip tie failai turi būti organizuoti.
    - *Patrauklumas*: spalvos ir kiti dizaino ypatumą.
    - *Individualizavimas*: kaip vartotojas gali individualizuoti (prisitaikyti savo pomėgiams) interfeisą.
  - **ergonominiai** reikalavimai. (kaip atsižvelgti į potencialių vartotojų psichofiziologines charakteristikas  (pvz., aklus vartotojus). )

### Veikimo ribojimai
  - *tikslumo reikalavimai*: (Verslo taisyklės reglamentuoja duomenų tikslumą ir išsamumą.)
    - Duomenų vaizdavimo tikslumas
    - Skaičiavimų tikslumas
  - *patikimumo reikalavimai* (Patikimumas - PS trykių neigiamo poveikio vartotojų verslo tikslams dydis.)
  - *gyvybingumo reikalavimai* (Kokiu mastu sistema gebės vykdyti kritines (gyvybines) funkcijas trykiams pažeidus kitas jos dalis.)
  - *robastiškumo reikalavimai* (Nusako, kokiu mastu sistema geba išvengti trykių pateikus jai neteisingus duomenis arba ja neteisingai naudojantis. Tai sistemos “nenumušamumo” matas. )
  - *našumo reikalavimai*:
    - reakcijos laikas (response time);
    - pralaidumas (throughput);
    - produktyvumas (efficiency);
    - gaišties laikas (latency);
    - masto keitimas (scalability).

### Ekonominiai Ribojimai
- Ekonominiai ribojimai formuluojami siekiant sumažinti ilgalaikes išlaidas sistemai.
  - **Diegiamumo reikalavimai**:
    - Instaliuojamumas *(ruošinio patikimumas, instaliavimo trukmė, instaliavimo procedūros, parametrizavimas, konfigūravimo galimybės, resursų poreikis (instaliavimui).*
    - Įsisavinamumas *(Matas: tikimybė, kad per laiką  [t1,t2] atitinkamą išsilavinimą turintis asmuo sugebės išmokti dirbti su sistema ar ją administruoti.)*
    - Pastangos duomenų bazėms sukurti
    - Išmokstamumas:
      - Programų sistema yra **koncepciškai skaidri**, jei ji *turi darnų*, akivaizdų, informatyvų ir prasmingą *vartotojo interfeisą; yra komunikatyvi*
      - Programų sistema vadinama **virtualia**, jei ji nuo vartotojo slepia kompiuterinę platformą.
  - **Aptarnaujamumo reikalavimai:**
    - Vartotojų (įskaitant sistemą administruojantį personalą) pastangos, kurių prireikia naudojant sistemą savo užduotims vykdyti.
  - **Prižiūrimumo reikalavimai:**
    - Nuo jų priklauso sistemos darnos palaikymo ir jos perdarymų išlaidos.
    - Prižiūrimumas priklauso nuo:
      - Taisomumo: Kiek pastangų reikia klaidoms pašalinti?
      - Keičiamumo: Kiek pastangų reikia sistemai pritaikyti prie jos reikalavimų pokyčių?
      - Plečiamumo: Kiek pastangų reikia sistemos komponentams pakeisti ir jos funkcionalumui išplėsti?
      - Perkeliamumo: Kiek pastangų reikia sistemai į kitą platformą perkelti?
      - Komponuojamumo: Kiek pastangų reikia sistemos sąveikai su kitomis sistemomis organizuoti?
      - Testuojamumo: Kiek pastangų reikia testams sistemos savybėms patikrinti suprojektuoti ir sukurti?
  - **Tiražuojamumi reikalavimai:**
    - **Portability**: How easy is it to adapt the software to run on different platforms

### Politiniai ribojimai
- **Apsaugos (security)** reikalavimai. Apibrėžia, kokiu mastu sistema turi būti apsaugota nuo galimybių ja pasinaudoti neteisėtai.

### Teisiniai ribojimai
- Teisiniai ribojimai reglamentuoja kas leidžiama ir kas neleidžiama daryti kuriamoje PS, atsižvelgiant į galiojančius teisės aktus

<hr>

## Nefunkcinių reikalavimų patikrinimas
- **Quint** – tai plačiai naudojamas PĮ kokybės standarto **ISO 9126** plėtinys. Quint pateikia sąvokų sistemą, vartojant kurią PS užsakovai, vartotojai ir tą sistemą kuriantys PS inžinieriai gali diskutuoti apie PS kokybę ir susitarti apie konkrečių kokybės atributų prioritetus.
- **Funkcionalumas:** *(kokiu mastu sistemos funkcijos tenkina užsakovo (vartotojų) poreikius ir ar tos funkcijos turi pageidaujamas savybes.)*
  - Tinkamumas (suitability)
  - Tikslumas (accuracy)
  - Sąveikos (interoperability)
  - Darnumas (compliance)
  - Apsauga (security)
  - Trasuojamumas (traceability)
- **Patikimumas:**
  - Išbaigtumas (maturity)
  - Atsparumas trykiams (fault tolerance)
  - Atkuriamumas (recoverability)
  - Prieinamumas (availability)
  - Pažeidžiamumas (degradability)
- **Perkeliamumas:**
  - Adaptuojamumas (adaptability) *nedarant pakeitimu*
  - Instaliuojamumas (installability)
  - Atitikimas standartams (conformance) *perkeliamumo standartai*
  - Pakeičiamumas (replaceability)
- **Panaudojamumas:**
  - Suprantamums
  - Išmokstamumas
  - Eksploatuojamumas
  - Būsenos vizualizavimas
  - Individualizuojamumas
  - Patrauklumas
  - Aiškumas
  - Informatyvumas
  - Patogumas vartotojui
- **Našumas:**
  - Našumas pagal laiką
  - Našumas pagal resursus
- **Prižiūrimumas:**
  - Analizuojamumas
  - Keičiamumas
  - Stabilumas
  - Testuojamumas
  - Valdomumas
  - Tiražuojamumas
