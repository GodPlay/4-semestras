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
<hr>
- **Vartotojo interfeiso Reikalavimai**
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
<hr>
- **Veikimo ribojimai**
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
<hr>
- **Ekonominiai Ribojimai**
  - 
