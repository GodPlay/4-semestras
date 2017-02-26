## Reikalavimai. Savybės. Rūšys.
- **Reikalavimas** - sandoriu su užsakovu, specifikacija, standartu arba kokiu nors kitu juridinę galią turinčiu dokumentu numatyta tos sistemos savybė.
- Reikalavimai gali būti *skirtingo abstrakcijos lygmens*, nes jų paskirtis dviguba:
  1. Jie naudojami skelbiant konkursą sistemai sukurti ir todėl turi būti pakankamai bendro pobūdžio, kad konkurse galėtų dalyvauti kuo daugiau pretendentų;
  2. Jie yra pagrindinė sandorio tarp užsakovo ir vykdytojo dalis ir todėl turi būti suformuluoti kuo tiksliau ir išsamiau;
- **Reikalavimų specifikacija** - dokumentas, aprašantis ką turi daryti sistema ir kokius kitus reikalavimus ji turi tenkinti.
- **Reikalavimų nustatymas** - procesas, kuriuo nustatoma, kokias paslaugas privalo teikti sistema ir kokius ribojimus ta sistema turi tenkinti teikdama tas paslaugas.
<hr>
- **Reikalavimų rūšys:**
  - **Vartotojo (operaciniai) poreikiai** turi taip aprašyti reikalavimus, kad jie būtų suprantami žmonėms, tik paviršutiniškai susipažinusiems su tuo, kas yra kompiuteriai ir PS. <br>
  *(vadovybė, sistemos vartotojai, sistemos architektas)*
  - **Sistemos reikalavimai** - struktūrizuotas detalus sistemos teikiamų paslaugų ir jos tenkinamų ribojimų aprašas. <br>
  *(sistemos vartotojai, sistemos architektas, PS inžinieriai)*
  - **Projektiniai reikalavimai** - abstraktus PS įgyvendinimo aprašas, naudojamas kaip išeities (output) ribojimai detaliai projektuojant sistemą. <br>
  *(sistemos architektas, PS inžinieriai)*
- Vartojo ir sistemos reikalavimai yra **skirtingo detalumo lygmens**, nes juos skaito skirtingi skaitytojai ir jie naudojami skirtingiems tikslams:
  - Vartotojų reikalavimų skaitytojams nesvarbu kaip sistema bus įgyvendinta.
  - Sistemos reikalavimų skaitytojams svarbu tiksliai žinoti ką sistema turi daryti, nes jie turi juos įgyvendinti.
- **Reikalavimų formulavimas** - procesas, kuriuo operaciniai poreikiai yra pertvarkomi į tikslų ir išsamų aprašą, ką sistema darys ir kaip ji veiks.
<hr>
- **Gerai suformuluotas reikalavimas** turi būti:
  - **Abstraktus** - specifikuoja operacinę (stebimą iš išorės) sistemos savybę ir nieko nekalba apie tai, kaip tą savybę realizuoti sistemoje.
  - **Išsamus** - turi prasmę ne tik tuomet, kai yra nagrinėjamas kartu su kitais reikalavimais, bet ir tuomet, kai jis nagrinėjamas atskirai.
  - **Tikslus** - visi jame vartojami terminai turi griežtai apibrėžtas reikšmes (negalima vartoti griežtai neapibrėžtų terminų).
  - **Vienareikšmis** - jo negalima interpretuoti (suprasti) keliais skirtingais būdais.
  - **Verifikuojamas** - yra žinomas ir prieinamas baigtinis ir kainos bei kitais požiūriais priimtinas procesas (testavimas, stebėjimas, analizė ar kt.), kurį taikant galima nustatyti, ar reikalavimas tikrai yra įgyvendintas.
  - **Įgyvendinamas** - *yra žinomas ir prieinamas* toks ekonominiu, juridiniu bei kitais požiūriais priimtinas *technologinis procesas*, kurio inovaciniai slenksčiai gali būti pašalinti per priimtiną laikotarpį ir už priimtiną kainą ir *kurį taikant galima sukurti sistemą*, turinčią tuo reikalavimu specifikuojamą savybę.
  - **Integruojamas** - sujungus jį su kitais reikalavimais, yra gaunamas tarpusavyje suderintų reikalavimų rinkinys.
  - **Lokalizuojamas** - jį galima susieti su vienu ar keliais konkrečiais kuriamos sistemos komponentais, įgyvendinančiais tą reikalavimą.
  - **Trasuojamas** - yra vienareikšmiškai įvardinamas (pvz., turi unikalų numerį) ir turi nuorodą į savo šaltinį.
  - **Unikalus** - jame nėra kartojama kituose reikalavimuose pateikta informacija.
  - **Glaustas** - jame nėra pagrindimo, apibrėžčių ar kitų nebūtinų dalykų.
  - **Suprantamas** - jis parašytas nevartojant tik specialistams suprantamų terminų ir yra aiškiai pasakyta, kokią funkcinę ar nefunkcinę savybę privalo turėti sistema.
<hr>
- **Funkciniai reikalavimai** - reikalavimai, nusakantys, kokias paslaugas privalo teikti sistema, kokia turi būti jos reakcija į konkrečius stimulus ir kaip ji turi elgtis konkrečiose situacijose. Paslaugų pobūdis priklauso nuo
  - kuriamos programinės įrangos pobūdžio;
  - tos įrangos vartotojų pobūdžio.
- *Vartotojo lygmens* funkciniai reikalavimai gali gana bendrai aprašyti, ką turi daryti sistema, bet *sistemos lygmens* funkciniai reikalavimai visas sistemos funkcijas (jos teikiamas paslaugas) privalo specifikuoti labai detaliai.
- *Vartotojo lygmens* funkciniai reikalavimai:
  - Kokias **įeigas** sistema gebės apdoroti
  - Kokius **rezultatus** sistema turi generuoti
  - Kokiais **duomenimis** sistema turi operuoti
  - Kokius **skaičiavimus** sistema turi atlikti
- Funkciniai reikalavimai aprašo:
  - pagrindinį (probleminį) sistemos funkcionalumą;
  - pagalbinį funkcionalumą; (funkcionalumą, kurio reikia sistemai aptarnauti, prižiūrėti, administruoti arba darbui su ja palengvinti.)
- Funkciniai reikalavimai gaunami iš:
  - Operacinių poreikių
  - Užduočių
  - Sistemos naudojimo
- Funkcinis reikalavimas aprašo
  - funkcijos **įeigą** (pradinius duomenis);
  - funkcijos **išeigą** (rezultatą);
  - principinį **algoritmą** (jei to reikia).  scenarijaus
- Programų sistema vadinama **korektiška**, jei ji tenkina operacinius vartotojų poreikius ir funkcinės savybės atitinka reikalavimų specifikacija numatytus (funkcinius) reikalavimus.
- **Nefunkciniai reikalavimai** - ribojimai potencialiai galimų projektinių sprendimų aibei. Jie aprašo:
  - interfeiso ribojimus;
  - veikimo ribojimus;
  - ekonominius ribojimus;
  - politinius ribojimus;
  - teisinius ribojimus.
