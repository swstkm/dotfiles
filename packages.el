;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;; (package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/radian-software/straight.el#the-recipe-format
;; (package! another-package
;;   :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;; (package! this-package
;;   :recipe (:host github :repo "username/repo"
;;            :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;; (package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;; (package! builtin-package :recipe (:nonrecursive t))
;; (package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see radian-software/straight.el#279)
;; (package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;; (package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;; (unpin! pinned-package)
;; ...or multiple packages
;; (unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;; (unpin! t)


;; Better bullets for Org headings
(package! org-bullets)

;; Copilot
(package! copilot
    :recipe (:host github :repo "copilot-emacs/copilot.el" :files ("*.el")))

;; Org-roam
(package! org-modern)
(package! org-roam)
(package! org-roam-ql)
(package! org-roam-bibtex)

(package! flycheck-aspell) ; spell checking
(package! calfw)           ; calendar framework
(package! calfw-org)      ; calendar framework for org
;;(package! dashboard)      ; a startup dashboard for Emacs
(package! dired-open)      ; open files in external programs
(package! dired-subtree)   ; dired subtree
(package! dirvish)        ; a better dired
(package! dmenu)          ; dmenu for Emacs: It is a dynamic menu for X11
(package! org-super-agenda) ; super agenda for org-mode
(package! ednc)           ; Emacs Desktop Notification Center
(package! emojify)        ; emoji support for Emacs
;; (package! evil-tutor)  ; evil tutorial
(package! exwm)           ; Emacs X Window Manager
(package! imenu-list)     ; a buffer list for Emacs
(package! ivy-posframe)   ; ivy posframe
(package! mw-thesaurus)
(package! org-auto-tangle)
(package! org-web-tools)
(package! ox-gemini)
(package! peep-dired)
(package! rainbow-mode)
(package! resize-window)
(package! tldr)
(package! wc-mode)
(package! beacon)
(package! clippy)
(package! minimap)
(package! olivetti)
(package! focus)
(package! hydra)          ; for keybindings
(package! org-appear)     ; make invisible parts of Org elements appear visible
(package! org-fragtog) ; automatically toggle LaTeX fragments in Org mode

(package! doom-nano-themes :recipe (:host github :repo "ronisbr/doom-nano-themes"))
(package! doom-nano-modeline :recipe (:host github :repo "ronisbr/doom-nano-modeline"))

(package! move-text)
(package! ts)
(package! mixed-pitch) ; mixed pitch mode for Org mode
(package! org-agenda-show-deadlines
  :recipe (:host github :repo "legalnonsense/org-agenda-show-deadlines"))

(package! logseq-org-roam
  :recipe (:host github
            :repo "sbougerel/logseq-org-roam"
            :files ("*.el")))
(package! org-transclusion)
(package! org-download)
