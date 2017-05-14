## Integruotos Programavimo Aplinkos
- **IDE** - vieninga aplinka, kurioje galima atlikti visus veiksmus, susijusius su programų kūrimu, t.y. šioje aplinkoje galima pasinaudoti visomis reikiamomis programomis: tekstų redaktoriumi, transliatoriumi, ryšių redaktoriumi, derintoju.
- **IDE vystymosi raida:**
  - Pirmoji - BASIC kalba panaudota IDE
  - Šiuo metu populiariausios:
    - Eclipse
    - Visual Studio
    - PHPStorm
- **IDE savybės:**
  - patogi grafinė vartotojo sąsaja;
  - automatinis teksto pabaigimas ir generavimas;
  - galimybė derinti programas;
  - patogus versijų kontrolės sistemų klientas;
  - integruotas kompiliatoriaus valdymas ar pats kompiliatorius;
  - grafinis programos struktūros vaizdavimas.

## Scrum
- **Agile Hierarchija**
  - Systems Thinking
  - Lean
  - Agile
  - Scrum
- **Agile Metodai**
  - Scrum,
  - Kanban,
  - Extreme Programming,
  - Lean Software Development,
  - DSDM Atern,
  - Crystal, including Crystal Clear,
  - Unified Process, pvz. RUP, AUP, OUP,
  - Kiti metodai.
- **Scrum metodologija**
  - Product backlog
  - Sprint backlog
  - Sprint (~2 weeks)
    - Daily Scrum (24h)
  - Potentially Shippable product increment
- **Redmine:**
  - Užduočių paskirstymas: Scrum board
  - Klaidų registravimas: New Issue

## Versijavimas
- To reikia, nes:
  - Išlaikoma kodo pakeitimo istorija su komentarais
  - Naujos funkcijos fiksuojamos šakoje
- Pagrindinis tikslas - pasiekti, kad būtų lengva atsekti kokie darbai kokioje versijoje realizuoti, prie ko dirbama, kada testuojama, kokie darbai skirti ateities versijoms.
- Populiarios sistemos:
  - cvs
  - svn
  - git
  - mercurial
- Git privalumai:
  - Patogus darbas su šakomis **(branch)**
  - Aiškus kodo suliejimas **(merge)**
- Git veikimo principas:
  - Tekstinių failų versijavimas
  - Veikia aplanko lygyje
- Šakų struktūra:
  - Master
  - Testing
  - Develop
  - HotFix
  - Features...
