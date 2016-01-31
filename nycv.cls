\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nycv}[2016/01/30 A Beautiful Resume.]
\LoadClass{article}

% dependencies

\RequirePackage[explicit]{titlesec}
\RequirePackage[hmargin=1.35in, vmargin=0.9in]{geometry}
\RequirePackage[inline]{enumitem}
\RequirePackage{
  fontspec,
  xhfill,
  mdframed,
  hyperref,
  setspace,
  fancyhdr
}

% header

\newcommand{\header}[3]{
  \noindent
  {\Huge\serif\textbf{#1}}
  \vspace{8pt}\\
  {\large #2\hspace{6pt}\textcolor{gray}{#3}}  
}

% sections

\titleformat{\section}[block]{\Large\serif\bfseries\itshape}{}{0pt}{#1} 
\titleformat{\subsection}[block]{\large}{}{0pt}{\graphik#1}
\newcommand{\datedsubsection}[4] {
  \subsection*{\textbf{#1}\hspace{6pt}\emph{#2}\hfill\raisebox{.1ex}{\normalsize\thin{#3 - #4}}}
}