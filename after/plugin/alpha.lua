local alpha = require('alpha')

local militech = {
    "                                                                                                        ",
    "                                                                                                        ",
    "                                                                                                        ",
    ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;",
    ";;                                                                                                    ;;",
    ";;                                                                                                    ;;",
    ";;                                                                                                    ;;",
    ";;                                                                                                    ;;",
    ";;                                                                                                    ;;",
    ";;                                                                                                    ;;",
    ";;                          ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                          ;;",
    ";;           ;;             ;;;                                          ;;;              ;           ;;",
    ";;         ;;;;;             ;;;                                        ;;;             ;;;;;         ;;",
    ";;         ;;;;;;             ;;;                                      ;;;             ;;;;;;         ;;",
    ";;         ;;; ;;;             ;;                                      ;;             ;;; ;;;         ;;",
    ";;         ;;;  ;;;            ;;;                                    ;;;            ;;;  ;;;         ;;",
    ";;         ;;;   ;;             ;;;                                  ;;;             ;;   ;;;         ;;",
    ";;         ;;;   ;;;             ;;;                                ;;;             ;;;   ;;;         ;;",
    ";;         ;;;    ;;;             ;;                                ;;             ;;;    ;;;         ;;",
    ";;         ;;;     ;;;            ;;;                              ;;;            ;;;     ;;;         ;;",
    ";;         ;;;      ;;             ;;;                            ;;;             ;;      ;;;         ;;",
    ";;         ;;;      ;;;             ;;;                          ;;;             ;;;      ;;;         ;;",
    ";;         ;;;       ;;;             ;;;                        ;;;             ;;;       ;;;         ;;",
    ";;         ;;;        ;;;            ;;;                        ;;;            ;;;        ;;;         ;;",
    ";;         ;;;         ;;             ;;;                      ;;;             ;;         ;;;         ;;",
    ";;         ;;;         ;;;             ;;;                    ;;;             ;;;         ;;;         ;;",
    ";;         ;;;          ;;;             ;;;                  ;;;             ;;;          ;;;         ;;",
    ";;         ;;;           ;;;             ;;                  ;;;            ;;;           ;;;         ;;",
    ";;         ;;;            ;;             ;;;                ;;;             ;;            ;;;         ;;",
    ";;         ;;;             ;;             ;;;              ;;;             ;;             ;;;         ;;",
    ";;         ;;;             ;;;             ;;;            ;;;             ;;;             ;;;         ;;",
    ";;         ;;;              ;;;             ;;            ;;             ;;;              ;;;         ;;",
    ";;         ;;;               ;;;            ;;;          ;;;             ;;               ;;;         ;;",
    ";;         ;;;                ;;             ;;;        ;;;             ;;                ;;;         ;;",
    ";;         ;;;                ;;;             ;;;      ;;;             ;;;                ;;;         ;;",
    ";;         ;;;                 ;;;             ;;      ;;             ;;;                 ;;;         ;;",
    ";;         ;;;                  ;;;            ;;;    ;;;            ;;;                  ;;;         ;;",
    ";;         ;;;                   ;;             ;;;  ;;;             ;;                   ;;;         ;;",
    ";;         ;;;                   ;;;             ;;;;;;             ;;;                   ;;;         ;;",
    ";;         ;;;                    ;;;             ;;;;             ;;;                    ;;;         ;;",
    ";;         ;;;                     ;;;                            ;;;                     ;;;         ;;",
    ";;         ;;;                      ;;                            ;;                      ;;;         ;;",
    ";;         ;;;                      ;;;                          ;;;                      ;;;         ;;",
    ";;         ;;;                       ;;;                        ;;;                       ;;;         ;;",
    ";;         ;;;                        ;;;                      ;;;                        ;;;         ;;",
    ";;         ;;;                         ;;                      ;;                         ;;;         ;;",
    ";;          ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;          ;;",
    ";;                                                                                                    ;;",
    ";;                                                                                                    ;;",
    ";;                                                                                                    ;;",
    ";;                                                                                                    ;;",
    ";;                                                                                                    ;;",
    ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;",
    ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;",
    "                                                                                                        ",
    "                                                                                                        ",
    ";;;;;        ;;;;;  ; ;  ;;;;           ;;;;  ;;;;;;;;;;;;;; ;;;;;;;;;;;;   ;;;;;;;;;;;;  ;;;;      ;;;;",
    ";;;;;;;    ;;;;;;;  ; ;  ;;;;           ;;;;  ;;;;;;;;;;;;;; ;;;;          ;;;;;;;;;;;;;  ;;;;      ;;;;",
    ";;;;;;;;  ;;;;;;;;  ; ;  ;;;;           ;;;;       ;;;;      ;;;;;;;;;;;;  ;;;;           ;;;;      ;;;;",
    ";;;;;;;;;;;;;;;;;;  ; ;  ;;;;           ;;;;       ;;;;      ;;;;;;;;;;;;  ;;;;           ;;;;;;;;;;;;;;",
    ";;;;  ;;;;;;  ;;;;  ; ;  ;;;;           ;;;;       ;;;;      ;;;;          ;;;;           ;;;;;;;;;;;;;;",
    ";;;;   ;;;;   ;;;;  ; ;  ;;;;           ;;;;       ;;;;      ;;;;          ;;;;           ;;;;      ;;;;",
    ";;;;          ;;;;  ; ;  ;;;;;;;;;;;;;; ;;;;       ;;;;      ;;;;;;;;;;;;  ;;;;;;;;;;;;;  ;;;;      ;;;;",
    ";;;;          ;;;;  ; ;  ;;;;;;;;;;;;;; ;;;;       ;;;;      ;;;;;;;;;;;;  ;;;;;;;;;;;;;  ;;;;      ;;;;",
    "                                                                                                        ",
    "                                                                                                        ",
    "                                                                                                        ",
    ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;",
    "                                                                                                        ",
    "OPEN FILE EXPLORER ---------------------------------------------------------------------------- CTRL - n",
    "                                                                                                        ",
    "SEARCH DIRECTORY FOR FILES -------------------------------------------------------------------- CTRL - p",
    "                                                                                                        ",
    "RETURN TO PREVIOUS BUFFER  -------------------------------------------------------------------- CTRL - o",
    "                                                                                                        ",
    "SEARCH DIRECTORY FOR WORDS ----------------------------------------------------------------- <LEADER> fw",
    "                                                                                                        ",

}

alpha.setup {
    layout = {
        { type = "text", val = militech,
            opts = { position = "center", hl = "NormalFloat" }
        },
    }
}
