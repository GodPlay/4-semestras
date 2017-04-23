# 3 Kontrolinis
## Anotuoti Reikalavimai
- Reikalavimai anotuojami norint pateikti sistemą kuriančiai organizacijai tam tikras rekomendacijas.
- **[Nr].[statusas][galiojimas][kritiskumas]**
- **Statusas**
  - E - esminis (essential) - *Neįgyvendinus negali būti patenkinami operaciniai poreikiai*
  - D - pageidaujamas (desirable) - *Iš principo, be jų galima ir apsieiti*
  - O - papildomas (optional) - *Paprastai įgyvendinami už papildomą mokestį*
- **Galiojimo laikas**
  - S - pastovus (stable) - *Reikalavimas niekad nekeičiamas*
  - U - nepastovus (unstable) - *Keitimo tikėtinumas nelygus nuliui*
  - T - laikinas (temporary) - *Galimybė lengvai keisti svarbesnė*
- **Kritiškumo laipsnis** *Reikalavimo pažeidimo pasekmės*
  - S - sunkios pasekmės
  - A - apysunkės pasekmės
  - L - lengvos pasekmės

## Reikalavimų specifikacija
- **Reikalavimų specifikacija** - tai oficialus, juridinę galią turintis dokumentas, nustatantis, kokį produktą privalo sukurti vykdytojas.
- Reikalavimų specifikacija reikalinga:
  - Užsakovui:
    - Konkursui organizuoti
    - Baigtai sistemai vertinti
  - Projekto vadovui:
    - Projektui planuoti
  - Projektuotojui:
    - Sistemai projektuoti
  - Testuotojui:
    - Testams specifikuoti
- ### Gerai parašytos reikalavimų specifikacijos savybės:
  - Tenkina projektuotojų poreikius
  - Reikalavimai numeruoti
  - **Konceptualumas** (appropriateness): reikalavimų specifikacija yra konceptuali, jei visi joje pateikti reikalavimai yra abstraktūs, t.y. joje nėra liečiami sistemos projektavimo ar įgyvendinimo klausimai.
  - **Koncepcinė skaidra**: apima specifikacijos paprastumą, aiškumą ir suprantamumą.
  - **Konkretumas** (constructability): specifikacija yra konkreti, jei gali būti patikrintas visų joje suformuluotų reikalavimų įgyvendinimo laipsnis.
  - **Geras struktūrizavimas**: joje griežtai išlaikytas turinių atskyrimo principas.
  - **Tikslumas**: visi joje suformuluoti reikalavimai yra tikslūs.
  - **Išsamumas**: specifikacijoje aprašytas visas reikalingas sistemos funkcionalumas ir visi joje pateikti reikalavimai yra išsamūs.
    - Išsamioje specifikacijoje turi būti aprašyta, kaip sistema reaguoja į kiekvieną iš galimų įvesties tipų kiekvienoje galimoje situacijoje. *Reikia nagrinėti ne tik kaip reaguoja sistema į leistinas (teisingas) įvestis, bet ir kaip ji reaguoja į klaidingas įvestis.*
    - Išsamioje specifikacijoje turi būti visos reikalaujamos to dokumento dalys, visi puslapiai, visi paveikslėliai ir visos lentelės turi būti sunumeruoti, paveikslėliai ir lentelės turi turėti pavadinimus, turi būti pateiktos tvarkingos nuorodos į visus naudojamus išorinius informacijos šaltinius.
    - Kartais analizės metu visų reikalavimų specifikuoti nepavyksta, kai kurių reikalavimų specifikavimą tenka atidėti vėlesniam laikui. Tokie reikalavimai pažymimi žyme **AVL**. Išsamioje specifikacijoje kiekvienam AVL žyme pažymėtam reikalavimui turi būti nurodyta:
      - *kodėl* reikalavimo formulavimas yra atidėtas;
      - *kas turi būti atlikta*, kad reikalavimą būtų galima suformuluoti;
      - *iki kada* reikalavimas turi būti suformuluotas;
      - *kas atsakingas* už tai, kad reikalavimas būtų suformuluotas nurodytu laiku.
  - **Vienareikšmiškumas**: neturi būti jokių dviprasmybių
  - **Trasuojamumas**: reikalavimai yra lokalizuojami ir reikalavimų ir projektinę specifikacijas galima tarpusavyje susieti kryžminėmis nuorodomis.
  - **Darna**: visi joje suformuluoti reikalavimai yra integruojami, jokių prieštaravimų dokumente nėra. *Nedarna gali atsirasti dėl terminų konfilto, savybių konflikto ar naudojimo režimų konflikto*
  - **Keičiamumas**: dokumentas turi būti lengvai keičiamas. *Specifikaciją lengva keisti, jei ji parašyta griežtai prisilaikant turinių atskyrimo principo ir visi reikalavimai turi unikalius numerius.*
  - **Naudojimo patogumas**: mažai kas skaito visą dokumentą, kiekvienam reikia tik to, kas jam svarbu. Todėl dokumentas turi būti parašytas taip, kad juo būtų galima naudotis kaip žinynu.
  - Reikalavimų specifikacija pateikiama varžovams besivaržantiems konkurse dėl projekto. *Tinkamai organizuotas konkursas padeda užsakovui pasirinkti vykdytoją, kuris reikalavimus įgyvendins pigiausiai.*
  - Kad konkurse galėtų dalyvauti kuo daugiau pretendentų, reikalavimai turi būti suformuluoti kuo bendriau. *Kita vertus, reikalavimai turi būti pakankamai konkretūs, kad konkurse negalėtų dalyvauti pretendentai, siūlantys sukurti ne tai, ko iš tiesų reikia užsakovui. Idealiu atveju, reikalavimai turėtų būti suformuluoti taip, kad visi galimi pasiūlymai būtų suskirstyti į dvi dalis: tuos, kurie tenkina vartotojų poreikius, ir tuos, kurie tų poreikių netenkina.*