<hr>
- **Fiksuojami (commit)** tik pilni darbai. Vienas darbas mantyje turėtų atitinkamai turėti vieną darbą GIT. Kiekvieno darbo fiksavimo pavadinime rašome užduoties (redmine task iš scrum board „Product backlog items“, t.y. backlog darbai) numerį ir pavadinimą (pvz.: #5891 Elementų sąrašas).
<br><br>
- Jei darbo vienu ypu užbaigti neišeina, reikėtų susikurti darbui **šaką (branch)** (patartina naudoti darbo numerį mantyje) ir į ją sudėti pakeitimus darbui. Vėliau pabaigus darbą būtų daromas fiksavimo pakeitimas (amend commit) ir visi darbo pakeitimai liktų po vienu fiksavimu (commit).
<br><br>
- Visi naujos versijos darbai turėtų būti fiksuojami (commit) į **plėtojimo (develop)** šaką (branch). Tai šaka (branch) kurioje daromi funkcionalumo pakeitimo/kurimo darbai. Pirmiausiai daromi aukščiausio prioriteto artimiausios versijos darbai, todėl plėtojimo (develop) šaka (branch) visada yra panašiausia į artimiausią versiją. Kai daromi visi naujos versijos darbai turi prasidėti testavimo fazė. Tuo tikslu plėtojimo (develop) šaka (branch) jungiama (merge)  su testavimo (testing) šaka (branch).
<br><br>
- **Testavimo (testing)** šakoje (branch) daromi tik pataisymai. Naujo funkcionalumo realizuoti šioje šakoje (branch) negalima. Šaka (branch) skirta ištaisyti klaidas atsiradusias realizuojant naujas sistemos funkcijas prieš ją išleidžiant. Ją galima vadinti neištestuota versija. Po to, kai visos klaidos ištaisomos šaka (branch) jungiama (merge) su pagrindine (master) šaka (branch) ir su plėtojimo šaka (branch), kad funkcionalumo pataisymai nedingtų su nauja versija.
<br><br>
- **Pagrindinėje (master)** šakoje (branch) turi būti ištestuota pilnai funkcionuojanti versija.
Įjungus testavimo (testing) šaką (branch) į pagrindinę (master) turi būti nurodyta žymė (tag) su versijos numeriu. Tiesiogiai į pagrindinę (master) šaką (branch) pakeitimai nedaromi.
<br><br>
- Jei išleistoje versijoje randama klaida ir negalima laukti iki kitos versijos išleidimo iš atitinkamos versijos pagrindinėje (master) šakoje (branch) kuriama **pataisos (hotfix)** šaka (branch). Joje ištaisomos klaidos, ištestuojami pakeitimai. Kai viskas atlikta, šaka (branch) sujungiama su pagrindine (master) šaka (branch) jei tai paskutinės išleistos versijos pataisymai ir su plėtojimo (develop) šaka (branch). Taisyti ne paskutinę versiją nepatartina, nes tokiu atveju teks leisti visų vėlesnių versijų pataisas (hotfix) – geriau pataisyti klaidas paskutinėje versijoje ir atnaujinti ją klientui.
<hr>
- `git init .` inicijuoja versijavimo sistemą
- `git add .` prideda failų pakeitimus į lokalią pakeitimų kopiją (staging)
- `git commit -m "..."` perkelia pakeitimus į repo
- `git clone` kopijuoja remote repo
- `git push` įkelia pakeitimus į remote repo
- `git merge` šakos prijungimas prie kitos
- `.gitignore` būdas nurodyti sistemai, kurių failų netraukti į repo
<hr>
- **Git Extensions** - grafinėvartotojo sąsaja git
- **GitLab** - programinio kodo versijavimo specializuota saugykla
- **GitHub** - programinio kodo versijavimo specializuota saugykla

## Testavimas
- Testavimo procesas užtikrina, kad sukurtas produktas atitiks kliento iškeltus reikalavimus ir programinės įrangos savybės veiks tinkamai.
- **Kodėl testuoti?**
  - Su PHP kuriami ne tik "interneto puslapiai", bet ir sudėtingos verslo sistemos;
  - Prevencinė priemonė klaidų atsiradimui;
  - Kliento nuostoliai;
  - Testais padengtą kodą saugiau pertvarkyti;
  - Padeda išvengti stresinių situacijų prieš paleidimą.
- **Ką testuoti?**
  - Kritines vietas;
  - Dažnai keičiamą kodą;
  - Vietas, kur aptinkamos klaidos;
  - Viską.
- **Kada testuoti?**
  - Prieš rašant kodą (TDD, BDD);
  - Parašius kodą;
  - Aptikus klaidą.
- **Kaip testuoti?**
  - Nepersistengiant!;
  - Testai turi būti kuo paprastesni;
  - Testai turi būti paleidžiami kuo paprasčiau;
  - Testai turi veikti maksimaliai greitai;
  - Testai turi būti lengvai suprantami, lengvai taisomi.
- **Bendri pastebėjimai**
  - Rašyti 100% kodo padengimo testus – beprasmiška;
  - Netestuokit tik tam, kad testuoti - iškelkite testams konkrečius tikslus;
  - Metodo testas turi simuliuoti ne tik sėkmingus atvejus, bet ir klaidas.
  <br><br>
- **TDD** *Test-driven development orientuotas į developerio sprendimus kaip turi programa veikti; Paremtas iteratyviu **Unit** testų rašymu*
- **BDD** *Behavior-driven development orientuotas į vartotojo lūkesčius kaip turi programa elgtis; Paremtas iteratyviu **Acceptance** testų rašymu*
- Įrankiai: *PHPUnit; BeHat; Codeception.*

### Testų tipai
- Vienetiniai (**Unit**)
  - Testuoja kodo vienetus, t.y., mikro funkcionalumą, kurį galima paleisti nepriklausomai nuo programos sukuriamos būsenos, turintis apibrėžtą input/output interfeisą. *Paprastai tai - metodai*
  - Užtikrina teisingą kodo veikimą;
  - Supaprastina kodo perrašymą;
  - Jeigu neįmanoma testuoti visko - svarbu, kad testavimui skiramas laikas būtų tikslingas.
  - *PHPUnit, Karma*
- **Integration**:  
  - Atskirų komponentų integracijos testavimas;
  - Naudingi, kai nepasitikima komponento Unit testais;
  - Tingima rašyti Unit testus.
  - *PHPUnit*
- **Functional**
  - Funkcionalumo testavimas per vartotojo sąsają;
  - Testuojama ar nuorodos grąžina tai, ko tikimės;
  - Norint užtikrinti, kad vartotojo sąsaja grąžina tai, ko tikimės.
  - Crawleris + Unit test runneris: *Symfony2 WebTestCase; PHPUnit + CURL;*
- **Acceptance**
  - Testai tikrinantys ar sistema atitinka funkcinius reikalavimus;
  - Užtikrina ne tik vartotojo sąsajos funkcionalumą bet ir atlieka papildomus sąsajos tikrinimus:
    - Ar sąsajos elementai vietose ir funkcionuoja;
    - Ar teisignai veikia JavaScript;
    - Ar tenkina programos “performance”.
  - Kuriami įrankiai, kuriais gali pasinaudoti ir ne tik programuotojai: *Selenium IDE; Codeception; Mink.*
- **Code Review**
  - Rankinis kodo tikrinimas;
  - Reikalingas kompetetingas žmogus;
  - Padeda aptikti architektūrines klaidas.

### Apibendrinimas
- Visos šios testavimo metodikos padeda išvengti netikėtumų keičiant kodą;
- Apjungus automatinius testus su tęstine integracija (continuous integration), turėsime aplinką greitai reaguojančią į sugadintą kodą;
- Turėdami klaidų prevenciją galim pasiekti continuous delivery;
- Nuo continuous delivery nedaug trūksta iki continuous deployment;
- Testai leidžia ramiau miegoti.
