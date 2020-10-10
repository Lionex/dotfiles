;; Start up to a more minimal text editor

(setq inhibit-startup-message t)

(menu-bar-mode -1) ; no menu bar
(scroll-bar-mode -1) ; no visible scrollbar
(tool-bar-mode -1) ; no toolbar
(tooltip-mode -1) ; no tooltips
(set-fringe-mode 10) ; horizontal padding
(setq visible-bell t) ; visual instead of audio indicator for errors

(set-face-attribute 'fixed-pitch nil :font "Source Code Pro" :height 12)
(load-theme 'tango-dark)