## Technologinis Reikalavimų Inžinerijos procesas:
1. Poreikių analizė
2. Aiškinimasis ir analizė **PROTOTIPAI**
3. Specifikavimas
4. Vertinimas **PROTOTIPAI**
5. Dokumentavimas

## Sistemos reikalavimų formulavimas
![reikalavimu formulavimas](./reikalavimu_formulavimas.png)
1. Suformuluojami verslo (**veiklos**) reikalavimai. *Kadangi yra siekiama patobulinti ar išplėtoti kokią nors veiklą, tai visų pirma reikia suformuluoti, kokius tos veiklos aspektus norima tobulinti ar plėtoti.*
2. Suformulavus veiklos reikalavimus reikia išsiaiškinti, kokių informacinių, skaičiavimo ar komunikacinių paslaugų prireiks tiems reikalavimams įgyvendinti. Šie **Operaciniai Poreikiai** dar vadinami vartotojo reikalavimais.
3. Išsiaiškinus operacinius poreikius reikia suformuluoti tuos poreikius tenkinančios veiklai palaikyti skirtos **sistemos** reikalavimus.*Formuluojant veiklą palaikančios sistemos reikalavimus, nusprendžiama, kaip bus dirbama po to, kai planuojama sistema bus sukurta ir įdiegta.* Sistemos reikalavimai reglamentuojami **verslo taisyklėmis**.
4. Vadovaujantis veiklą palaikančios sistemos reikalavimais pradedami formuluoti programų sistemos reikalavimai
5. Programų sistemos reikalavimai baigiami formuluoti pridedant nefunkcinius reikalavimus, gaunamus atsižvelgiant į *siekiamų kokybės tikslų prioritetus* bei kitus, papildomus reikalavimus.
6. Naudojant reikalavimų nuleidimo žemyn technikas programų sistemos reikalavimai yra transformuojami į **projektavimo**, o po to ir į **realizavimo** reikalavimus.

## Reikalavimų lygmenys
![reikalavimu lygmenys](./reikalavimu_lygmenys.png)
- **Zachmano metodika** numato 6 reikalavimų formulavimo lygmenis, aprašančius skirtingų projekto dalyvių požiūrius į kuriamąją programų sistemą:
  1. verslo inžinieriaus arba verslo konsultanto,
  2. dalykinės srities specialisto (vartotojo),
  3. informacinių sistemų inžinieriaus,
  4. programų sistemų inžinieriaus,
  5. programuotojo,
  6. veikiančias sistemas aptarnaujančių bei prižiūrinčių tarnybų.

## Zachmano metodika
- Zachmano metodika, dar vadinama Zachmano metodiniu karkasu, nusako išsamų sistemos kūrimo proceso produktų sąrašą (taikant nustatytą požiūrių taškų rinkinį) ir jų aprašus.
- Aprašoma lentele, kurios eilutės atitinka reikalavimų lygmenis, o stulpeliai - klausimus `Kodėl?` `Kaip?` `Ką?` `Kas?` `Kur?` `Kada?`

lygmenys | Kodėl? | Kaip? | Ką? | Kas? | Kur? | Kada?
---------|--------|-------|-----|------|------|-------
Verslo inžinierius  ||||||
Vartotojas          ||||||
IS inžinierius      ||||||
PS inžinierius      ||||||
Programuotojas      ||||||
Aptarnavimo ir priežiūros tarnyba ||||||

1. Verslo reikalavimai nusako **strateginius verslo tikslus**. Tai aukščiausio lygio reikalavimai, nes PS ir yra kuriama tam, kad padėtų įgyvendinti verslo tikslus.
2. Dalykinės srities specialistų požiūrį aprašo **vartotojo reikalavimai**.
3. IS inžinieriaus požiūrį aprašo **IS reikalavimai**, gaunami detalizuojant ir konkretizuojant vartotojo reikalavimus.
  - Informacinių sistemų inžinieriaus požiūrį detalizuoja informacinės sistemos posistemių reikalavimai
