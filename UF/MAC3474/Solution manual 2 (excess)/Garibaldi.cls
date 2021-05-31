\newcommand{\Classname}{Garibaldi}
\newcommand{\lastmodifieddate}{2010/04/13; 09:43AM}
\newcommand{\versionnumber}{v0.1}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{\Classname}[\lastmodifieddate\space\versionnumber]

\newif\if@cropmarkson \@cropmarksontrue

\setlength{\paperheight}{247truemm}
\setlength{\paperwidth}{174truemm}

 \DeclareOption{draft}{\PassOptionsToPackage{draft}{graphicx}}
 \DeclareOption{a4paper}{\PassOptionsToPackage{a4}{crop}}
 \DeclareOption{centre}{\PassOptionsToPackage{center}{crop}}
 \DeclareOption{crop}{\PassOptionsToPackage{cam}{crop}\global\@cropmarksontrue}
 \DeclareOption{nocrop}{\PassOptionsToPackage{off}{crop}\global\@cropmarksonfalse}
 \DeclareOption{info}{\PassOptionsToPackage{info}{crop}}
 \DeclareOption{noinfo}{\PassOptionsToPackage{noinfo}{crop}}

\ExecuteOptions{a4paper,crop,info}
\ProcessOptions

\@twosidetrue
\@mparswitchtrue

\RequirePackage[LY1]{fontenc}
\RequirePackage[LY1,mtbold]{mathtime}
\RequirePackage{graphicx,crop,amsmath,array,grid,lenval,amssymb,Times,dcolumn,amsthm,soul,floatpag,xrlocal,stfloats,fancybox,index}
%\RequirePackage{soul}

\newcommand{\@ptsize}{0}
\let\@bls\baselineskip

\renewcommand{\normalsize}{%
\@setfontsize{\normalsize}{11\p@}{14\p@}
\abovedisplayskip 10\p@ \@plus 2\p@ \@minus 3\p@
\abovedisplayshortskip \z@ \@plus 3\p@
\belowdisplayshortskip 5\p@ \@plus 2\p@ \@minus 1\p@
\let\@listi\@listI
\belowdisplayskip\abovedisplayskip}\normalsize

\newcommand{\small}{%
\@setfontsize{\small}{9\p@}{11\p@}
\abovedisplayskip 8\p@ \@plus 3\p@ \@minus 4\p@
\abovedisplayshortskip \z@ \@plus 2\p@
\belowdisplayshortskip 4\p@ \@plus 3\p@ \@minus 2\p@
\def\@listi{\leftmargin\leftmargini
            \topsep 6\p@ \@plus 3\p@ \@minus 2\p@
            \parsep 4\p@ \@plus 2\p@ \@minus 1\p@
            \itemsep\parsep}
\belowdisplayskip\abovedisplayskip}

\newcommand{\footnotesize}{%
\@setfontsize{\footnotesize}{8\p@}{10\p@}
\abovedisplayskip 6\p@ \@plus 3\p@ \@minus 4\p@
\abovedisplayshortskip \z@ \@plus 1\p@
\belowdisplayshortskip 4\p@ \@plus 3\p@ \@minus 2\p@
\def\@listi{\leftmargin\leftmargini
            \topsep 4\p@ \@plus 2\p@ \@minus 2\p@
            \parsep 2\p@ \@plus 1\p@ \@minus 1\p@
            \itemsep\parsep}
\belowdisplayskip\abovedisplayskip}

\newcommand{\scriptsize}{\@setfontsize{\scriptsize}{6\p@}{8\p@}}
\newcommand{\tiny}{\@setfontsize{\tiny}{6.5\p@}{9\p@}}
\newcommand{\little}{\@setfontsize{\little}{7\p@}{9\p@}}
\newcommand{\large}{\@setfontsize{\large}{11\p@}{13\p@}}
\newcommand{\Large}{\@setfontsize{\Large}{14\p@}{16\p@}}
\newcommand{\LARGE}{\@setfontsize{\LARGE}{16\p@}{18\p@}}
\newcommand{\huge}{\@setfontsize{\huge}{24\p@}{24\p@}}
\newcommand{\Huge}{\@setfontsize{\Huge}{25\p@}{27\p@}}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}

\setlength{\lineskip}{1\p@}
\setlength{\normallineskip}{1\p@}
\renewcommand{\baselinestretch}{}

\setlength{\parskip}{\z@}
\setlength{\parindent}{1em}

