FROM joseluzon/latex-base

RUN tlmgr update --self
RUN tlmgr install mathexam setspace adjustbox xkeyval collectbox enumitem \
    lastpage xcolor etoolbox moderncv fontawesome5 pgf multirow arydshln \
    && texhash