4. Tarp trečiojo ir ketvirtojo originalios Zachmano metodikos lygmenų tenka įvesti papildomą lygmenį, aprašantį **sisteminio analitiko** požiūrį. *Kuriant mažoms organizacijoms skirtas paprastas programų sistemas, reikalavimų formulavimas gali būti pradėtas nuo šio lygmens.*
5. PS inžinieriaus požiūrį aprašo **projektiniai PS reikalavimai**. *Šiame lygmenyje priimami sprendimai, kokia infrastruktūra (kompiuterinė platforma, DBVS tipas ir kt.) bus naudojama programų sistemai kurti, parenkama tos sistemos architektūra ir, remiantis tos sistemos reikalavimais, suformuluojami jos komponentų reikalavimai.*
6. Programuotojo požiūrį aprašo **realizaciniai PS reikalavimai**, nusakantys, kokiomis programavimo kalbomis kalbomis, kokiais kompiliatoriais, kokia tarpine programine įranga ir kokiomis kitomis konkrečiomis instrumentinėmis priemonėmis gali naudotis programuotojai, kurdami šią programų sistemą.

![Zachmano poreikiai](./zachmano_poreikiai.png)

- ### Stulpeliai:
  1. `Kodėl?`: Viršutinėje lentelės eilutėje čia pateikiama motyvacija, kodėl norima tobulinti verslą. Leidžiantis eilutė po eilutės šiuo stulpeliu lentele žemyn, yra nusileidžiama iki reikalavimų, kokia turi būti šią viziją padedanti įgyvendinti programų sistema.
  2. `Kaip?` pasiekti pirmame stulpelyje suformuotus tikslus?:
    1. Kokias paslaugas turėtų teikti patobulintą verslo sistemą palaikanti informacinė sistema.
    2. Kokie yra būsimųjų vartotojų operaciniai poreikiai, t.y., kokias verslo užduotis (taip pat ir verslo transakcijas) jie vykdys
    3. Kokias užduotis turi vykdyti tas verslo transakcijas palaikanti IS ir kiek patikimi turi būti tų užduočių vykdymo rezultatai
    4. Kokius posistemius privalo turėti tokia IS ir kokias užduotis privalo vykdyti tie posistemiai,
    5. Koks turi būti tuos IS posistemius palaikančių PS funkcionalumas ir kiek patikimi turi būti jų rezultatai
    6. Kokie turi būti kiekvieno iš tą PS sudarančių komponentų funkcionalumas bei patikimumas
    7. Kokiomis priemonėmis tie komponentai turi būti kuriami ir kokiu mastu turi būti testuojamas kiekvienas iš jų
  3. `Ką?` turi apdoroti antrajame stulpelyje numatytos procedūros, tiksliau, kokius reikalavimus turi tenkinti tomis procedūromis apdorojami objektai?
  4. `Kas?` naudosis programų sistemos teikiamomis paslaugomis ir kokius įgaliojimus jie turi?
  5. `Kur?`, t.y., kokiose darbo vietose dirbs dalykinės srities specialistai?
  6. `Kada?`: Stulpelis yra skirtas verslo užduočių, IS, PS ir jos komponentų našumo reikalavimams formuluoti.

- ### Sistemos rinkai
  - Kuriant sistemas rinkai, atlikus rinkos analizę, galima išsiaiškinti potencialių pirkėjų tipines problemas ir pasiūlyti priemonę toms problemoms spręsti.
  - Rinkai kuriamoms sistemoms, išskyrus vadinamuosius ERP ir kitus panašius paketus, apskritai dingsta eilutė, aprašanti informacinių sistemų inžinieriaus požiūrį. Taip yra todėl, kad paprastai nėra žinoma, kokiame konkrečiame kontekste bus naudojamas kuriamasis produktas.

lygmenys | Kodėl? | Kaip? | Ką? | Kas? | Kur? | Kada?
  --- | --- | --- | --- | --- | --- | ---
  Verslo r. | Rinkos analizė | Produkto teikiamos paslaugos | Realaus pasaulio objektai | Vartotojų grupių nustatymas | Darbo vietų nustatymas | Produkto galimybių našumas
  Vartotoj.| Vykdomos užduotys | Informacinės, skaičiavimo ir kitos paslaugos | Informacinių objektų konceptai | Kvalifikaciniai vartotojo reikalavimai | Bendrieji darbo vietų reikalavimai | Užduočių vykdymo našumas
  PS r.    | Ekonominiai, politiniai ir teisiniai ribojimai, kokybės vertinimo kriterijai | Funkciniai, saugos, patikimumo, diegimo, aptarnavimo ir priežiūros r. | Duomenų reikalavimai | Vartotojo interfeisų r. | Tech Specs requiremets | Produkto našumas
  Projek.PS| Eskizinio lygmens PS architektūros reikalavimai | Funkciniai, saugos, robastiškumo, patikimumo, diegimo, aptarnavimo, priežiūros r. | Loginio lygmens DB ir t.t. | Komponentų interfeisų r. | Komponentų išdestymas tinkle | Komponentų našumas
  Program. | Detali PS architektūra | Realizavimo ir testavimo r. | Fizinio lygmens DB ir t.t. reikalavimai | Procedūrų, klasių, etc. r. | Tinklo komponentų sąveika | Algoritmų efektyvumas