\setlength{\smallskipamount}{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength{\medskipamount}{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength{\bigskipamount}{12\p@ \@plus 4\p@ \@minus 4\p@}

\postdisplaypenalty     0
\interlinepenalty       0
\@lowpenalty            51
\displaywidowpenalty    100
\@medpenalty            151
\@highpenalty           301
\brokenpenalty          10000
\clubpenalty            10000
\widowpenalty           10000
\predisplaypenalty      10000

\lefthyphenmin=3
\righthyphenmin=3

\hyphenation{Chapters Chapter Sections Section Figures Figure Tables Table Equations Equation}

\newcommand{\nohyphens}{\hyphenpenalty=10000\exhyphenpenalty=10000\relax}

\setlength{\headheight}{8.35\p@}
\setlength{\topmargin}{38.5\p@}
\addtolength{\topmargin}{-1in}

\setlength{\topskip}{9.28\p@}
\setlength{\headsep}{21\p@}
\addtolength{\headsep}{-\topskip}

\setlength{\footskip}{28\p@}
\setlength{\maxdepth}{0.5\topskip}

\setlength{\textwidth}{30pc}
\setlength{\textheight}{39\baselineskip}
\addtolength{\textheight}{\topskip}

\setlength{\oddsidemargin}{54\p@}
\addtolength{\oddsidemargin}{-1in}
\setlength{\@tempdima}{\paperwidth}
\addtolength{\@tempdima}{-\textwidth}
\addtolength{\@tempdima}{-54\p@}
\setlength{\evensidemargin}{\@tempdima}
\addtolength{\evensidemargin}{-1in}

\setlength{\marginparsep}{24\p@}
\setlength{\marginparpush}{5\p@}
\setlength{\marginparwidth}{5pc}

\setlength{\columnsep}{\z@}
\setlength{\columnseprule}{\z@}

\newcommand{\bookname}{Book}
\newcommand{\abstractname}{Abstract}
\newcommand{\keywordsname}{Keywords}
\newcommand{\refname}{References}
\newcommand{\contentsname}{Contents}
\newcommand{\listfigurename}{List of Figures}
\newcommand{\listtablename}{List of Tables}
\newcommand{\figurename}{Figure}
\newcommand{\tablename}{Table}
\newcommand{\partname}{PART}
\newcommand{\chaptername}{Chapter}
\newcommand{\appendixname}{Appendix}
\newcommand{\bibname}{Bibliography}
\newcommand{\indexname}{Index}
\newcommand{\@chapapp}{\chaptername}

\newcounter{book}
\newcounter{part}
\newcounter{chapter}
\newcounter{section}[chapter]
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\newcounter{figure}[chapter]
\newcounter{table}[chapter]

\renewcommand{\thebook}{\Roman{book}}
\newcommand{\thepage}{\arabic{page}}
\renewcommand{\thepart}{\Roman{part}}
\renewcommand{\thechapter}{\arabic{chapter}}
\renewcommand{\thesection}{\thechapter.\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\renewcommand{\theparagraph}{\thesubsubsection.\arabic{paragraph}}
\renewcommand{\thesubparagraph}{\theparagraph.\arabic{subparagraph}}
%\renewcommand{\theequation}{\thechapter.\arabic{equation}}

%\@addtoreset{equation}{section}
\def\theequation{\thechapter.\arabic{equation}}

\newif\if@mainmatter \@mainmattertrue

\newcommand{\frontmatter}{%
\clearpage%
\@mainmatterfalse%
\pagenumbering{roman}}

\newcommand{\mainmatter}{%
\clearpage%
\@mainmattertrue%
\pagenumbering{arabic}}

\newcommand{\backmatter}{%
\clearpage%
\@mainmatterfalse}

\newcommand{\clearemptydoublepage}{\newpage{\pagestyle{empty}\cleardoublepage}}

%\sodef\track{}{0.10em}{0.5em}{0\p@}

\def\part{\clearpage\thispagestyle{empty}\secdef\@part\@spart}

\def\zero{zero}
\def\one{one}
\def\two{two}
\def\three{three}
\def\four{four}
\def\five{five}
\def\six{six}
\def\seven{seven}
\def\eight{eight}
\def\nine{nine}
\def\ten{ten}
\def\eleven{eleven}
\def\twelve{twelve}
\def\thirteen{thirteen}
\def\fourteen{fourteen}
\def\fifteen{fifteen}

\def\@numinwords#1{\ifcase\number#1
\zero\or \one\or \two\or \three\or \four\or \five\or \six\or \seven\or \eight\or \nine\or \ten\or \eleven\or \twelve\or \thirteen\or \fourteen\or \fifteen\else\@ctrerr\fi}

\def\wordcounter#1{\expandafter\@numinwords\csname c@#1\endcsname}

%\renewcommand{\thepart}{\wordcounter{part}}

\def\@part[#1]#2{%
\ifnum\c@secnumdepth>-2\relax
\refstepcounter{part}
\addcontentsline{toc}{part}{Part~\protect\numberline{\thepart}#1}
\else
\addcontentsline{toc}{part}{#1}
\fi
\begingroup%
\parindent\z@\centering%
\begin{minipage}[t][153pt]{\textwidth}
\vspace*{-12.1pt}\par%
{\fontsize{18}{18}\selectfont\bfseries\centering{Part~\thepart}\par}
\vspace*{9pt}\par%
{\fontsize{16}{19}\selectfont\centering{#1}\par}
\vspace*{0pt}
\end{minipage}
\endgroup\@afterindentfalse
\@afterheading}

\def\@spart#1{%
\addcontentsline{toc}{part}{{\thechapter}#1}
\begingroup
\parindent\z@
\vspace*{16pt}
{\fontsize{21}{23}\selectfont\hspace*{7pc}#1\par}
\clearemptydoublepage
\endgroup}

\def\chapter{\clearpage\thispagestyle{plain}\global\@topnum\z@
\secdef\@chapter\@schapter}

\def\@chapter[#1]#2#3{%
\pagestyle{headings}%
\ifnum\c@secnumdepth>\m@ne%
\refstepcounter{chapter}%
\typeout{^^J\@chapapp\space\arabic{chapter}:}%
\addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}#1}%
\else%
\addcontentsline{toc}{chapter}{#1}%
\fi%
\chaptermark{#1}%
\@makechapterhead{#2}{#3}%
\@afterindentfalse%
\@afterheading}

\def\@schapter#1{%
\pagestyle{pet}
\chaptermark{#1}
\@makeschapterhead{#1}
\@afterindentfalse
\@afterheading}

\newlength\auskip
\setlength{\auskip}{0pt}

\def\@makechapterhead#1#2{%
\begingroup%
\parindent\z@\centering%
\begin{minipage}[t][153pt]{\textwidth}
\vspace*{-12.5pt}\par%
{\fontsize{18}{18}\selectfont\bfseries\centering{\thechapter}\par}
\vspace*{9pt}\par%
{\fontsize{16}{19}\selectfont\centering{#1}\par}
\vspace*{20pt}
\centerline{\fontsize{10}{12}\selectfont\begin{tabular}{@{}c@{}}
#2
\end{tabular}}
\end{minipage}
\endgroup}

\def\aspace{\vspace*{5.75pt}}

\def\@makeschapterhead#1{%
\begingroup%
\parindent\z@\centering%
\begin{minipage}[t][153pt]{\textwidth}
\vspace*{-12.5pt}\par%
\phantom{{\fontsize{18}{18}\selectfont\bfseries\centering{\thechapter}}}%
\vspace*{9pt}\par%
{\fontsize{16}{19}\selectfont\centering{#1}\par}
\vspace*{0pt}
\end{minipage}
\endgroup%
\pagestyle{pet}}

\font\rhfont=CMR10 scaled 01050

\def\ps@headings{%
\def\@oddfoot{}
\def\@evenfoot{}
\def\@oddhead{\Gd@draw{\headsep}%
\vbox{\hbox to \textwidth{\hfill{\fontsize{10}{10}\selectfont\itshape\thesection\ignorespaces\enskip\ignorespaces\rightmark\vphantom{y}}\hfill\llap{\fontsize{10}{10}\selectfont\thepage}}}}
%\vbox{\hbox to \textwidth{\hfill{\fontsize{10}{10}\selectfont\itshape\thesection\ignorespaces\enskip\ignorespaces\rightmark\vphantom{y}}\hfill\llap{\fontsize{10}{10}\selectfont\thepage}}}}
\def\@evenhead{\Gd@draw{\headsep}%
\vbox{\hbox to \textwidth{\rlap{\fontsize{10}{10}\selectfont\thepage}\hfill{\fontsize{10}{10}\selectfont\itshape\ignorespaces\enskip\ignorespaces\leftmark\vphantom{y}}\hfill}}}
%\vbox{\hbox to \textwidth{\rlap{\fontsize{10}{10}\selectfont\thepage}\hfill{\fontsize{10}{10}\selectfont\itshape\thechapter\ignorespaces\enskip\ignorespaces\leftmark\vphantom{y}}\hfill}}}
\let\@mkboth\markboth%
\def\chaptermark##1{\markboth{{##1}}{{##1}}}
\def\sectionmark##1{\markright{{##1}}}}

\def\ps@spheadings{%
\def\@oddfoot{}
\def\@evenfoot{}
\def\@oddhead{\Gd@draw{\headsep}%
\vbox{\hbox to \textwidth{\hfill{\fontsize{10}{10}\selectfont\itshape\rightmark\vphantom{y}}\hfill\llap{\fontsize{10}{10}\selectfont\thepage}}}}
%\vbox{\hbox to \textwidth{\hfill{\fontsize{10}{10}\selectfont\itshape\thesection\ignorespaces\enskip\ignorespaces\rightmark\vphantom{y}}\hfill\llap{\fontsize{10}{10}\selectfont\thepage}}}}
\def\@evenhead{\Gd@draw{\headsep}%
\vbox{\hbox to \textwidth{\rlap{\fontsize{10}{10}\selectfont\thepage}\hfill{\fontsize{10}{10}\selectfont\itshape\ignorespaces\enskip\ignorespaces\leftmark\vphantom{y}}\hfill}}}
%\vbox{\hbox to \textwidth{\rlap{\fontsize{10}{10}\selectfont\thepage}\hfill{\fontsize{10}{10}\selectfont\itshape\thechapter\ignorespaces\enskip\ignorespaces\leftmark\vphantom{y}}\hfill}}}
\let\@mkboth\markboth%
\def\chaptermark##1{\markboth{{##1}}{{##1}}}
\def\sectionmark##1{\markright{{##1}}}}

\def\ps@ref{%
\def\@oddfoot{}
\def\@evenfoot{}
\def\@oddhead{\Gd@draw{\headsep}%
\vbox{\hbox to
\textwidth{\hfill{\fontsize{10}{10}\selectfont\itshape\ignorespaces
Bibliography\vphantom{y}}\hfill\llap{\fontsize{10}{10}\selectfont\thepage}}}}
\def\@evenhead{\Gd@draw{\headsep}%
\vbox{\hbox to \textwidth{\rlap{\fontsize{10}{10}\selectfont\thepage}\hfill{\fontsize{10}{10}\selectfont\itshape\ignorespaces\enskip\ignorespaces\leftmark\vphantom{y}}\hfill}}}
\let\@mkboth\markboth%
\def\chaptermark##1{\markboth{{##1}}{{##1}}}
\def\sectionmark##1{\markright{{##1}}}}

\def\ps@exe{%
\def\@oddfoot{}
\def\@evenfoot{}
\def\@oddhead{\Gd@draw{\headsep}%
\vbox{\hbox to \textwidth{\hfill{\fontsize{10}{10}\selectfont\itshape\ignorespaces Exercises\vphantom{y}}\hfill\llap{\fontsize{10}{10}\selectfont\thepage}}}}
\def\@evenhead{\Gd@draw{\headsep}%
\vbox{\hbox to \textwidth{\rlap{\fontsize{10}{10}\selectfont\thepage}\hfill{\fontsize{10}{10}\selectfont\itshape\ignorespaces\enskip\ignorespaces\leftmark\vphantom{y}}\hfill}}}
\let\@mkboth\markboth%
\def\chaptermark##1{\markboth{{##1}}{{##1}}}
\def\sectionmark##1{\markright{{##1}}}}

\def\ps@pet{%
\def\@oddfoot{}
\def\@evenfoot{}
\def\@oddhead{\Gd@draw{\headsep}%
\vbox{\hbox to \textwidth{\hfill{\fontsize{10}{10}\selectfont\itshape\rightmark\vphantom{y}}\hfill\llap{\fontsize{10}{10}\selectfont\thepage}}}}
\def\@evenhead{\Gd@draw{\headsep}%
\vbox{\hbox to \textwidth{\rlap{\fontsize{10}{10}\selectfont\thepage}\hfill{\fontsize{10}{10}\selectfont\itshape\leftmark\vphantom{y}}\hfill}}}
\let\@mkboth\markboth%
\def\chaptermark##1{\markboth{{##1}}{{##1}}}
\def\sectionmark##1{\markright{{##1}}}}

\def\ps@plain{%
\def\@oddfoot{\hfill\fontsize{10}{10}\selectfont{\thepage}\hfill}
\def\@evenfoot{\hfill\fontsize{10}{10}\selectfont{\thepage}\hfill}
\def\@oddhead{\Gd@draw{\headsep}}
\def\@evenhead{\Gd@draw{\headsep}}}

\def\ps@empty{%
\def\@oddfoot{}
\def\@evenfoot{}
\def\@oddhead{\Gd@draw{\headsep}}
\def\@evenhead{\Gd@draw{\headsep}}}

\ps@headings

\setlength{\footnotesep}{6.42\p@}
\setlength{\skip\footins}{18\p@ \@plus 2\p@ \@minus 2\p@}

\renewcommand\footnoterule{\relax}%

\newlength\footlen
\newlength\footlenb
\newlength\footlena
\newlength\footlenin
\newlength\footlenina
\newlength\footleninc
\newbox\footbox
\setlength{\footlenin}{3.1\p@}
\setlength{\footlenina}{10.1\p@}
\setlength{\footleninc}{13.5\p@}
\setlength{\footlen}{0\p@}
\setlength{\footlenb}{3.1\p@}

\newcommand\@makefntext[1]{%
\setbox\footbox=\hbox{\@makefnmark}%
\footlena\wd\footbox%
\addtolength{\footlenin}{\footlena}%
\addtolength{\footlenin}{\footlen}%
\fontsize{8}{9}\selectfont\hangindent\footlenin%
\parindent1em%
\noindent\hskip\footlen\hbox{\smash{\raisebox{-0.5pt}{\@makefnmark}}}\ignorespaces{\hspace*{3.1\p@}\ignorespaces}#1}

\newcommand\@dmakefntext[1]{%
\setbox\footbox=\hbox{\@makefnmark}%
\footlena\wd\footbox%
\addtolength{\footlenin}{\footlena}%
\addtolength{\footlenin}{\footlen}%
\fontsize{8}{9}\selectfont\hangindent\footlenina%
\parindent1em%
\noindent\hskip\footlenb\hbox{\smash{\raisebox{-0.5pt}{\@makefnmark}}}\ignorespaces{\hspace*{3.1\p@}\ignorespaces}#1}

\newcommand\@ddmakefntext[1]{%
\setbox\footbox=\hbox{\@makefnmark}%
\footlena\wd\footbox%
\addtolength{\footlenin}{\footlena}%
\addtolength{\footlenin}{\footlen}%
\fontsize{8}{9}\selectfont\hangindent\footleninc%
\parindent1em%
\noindent\hskip\footlenb\hbox{\smash{\raisebox{-0.5pt}{\@makefnmark}}}\ignorespaces{\hspace*{3.1\p@}\ignorespaces}#1}

\def\dfootnote#1{\bgroup\let\@makefntext\@dmakefntext\footnote{#1}\egroup}
\def\ddfootnote#1{\bgroup\let\@makefntext\@ddmakefntext\footnote{#1}\egroup}

\newif\if@rotate \@rotatefalse
\newif\if@rotatecenter \@rotatecenterfalse

\def\rotate{\global\@rotatetrue}
\def\endrotate{\global\@rotatefalse}

\def\rotatecenter{\global\@rotatecentertrue}
\def\endrotatecenter{\global\@rotatecenterfalse}

\def\rotstart#1{\special{ps: gsave currentpoint currentpoint translate
#1 neg exch neg exch translate}}

\def\rotfinish{\special{ps: currentpoint grestore moveto}}

\newdimen\rotdimen

\def\rotl#1{\rotdimen=\ht#1\advance\rotdimen by \dp#1
\hbox to \rotdimen{\vbox to \wd#1{\vskip\wd#1
\rotstart{90 rotate}\box #1\vss}\hss}\rotfinish}

\def\rotr#1{\rotdimen=\ht#1\advance\rotdimen by \dp#1
\hbox to \rotdimen{\vbox to \wd#1{\vskip\wd#1
\rotstart{270 rotate}\box #1\vss}\hss}\rotfinish}

\setcounter{totalnumber}{10}
\setcounter{topnumber}{5}
\setcounter{bottomnumber}{5}

\renewcommand{\topfraction}{0.921}
\renewcommand{\bottomfraction}{0.921}

\renewcommand{\textfraction}{0.079}
\renewcommand{\floatpagefraction}{0.887}

\renewcommand{\dbltopfraction}{0.88}
\renewcommand{\dblfloatpagefraction}{0.88}

\setlength{\floatsep}{22\p@ \@plus 2\p@ \@minus 2\p@}
\setlength{\textfloatsep}{24\p@ \@plus 2\p@ \@minus 4\p@}
\setlength{\intextsep}{18\p@ \@plus 2\p@ \@minus 2\p@}

\setlength{\dblfloatsep}{18\p@ \@plus 2\p@ \@minus 2\p@}
\setlength{\dbltextfloatsep}{24\p@ \@plus 2\p@ \@minus 4\p@}

\setlength{\@fptop}{\z@}
\setlength{\@fpsep}{12\p@ \@plus 2fil}
\setlength{\@fpbot}{\z@ \@plus 1fil}

\setlength{\@dblfptop}{\z@}
\setlength{\@dblfpsep}{12\p@ \@plus 1fil}
\setlength{\@dblfpbot}{\z@ \@plus 2fil}

%\fnbelowfloat

\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{{Table\ignorespaces{\hskip3\p@}\ignorespaces\thetable.}}
\def\table{\let\@makecaption\@tablecaption\@float{table}}
\def\endtable{\end@float}
\@namedef{table*}{\let\@makecaption\@tablecaption\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}

\def\toprule{\noalign{\ifnum0=`}\fi
\hrule \@height 0.5\p@
\hrule \@height 2.0\p@ \@width \z@
\hrule \@height 0.5\p@
\hrule \@height 5.3\p@ \@width \z@
\futurelet\@tempa\@xhline}

\def\botrule{\noalign{\ifnum0=`}\fi
\hrule \@height 2.7\p@ \@width \z@
\hrule \@height 0.5\p@
\hrule \@height 2.0\p@ \@width \z@
\hrule \@height 0.5\p@
\futurelet\@tempa\@xhline}

\def\midrule{\noalign{\ifnum0=`}\fi%
\hrule \@height 2.7\p@ \@width \z@%
\hrule \@height 0.5\p@%
\hrule \@height 5.3\p@ \@width \z@%
\futurelet\@tempa\@xhline}

\newcolumntype{d}[1]{D{.}{.}{#1}}
\newcolumntype{P}[1]{>{\raggedright\let\\\@arraycr}p{#1}}
\newcolumntype{B}[1]{>{\raggedright\let\\\@arraycr}b{#1}}
\newcolumntype{F}[1]{>{\centering\let\\\@arraycr}p{#1}}
\newcolumntype{N}[1]{>{\raggedleft\let\\\@arraycr}p{#1}}
\newcolumntype{H}[1]{>{\raggedright\hangindent1em\let\\\@arraycr}p{#1}}
\def\thetable{\thechapter.\@arabic\c@table}
\def\tablestrut{\vrule height 12\p@ width \z@ depth 6\@}
\def\hrulefill{\leavevmode\leaders\hrule height 0.25\p@\hfill\kern\z@}

\def\tabnote{{\it Note:}\ignorespaces\hskip3\p@\ignorespaces}
\def\tabsource{{\it Source:}\ignorespaces\hskip3\p@\ignorespaces}

\newlength\abovecaptionskipa
\newlength\belowcaptionskipa
\newlength\botskip
\setlength{\abovecaptionskipa}{7\p@}
\setlength{\belowcaptionskipa}{3.6\p@}

\long\def\@tablecaption#1#2{%
\fontsize{11}{14}\selectfont\raggedright\itshape%
{\rm #1}\ignorespaces{\hskip3\p@}\ignorespaces{#2}\strut\par%
\vskip\belowcaptionskipa}

\def\tnote#1{{Note}:\ignorespaces\hspace*{8\p@}\ignorespaces#1}
\def\tnotes#1{{Notes}:\ignorespaces\hspace*{8\p@}\ignorespaces#1}
\def\tsource#1{{Source}:\ignorespaces\hspace*{8\p@}\ignorespaces#1}
\def\tsources#1{{Sources}:\ignorespaces\hspace*{8\p@}\ignorespaces#1}
\def\source#1{\ignorespaces\hspace*{8\p@}\ignorespaces#1}


\newdimen\tempdime
\newbox\tempbox
\newenvironment{processtable}[3]{\setbox\tempbox=\hbox{\fontsize{10}{11}\selectfont#2}%
\tempdime\wd\tempbox\@processtable{#1}{#2}{#3}{\tempdime}}

\newenvironment{@processtable}[4]{%
\if@rotate
\parindent\z@\centering
\setbox4=\vbox to \textwidth{\vss\hbox to \textheight{\hss%
\begin{minipage}{#4}
\caption{#1}\fontsize{10}{11}\selectfont{#2}
\vskip6.39\p@\noindent
\if!#3!\setlength{\botskip}{-14.3\p@}\else\setlength{\botskip}{-6.1\p@}\fi%
\parbox{#4}{\fontsize{10}{11}\selectfont#3\par}
\vspace*{\botskip}
\end{minipage}\hss}\vss}
\else
\setbox4=\hbox to \textwidth{\vbox{\begin{center}%
\vspace*{2\p@}%
\begin{minipage}{#4}%
\caption{#1}\fontsize{10}{11}\selectfont{#2}%
\vskip6.39\p@\noindent%
\parbox{#4}{\fontsize{10}{11}\selectfont#3\par}%
\if!#3!\setlength{\botskip}{-14.8\p@}\else\setlength{\botskip}{-6.5\p@}\fi%
\vspace*{\botskip}%
\end{minipage}\end{center}%
}}%
\fi
\if@rotate\rotl{4}\else\box4\fi}
{\relax}

\def\colhead#1{\multicolumn{1}{l}{\begin{tabular}[b]{@{}l@{}}#1\end{tabular}}}
\def\ccolhead#1{\multicolumn{1}{c}{\begin{tabular}[b]{@{}c@{}}#1\end{tabular}}}
\def\fcolhead#1{\multicolumn{1}{@{}l}{\begin{tabular}[b]{@{}l@{}}#1\end{tabular}}}
\def\lcolhead#1{\multicolumn{1}{l@{}}{\begin{tabular}[b]{@{}l@{}}#1\end{tabular}}}
\def\lccolhead#1{\multicolumn{1}{l@{}}{\begin{tabular}[b]{@{}c@{}}#1\end{tabular}}}
\def\spanhead#1{\begin{tabular}[b]{@{}l@{}}#1\end{tabular}}

\setlength{\arraycolsep}{0.5em}
\setlength{\tabcolsep}{0.5em}
\setlength{\arrayrulewidth}{0.5\p@}
\setlength{\doublerulesep}{2.5\p@}
\renewcommand{\arraystretch}{1}

\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{{Figure~\thefigure.}}
\def\figure{\@float{figure}}
\def\endfigure{\end@float}
\@namedef{figure*}{\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}
\def\thefigure{\thechapter.\@arabic\c@figure}


%\newcommand{\figpath}[1]{\graphicspath{{f:/Production/Newgen/Books/Cambridge/UK/Garibaldi/Process/Artworks/#1/}}}
%\newcommand{\figpath}[1]{\graphicspath{{g:/Production/Newgen/Cambridge/Vandongen/Process/Artworks/#1/}}}
\newcommand{\figpath}[1]{\graphicspath{{Z:/CUP/cupuk/Garibaldi280110/Artwork/Artwork-for-Production/#1/}}}

\long\def\@makecaptionchap#1#2{%
\vskip\abovecaptionskipa\fontsize{10}{11}\selectfont\raggedright%
\sbox\@tempboxa{{#1}\ignorespaces{\hskip5\p@}\ignorespaces#2}%
\ifdim\wd\@tempboxa>\hsize
{\hskip18\p@\hangindent18\p@\raggedright\rightskip18\p@%
{#1}\ignorespaces\hskip5\p@\ignorespaces{#2}\par}%
\else
\hb@xt@\hsize{\hfill{#1}\ignorespaces\hskip5\p@\ignorespaces{#2}\hfill\par}%
\par\fi}%

\newdimen\figdime
\newdimen\capdime
\newbox\figbox

\newenvironment{processfigure}[2]{%
\setbox\figbox=\hbox{#1}
\figdime\wd\figbox
\parindent\z@\centering
\if@rotate
\thisfloatpagestyle{empty}
\setbox4=\vbox to \textwidth{\vss\hbox to \textheight{\hss%
\begin{minipage}{\textheight}%
\centering{#1}{#2}%
\end{minipage}\hss}\vss}%
\else%
\let\@makecaption\@makecaptionchap%\@float{figure}
\setbox4=\hbox to \textwidth{\vbox{\begin{center}%
\vspace*{0\p@}%
\begin{minipage}{\textwidth}%
\centering{#1}{#2}%
\end{minipage}\end{center}%
\vspace*{-8.5\p@}}}
\fi
\if@rotate\rotl{4}\else\box4\fi}
{\relax}

\def\alp{\hspace*{0.4em}}

\def\labelenumi{({\rm\arabic{enumi})}}
\def\labelpenumi{{\rm\arabic{enumi}}}
\def\labelenumii{{\rm\alph{enumii}.}}
\def\labelenumiii{{\rm\roman{enumiii}}}
\def\labelenumiv{{\rm\Alph{enumiv}}}

\def\theenumi{(\arabic{enumi})}
\def\thepenumi{\arabic{enumi}}
\def\theenumii{\alph{enumii}.}
\def\theenumiii{\roman{enumiii}}
\def\theenumiv{\Alph{enumiv}}

\def\p@enumii{\theenumi}
\def\p@enumiii{\theeumi(\theenumii)}
\def\p@enumiv{\p@enumiii\theenumiii}

\setlength{\leftmargini}{\z@}
\let\leftmargin\leftmargini
\setlength{\leftmarginii}{\z@}
\setlength{\leftmarginiii}{\z@}
\setlength{\leftmarginiv}{\z@}
\setlength{\leftmarginv}{\z@}
\setlength{\leftmarginvi}{\z@}

\def\@listi{
\leftmargin\leftmargini
\topsep 6.5\p@ \@plus 2\p@
\let\@listi\@listI}\@listi

\def\@listii{\leftmargin\leftmarginii%
\topsep\z@}

\def\@flistii{\leftmargin\leftmarginii%
\topsep 6\p@ \@plus 2\p@}

\def\@listiii{\leftmargin\leftmarginiii}
\def\@listiv{\leftmargin\leftmarginiv}
\def\@listv{\leftmargin\leftmarginv}
\def\@listvi{\leftmargin\leftmarginvi}

\def\enumargs{%
\parsep         \z@
\partopsep      \z@
\itemsep        \z@
\labelsep       5\p@
\rightmargin    \z@
\listparindent  \z@
\itemindent     \z@
\leftmargin     \z@}

\def\penumargs{%
\parsep         \z@
\partopsep      \z@
\itemsep        \z@
\labelsep       4.5\p@
\rightmargin    \z@
\listparindent  \z@
\itemindent     \z@
\leftmargin     \z@}

\def\enumerate{%
\@ifnextchar[{\@numerate}{\@numerate[0.]}}

\def\parenumerate{%
\@ifnextchar[{\@pnumerate}{\@pnumerate[0.]}}

\def\@numerate[#1]{%
\vspace*{1pt}\ifnum\@enumdepth > 3\@toodeep\else
\advance\@enumdepth\@ne
\edef\@enumctr{enum\romannumeral\the\@enumdepth}
\list{\csname label\@enumctr\endcsname}{%
\enumargs\fontsize{11}{14}\selectfont%
\setlength{\leftmargin}{\csname leftmargin\romannumeral\the\@enumdepth\endcsname}
\usecounter{\@enumctr}
\settowidth{\labelwidth}{#1}
\addtolength{\leftmargin}{\labelwidth}
\addtolength{\leftmargin}{\labelsep}
\def\makelabel##1{\hss\llap{##1}}}
\fi}\let\endenumerate\endlist

\def\@pnumerate[#1]{%
\let\labelenumi\labelpenumi%
\let\theenumi\thepenumi%
\ifnum\@enumdepth > 3\@toodeep\else
\advance\@enumdepth\@ne
\edef\@enumctr{enum\romannumeral\the\@enumdepth}
\list{\csname label\@enumctr\endcsname}{%
\penumargs\fontsize{10}{13}\selectfont%
\setlength{\leftmargin}{\csname leftmargin\romannumeral\the\@enumdepth\endcsname}
\usecounter{\@enumctr}
\settowidth{\labelwidth}{#1}
\addtolength{\leftmargin}{\labelwidth}
\addtolength{\leftmargin}{\labelsep}
\def\makelabel##1{\hss\llap{\thechapter.##1}}}
\fi}\let\endparenumerate\endlist

\def\nenumargs{%
\parsep         \z@
\partopsep      \z@
\itemsep        6\p@
\labelsep       4\p@
\rightmargin    \z@
\listparindent  \z@
\itemindent     \z@
\leftmargin             1em}

\def\nparlist{%
\@ifnextchar[{\@enumerate}{\@enumerate[0.]}}

\def\@enumerate[#1]{%
\ifnum\@enumdepth > 3\@toodeep\else
\advance\@enumdepth\@ne
\edef\@enumctr{enum\romannumeral\the\@enumdepth}
\list{\csname label\@enumctr\endcsname}{%
\nenumargs\fontsize{10.5}{12}\selectfont%
\setlength{\leftmargin}{\csname leftmargin\romannumeral\the\@enumdepth\endcsname}
\usecounter{\@enumctr}
\settowidth{\labelwidth}{#1}
\addtolength{\leftmargin}{\labelwidth}
\addtolength{\leftmargin}{\labelsep}
\def\makelabel##1{\hss\llap{##1}}}
\fi}\let\endnparlist\endlist

\def\labelitemi{\hspace*{4\p@}\raisebox{-0.25pt}{$\fontsize{11}{14}\selectfont\bullet$}}
\def\labelitemii{\hspace*{4\p@}\raisebox{-0.25pt}{$\fontsize{11}{14}\selectfont\bullet$}}
\def\labelitemiii{$\bullet$}
\def\labelitemiv{$\bullet$}

\def\itemargs{%
\leftmargin     -8.75\p@
\parsep         \z@
\partopsep      \z@
\itemsep        0\p@
\labelsep       4.5\p@
\rightmargin    \z@
\listparindent  \z@
\itemindent     \z@}

\def\fitemargs{%
\leftmargin     -8.75\p@
\topsep         6\p@ \@plus 2\p@
\parsep         \z@
\partopsep      \z@
\itemsep        0\p@
\labelsep       4\p@
\rightmargin    \z@
\listparindent  \z@
\itemindent     \z@
\fontsize{9}{11}\selectfont}

\def\pitemargs{%
\leftmargin     -17.3\p@
\topsep         6\p@ \@plus 2\p@
\parsep         \z@
\partopsep      \z@
\itemsep        \z@
\labelsep       4.5\p@
\rightmargin    \z@
\listparindent  \z@
\itemindent     18.5\p@}

\def\fpitemargs{%
\leftmargin     -17\p@
\topsep         6\p@ \@plus 2\p@
\parsep         \z@
\partopsep      \z@
\itemsep        \z@
\labelsep       4\p@
\rightmargin    \z@
\listparindent  \z@
\itemindent     17\p@
\fontsize{9}{11}\selectfont}

\def\itemize{%
\@ifnextchar[{\@itemize}{\@itemize[\hspace*{5\p@}\raisebox{-0.25pt}{\small$\bullet$}]}}

\def\paritemize{%
\@ifnextchar[{\@pitemize}{\@pitemize[\hspace*{4\p@}\raisebox{-0.25pt}{\small$\bullet$}]}}

\def\@itemize[#1]{%
\vspace*{1\p@}\ifnum\@itemdepth>3\@toodeep\else
\advance\@itemdepth\@ne
\edef\@itemctr{item\romannumeral\the\@itemdepth}
\list{\csname label\@itemctr\endcsname}{%
\fontsize{11}{14}\selectfont\itemargs%
\setlength{\leftmargin}{\csname leftmargin\romannumeral\@itemdepth\endcsname}
\settowidth{\labelwidth}{#1}
\addtolength{\leftmargin}{\labelwidth}
\addtolength{\leftmargin}{\labelsep}
\def\makelabel##1{\hss\llap{##1}}}
\fi}\let\enditemize\endlist

\def\@pitemize[#1]{%
\let\head\pbhead%
\ifnum\@itemdepth>3\@toodeep\else
\advance\@itemdepth\@ne
\edef\@itemctr{item\romannumeral\the\@itemdepth}
\list{\csname label\@itemctr\endcsname}{%
\fontsize{10.5}{12}\selectfont\pitemargs%
\setlength{\leftmargin}{\csname leftmargin\romannumeral\@itemdepth\endcsname}
\settowidth{\labelwidth}{#1}
\addtolength{\leftmargin}{\labelwidth}
\addtolength{\leftmargin}{\labelsep}
\def\makelabel##1{\hss\llap{##1}}}
\fi}\let\endparitemize\endlist

\def\pbhead#1{{\it #1}~}
\def\phead#1{{\bf #1}~}

\def\parargs{%
\parsep         \z@
\partopsep      \z@
\itemsep        \z@
\labelsep       \z@
\rightmargin    \z@
\listparindent  \z@
\itemindent     10\p@
\leftmargin     \z@}

\def\fparargs{
\parsep         \z@
\partopsep      \z@
\itemsep        \z@
\labelsep       \z@
\rightmargin    \z@
\listparindent  \z@
\itemindent     9\p@
\leftmargin     \z@
\fontsize{9}{11}\selectfont}

\newenvironment{paralist}{%
\let\head\phead%
\fontsize{10.5}{12}\selectfont%
\begingroup
\list{}{\parargs}}{\endlist\endgroup}

\newenvironment{display}{%
\fontsize{10.5}{12}\selectfont%
\begingroup\list{}{\leftmargin2em}}{\endlist\endgroup}

\newenvironment{clist}{%
\fontsize{10.5}{12}\selectfont%
\begingroup\vspace*{-15pt}%
\list{}{\itemsep3\p@}\item\centering}{\endlist\endgroup}

\def\unargs{%
\parsep         \z@
\partopsep      \z@
\itemsep        \z@
\labelsep       0\p@
\rightmargin    \z@
\listparindent  \z@
\itemindent     0\p@}

\newenvironment{unlist}{%
\vspace*{1\p@}\fontsize{10}{13}\selectfont%
\begingroup\list{}{\unargs\setlength{\leftmargin}{24pt}%
\itemindent-12pt}}%
{\endlist\endgroup}

\def\head#1{{#1}\ignorespaces~\ignorespaces}

\newenvironment{extract}%
{\vspace*{1pt}%
\topsep6.5\p@ \@plus 4\p@ \@minus 2\p@%
\list{}{\leftmargin\z@\rightmargin\leftmargin\itemsep\z@\centering}\fontsize{10}{12}\selectfont\item\relax}{\endlist}

\newenvironment{bextract}%
{\vspace*{1pt}%
\topsep6.5\p@ \@plus 4\p@ \@minus 2\p@%
\list{}{\leftmargin\z@\rightmargin\leftmargin\itemsep\z@\centering}\fontsize{9}{11}\selectfont\item\relax}{\endlist}

\newenvironment{furread}%
{\let\@listii\@flistii\let\parargs\fparargs\let\itemargs\fitemargs\let\pitemargs\fpitemargs\let\section\fsection\topsep6\p@ \@plus 4\p@ \@minus 2\p@%
\list{}{\leftmargin\z@\rightmargin\leftmargin\itemsep\z@}\fontsize{9}{11}\selectfont\item\relax\chapter*{Further Reading}}{\endlist}

\setcounter{secnumdepth}{2}

\def\@sect#1#2#3#4#5#6[#7]#8{%
\ifnum#2>\c@secnumdepth%
\let\@svsec\empty\else%
\refstepcounter{#1}%
\protected@edef\@svsec{\@seccntformat{#1}\relax}%
\fi%
\@tempskipa #5\relax%
\ifdim\@tempskipa>\z@%
\begingroup%
\ifnum#2=1%
#6{{\hskip #3\relax\@svsec}%
\interlinepenalty \@M {#8}\@@par}%
\else
\ifnum#2=2%
#6{{\hskip #3\relax\@svsec}%
\interlinepenalty \@M #8\@@par}%
\else%
#6{{\hskip #3\relax\@svsec}%
\interlinepenalty \@M #8\@@par}%
\fi\fi%
\endgroup%
\csname #1mark\endcsname{#7}%
\addcontentsline{toc}{#1}{%
\ifnum#2>\c@secnumdepth\else%
\protect\numberline{\csname the#1\endcsname}%
\fi%
#8}%
\else%
\def\@svsechd{%
#6{\hskip #3\relax\@svsec #8}%
\csname #1mark\endcsname{#7}%
\addcontentsline{toc}{#1}{%
\ifnum#2>\c@secnumdepth\else%
\protect\numberline{\csname the#1\endcsname}%
\fi%
#8}}%
\fi%
\@xsect{#5}}

\def\@ssect#1#2#3#4#5{%
\@tempskipa #3\relax
\ifdim \@tempskipa>\z@
\vspace*{-6\p@}
\begingroup
#4{\@hangfrom{\hskip #1}%
\interlinepenalty \@M #5\@@par}%
\endgroup
\else
\def\@svsechd{#4{\hskip #1\relax #5}}%
\fi\@xsect{#3}}

\def\section{%
\renewcommand{\@seccntformat}[1]{\csname the##1\endcsname{\hskip5.5\p@}\ignorespaces}
\@startsection{section}{1}{\z@}%
{-23\p@ \@plus -4\p@ \@minus -2\p@}{5\p@}%
{\reset@font\fontsize{11}{14}\selectfont\bfseries\centering}}

\def\fsection{%
\renewcommand{\@seccntformat}[1]{\csname the##1\endcsname{\quad}\ignorespaces\hspace*{-2pt}}
\@startsection{section}{1}{\z@}%
{-29\p@ \@plus -4\p@ \@minus -2\p@}{7\p@}%
{\reset@font\fontsize{12}{13}\selectfont\raggedright}}

\def\subsection{%
\renewcommand{\@seccntformat}[1]{\csname the##1\endcsname{\hskip5.5\p@}\ignorespaces}
\@startsection{subsection}{2}{\z@}%
{-23\p@ \@plus -4\p@ \@minus -2\p@}{5\p@}%
{\reset@font\fontsize{11}{14}\selectfont\bfseries\itshape\centering}}

\def\subsubsection{%
\renewcommand{\@seccntformat}[1]{\csname the##1\endcsname{\hskip5.5\p@}\ignorespaces}
\@startsection{subsubsection}{3}{\z@}%
{-16\p@ \@plus -2\p@ \@minus -1\p@}{3\p@}%
{\reset@font\fontsize{11}{14}\selectfont\itshape\centering}}

\def\paragraph{%
\renewcommand{\@seccntformat}[1]{\csname the##1\endcsname{\hskip5.5\p@}\ignorespaces}
\@startsection{paragraph}{4}{\z@}%
{-14\p@ \@plus -4\p@ \@minus -2\p@}{-5.5\p@}%
{\reset@font\fontsize{11}{14}\selectfont\bfseries\raggedright}}

\setcounter{tocdepth}{2}
\def\@pnumwidth{2em}
\def\@tocrmarg{1.55em plus 2fil}
\def\@dotsep{10000}

\def\numberline#1{\hb@xt@\@tempdima{{#1}\hfill}}

\def\@dottedtocline#1#2#3#4#5{%
\ifnum#1>\c@tocdepth\else
\vskip12\p@\@plus0.2\p@
\vskip\z@\@plus0.2\p@
{\leftskip 0\p@\relax\rightskip\@tocrmarg\parfillskip-\rightskip
\parindent 0\p@\relax\@afterindenttrue
\interlinepenalty \@M
\leavevmode\@tempdima #3\relax
\advance\leftskip\@tempdima\null\nobreak\hskip-\leftskip
{{\bf #4}}\nobreak
\leaders\hbox{$\m@th \mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
\nobreak
\hb@xt@\@pnumwidth{\hfil\normalcolor #5}
\par}
\fi}

\def\@chapterdottedtocline#1#2#3#4#5{%
\ifnum#1>\c@tocdepth\else
%\vskip6\p@\@plus0.2\p@
{\leftskip 0pt\relax\rightskip\@tocrmarg\parfillskip-\rightskip
\parindent0pt\relax\@afterindenttrue
\interlinepenalty \@M
\leavevmode\@tempdima #3\relax
\advance\leftskip\@tempdima\null\nobreak\hskip-\leftskip
{#4}\nobreak
\leaders\hbox{$\m@th \mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
\nobreak
\hb@xt@\@pnumwidth{\hfil\normalcolor #5}
\par}
\fi}


\def\@sectiondottedtocline#1#2#3#4#5{%
\ifnum#1>\c@tocdepth\else
%\vskip\z@\@plus0.2\p@
{\leftskip 16.5\p@\relax\rightskip\@tocrmarg\parfillskip-\rightskip
\parindent 16.5\p@\relax\@afterindenttrue
\interlinepenalty \@M
\leavevmode\@tempdima #3\relax
\advance\leftskip\@tempdima\null\nobreak\hskip-\leftskip
{#4}\nobreak
\leaders\hbox{$\m@th \mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
\nobreak
\hb@xt@\@pnumwidth{\hfil\normalcolor #5}
\par}
\fi}

%\newcommand{\toclea}{\@setfontsize{\toclea}{11\p@}{14\p@}}

\def\@subsectiondottedtocline#1#2#3#4#5{%
\ifnum#1>\c@tocdepth\else
\vskip\z@\@plus0.2\p@
{\leftskip 12\p@\relax\rightskip\@tocrmarg\parfillskip-\rightskip
\parindent 63\p@\relax\@afterindenttrue
\interlinepenalty \@M
\leavevmode\@tempdima #3\relax
\advance\leftskip\@tempdima\null\nobreak\hskip-\leftskip
{#4}\nobreak
\leaders\hbox{$\m@th \mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
\nobreak
\hb@xt@\@pnumwidth{\hfil\normalcolor #5}
\par}
\fi}

\newcommand*\l@part{\@dottedtocline{1}{43\p@}{18\p@}}
\newcommand*\l@chapter{\@chapterdottedtocline{1}{0\p@}{16.5\p@}}
\newcommand*\l@section{\@sectiondottedtocline{2}{0\p@}{24.9\p@}}
\newcommand*\l@subsection{\@subsectiondottedtocline{3}{32\p@}{32\p@}}
\newcommand*\l@subsubsection{\@subsectiondottedtocline{3}{0\p@}{30\p@}}
\newcommand*\l@paragraph{\@subsectiondottedtocline{4}{25\p@}{24\p@}}
\newcommand*\l@subparagraph{\@subsectiondottedtocline{4}{25\p@}{24\p@}}

\def\tableofcontents{%
\chapter*{\contentsname}%
%\thispagestyle{empty}%
\markboth{Contents}{Contents}%
\@starttoc{toc}}

\RequirePackage{natbib}

\def\bibargs{%
\topsep         \z@
\parsep         \z@
\partopsep      \z@
\itemsep        \z@
\labelsep       5\p@
\rightmargin    \z@
\listparindent  \z@
\itemindent     0\p@
\leftmargin     0pt}

\def\thebenumi{\arabic{enumi}}

\renewenvironment{thebibliography}[1]{%
\begingroup
\let\theenumi\thebenumi
\section*{References}
\vspace*{1\p@}%
\markright{References}
\list{}{%
\usecounter{enumi}
\bibargs%
\fontsize{10}{11}\selectfont%
\settowidth{\labelwidth}{#1}%
\addtolength{\leftmargin}{\labelwidth}%
\addtolength{\leftmargin}{\labelsep}%
\def\makelabel##1{\hss\llap{##1}}}}{\endlist\endgroup}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Appendix%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\ifappend

\def\appendix{\par
\let\@makechapterhead\@makeappdixhead%
\renewcommand{\thechapter}{\Alph{chapter}}
\setcounter{chapter}{0}
\appendtrue}

\def\@makeappdixhead#1{%
\begingroup%
\parindent\z@\centering%
\begin{minipage}[t][129pt]{\textwidth}
\vspace*{-12.5pt}\par%
{\fontsize{18}{18}\selectfont\bfseries\centering{\phantom{\appendixname~\thechapter}}\par}
\vspace*{7pt}\par%
{\fontsize{16}{19}\selectfont\centering{#1}\par}
\vspace*{0pt}
\end{minipage}
\endgroup}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%End Appendix%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{multicol}

\newif\if@restonecol
\def\theindex{%
\@mainmatterfalse
\columnseprule\z@\columnsep1pc
\begin{multicols}{2}[\chapter*{Index}
\vspace*{-8.6pt}]
\fontsize{8}{9}\selectfont%
\markboth{Index}{Index}
\parskip\z@\@plus0.2\p@\relax\let\item\idxitem}
\def\idxitem{\par\noindent\raggedright\hangindent 3em}
\def\subitem{\par\noindent\raggedright\hangindent 3em\hspace*{1em}}
\def\subsubitem{\par\noindent\raggedright\hangindent 3em\hspace*{2em}}
\def\endtheindex{\end{multicols}}
\def\indexspace{\par\vskip9\p@\@plus5\p@\@minus3\p@\relax}

\def\etal{\textit{et~al}}
\def\endash{--}
\def\emdash{---}

%\@flushglue 12pt plus 1fil

\setlength{\jot}{5\p@}
\mathchardef\@m=1500
\def\@mathmargin=1.5pc

\def\frenchspacing{\sfcode`\.\@m \sfcode`\?\@m \sfcode`\!\@m
\sfcode`\:\@m \sfcode`\;\@m \sfcode`\,\@m}

\frenchspacing

\vbadness=9999
\tolerance=9999
\doublehyphendemerits 10000
\doublehyphendemerits 640000
\finalhyphendemerits  1000000

\flushbottom
\onecolumn
%\language=2

\newcommand{\query}[2][0pt]{%
\marginpar{\vspace*{#1}
\fbox{\parbox{\marginparwidth}{%
\raggedright\small%
AQ:~#2\par}}}}

\def\uns{~}

\def\bb#1{{\bfseries{#1}}}
\def\cb#1{{\tt{#1}}}
\def\cbb#1{{\tt{\bfseries#1}}}

\def\sbond{\ensuremath{\raise.25ex\hbox{${-}\!\!\!\!{-}$}}\kern -.9pt}
\def\dbond{\ensuremath{\raise.25ex\hbox{=$\!$=}}}
\def\tbond{\ensuremath{\raise.20ex\hbox{${\equiv}\!\!\!{\equiv}$}}}

\newenvironment{exer}[1]{\bgroup\setcounter{equation}{0}\renewcommand{\theequation}{E\thechapter.\arabic{equation}}
\vspace*{6\p@}\section*{Exercises}\begin{parenumerate}[#1]}{\end{parenumerate}\egroup}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{figure}{0}
\setcounter{chapter}{0}


\def\stackspace{\vspace*{-1pt}}

\let\cal\mathcal

\RequirePackage{NGjulien}
\def\prob#1{\noindent{\bf#1}\ignorespaces\hskip4\p@\ignorespaces}

\sodef\track{}{0.10em}{0.5em}{0\p@}

\DeclareSymbolFont{cmletters}{OML}{cmm}{m}{it}
\DeclareMathSymbol{v}{\mathalpha}{cmletters}{`v}
\DeclareMathSymbol{w}{\mathalpha}{cmletters}{`w}

\def\ps@bib{%
\def\@oddfoot{}
\def\@evenfoot{}
\def\@oddhead{\Gd@draw{\headsep}%
\vbox{\hbox to \textwidth{\hfill{\fontsize{10}{10}\selectfont\itshape\rightmark\vphantom{y}}\hfill\llap{\fontsize{10}{10}\selectfont\thepage}}}}
%\vbox{\hbox to \textwidth{\hfill{\fontsize{10}{10}\selectfont\itshape\thesection\ignorespaces\enskip\ignorespaces\rightmark\vphantom{y}}\hfill\llap{\fontsize{10}{10}\selectfont\thepage}}}}
\def\@evenhead{\Gd@draw{\headsep}%
\vbox{\hbox to \textwidth{\rlap{\fontsize{10}{10}\selectfont\thepage}\hfill{\fontsize{10}{10}\selectfont\itshape\ignorespaces\enskip\ignorespaces\leftmark\vphantom{y}}\hfill}}}
%\vbox{\hbox to \textwidth{\rlap{\fontsize{10}{10}\selectfont\thepage}\hfill{\fontsize{10}{10}\selectfont\itshape\thechapter\ignorespaces\enskip\ignorespaces\leftmark\vphantom{y}}\hfill}}}
\let\@mkboth\markboth%
\def\chaptermark##1{\markboth{{##1}}{{##1}}}
\def\sectionmark##1{\markright{{##1}}}}

\fnbelowfloat

%\makeindex

\newtheoremstyle{theorem}
    {7pt plus 3\p@}% above space (default)
    {7pt plus 3\p@}% below space
    {\rm}% body
    {0em}% indent
    {\bfseries}% head
    {{}}% punct
    {5pt}% space
    {}% custom
\theoremstyle{theorem}

\newtheorem{definition}{Definition}%
\newtheorem*{definition*}{Definition}%
\newtheorem{theorem}{Theorem}%
\newtheorem*{theorem*}{Theorem}%
\newtheorem{lemma}{Lemma}%
\newtheorem*{lemma*}{Lemma}%
\newtheorem{example}{Example}%
\newtheorem*{example*}{Example}%
\newtheorem{corollary}{Corollary}%
\newtheorem*{corollary*}{Corollary}%
\newtheorem{remark}{Remark}%
\newtheorem*{remark*}{Remark}%

\def\ps@pheadings{%
\def\@oddfoot{}
\def\@evenfoot{}
\def\@oddhead{\Gd@draw{\headsep}%
\vbox{\hbox to \textwidth{\hfill{\fontsize{10}{10}\selectfont\itshape\rightmark\vphantom{y}}\hfill\llap{\fontsize{10}{10}\selectfont\thepage}}}}
%\vbox{\hbox to \textwidth{\hfill{\fontsize{10}{10}\selectfont\itshape\thesection\ignorespaces\enskip\ignorespaces\rightmark\vphantom{y}}\hfill\llap{\fontsize{10}{10}\selectfont\thepage}}}}
\def\@evenhead{\Gd@draw{\headsep}%
\vbox{\hbox to \textwidth{\rlap{\fontsize{10}{10}\selectfont\thepage}\hfill{\fontsize{10}{10}\selectfont\itshape\ignorespaces\enskip\ignorespaces\leftmark\vphantom{y}}\hfill}}}
%\vbox{\hbox to \textwidth{\rlap{\fontsize{10}{10}\selectfont\thepage}\hfill{\fontsize{10}{10}\selectfont\itshape\thechapter\ignorespaces\enskip\ignorespaces\leftmark\vphantom{y}}\hfill}}}
\let\@mkboth\markboth%
\def\chaptermark##1{\markboth{{##1}}{{##1}}}
\def\sectionmark##1{\markright{{##1}}}}

\newindex{authors}{ndx}{nind}{Names}
\newindex{subject}{tdx}{tind}{Terms}


\endinput
