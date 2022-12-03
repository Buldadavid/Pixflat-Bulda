* {
  padding: 0;
  -GtkToolButton-icon-spacing: 4;
  -GtkTextView-error-underline-color: #cc0000;
  -GtkScrolledWindow-scrollbar-spacing: 0;
  -GtkToolItemGroup-expander-size: 11;
  -GtkWidget-text-handle-width: 20;
  -GtkWidget-text-handle-height: 24;
  -GtkDialog-button-spacing: 4;
  -GtkDialog-action-area-border: 0;
  -GtkFrame-label-indent: 4;
  outline-color: alpha(currentColor,0.3);
  outline-style: dashed;
  outline-offset: -3px;
  outline-width: 1px;
  -gtk-outline-radius: 2px;
  -gtk-secondary-caret-color: @theme_selected_bg_color; }

/***************
 * Base States *
 ***************/
.background {
  color: #ffffff;
  background-color: #333333; }
  .background:backdrop {
    color: #ff0000;
    background-color: #333333;
    text-shadow: none;
    -gtk-icon-shadow: none; }

/*
   These wildcard seems unavoidable, need to investigate.
   Wildcards are bad and troublesome, use them with care,
   or better, just don't.
   Everytime a wildcard is used a kitten dies, painfully.
*/
*:disabled {
  -gtk-icon-effect: dim; }

.gtkstyle-fallback {
  color: #fffff;
  background-color: #ff0000; }
  .gtkstyle-fallback:hover {
    color: #ffffff;
    background-color: #444444; }
  .gtkstyle-fallback:active {
    color: #ffffff;
    background-color: #8b8e8f; }
  .gtkstyle-fallback:disabled {
    color: #666666;
    background-color: #00ff00; }
  .gtkstyle-fallback:selected {
    color: @theme_selected_fg_color;
    background-color: @theme_selected_bg_color; }

.view, iconview,
.view text,
iconview text,
textview text {
  color: white;
  background-color: #808080; }
  .view:backdrop, iconview:backdrop,
  .view text:backdrop,
  iconview text:backdrop,
  textview text:backdrop {
    color: #ffffff;
    background-color: #808080; }
    .view:backdrop:disabled, iconview:backdrop:disabled,
    .view text:backdrop:disabled,
    iconview text:backdrop:disabled,
    textview text:backdrop:disabled {
      color: #ffffff; }
  .view:disabled, iconview:disabled,
  .view text:disabled,
  iconview text:disabled,
  textview text:disabled {
    color: #666666;
    background-color: #333333; }
  .view:selected:focus, iconview:selected:focus, .view:selected, iconview:selected,
  .view text:selected:focus,
  iconview text:selected:focus,
  textview text:selected:focus,
  .view text:selected,
  iconview text:selected,
  textview text:selected {
    border-radius: 3px; }

textview border {
  background-color: #707070; }
  
.rubberband,
rubberband,
flowbox rubberband,
treeview.view rubberband,
.content-view rubberband,
.content-view .rubberband {
  border: 1px solid @theme_selected_bg_color;
  background-color: #ff0000; }

flowbox flowboxchild {
  padding: 3px;
  border-radius: 3px; }
  flowbox flowboxchild:selected {
    outline-offset: -2px; }

label {
  caret-color: currentColor; }
  label.separator {
    color: #ff0000; }
    label.separator:backdrop {
      color: #666666; }
  label selection {
    background-color: @theme_selected_bg_color;
    color: @theme_selected_fg_color; }
  label:disabled {
    color: #666666; }
    label:disabled:backdrop {
      color: #c3c3c0; }
  label:backdrop {
    color: #666666; }

.dim-label, label.separator, .titlebar:not(headerbar) .subtitle,
headerbar .subtitle {
  opacity: 0.55;
  text-shadow: none; }

assistant .sidebar {
  background-color: #ff0000;
  border-top: 1px solid #313131; }
  assistant .sidebar:backdrop {
    background-color: #ff0000;
    border-color: #ff0000; }
assistant.csd .sidebar {
  border-top-style: none; }
assistant .sidebar label {
  padding: 6px 12px; }
assistant .sidebar label.highlight {
  background-color: #ff0000; }

.csd popover.background.touch-selection, .csd popover.background.magnifier, popover.background.touch-selection, popover.background.magnifier, .csd popover.background.osd, popover.background.osd, .app-notification,
.app-notification.frame, .osd .scale-popup,
.osd {
  color: #808080;
  border: none;
  background-color: rgba(28, 31, 32, 0.7);
  background-clip: padding-box;
  text-shadow: 0 1px black;
  -gtk-icon-shadow: 0 1px black; }
  popover.background.touch-selection:backdrop, popover.background.magnifier:backdrop, popover.background.osd:backdrop, .app-notification:backdrop, .osd .scale-popup:backdrop,
  .osd:backdrop {
    text-shadow: none;
    -gtk-icon-shadow: none; }

/*********************
 * Spinner Animation *
 *********************/
@keyframes spin {
  to {
    -gtk-icon-transform: rotate(1turn); } }
spinner {
  background: none;
  opacity: 0;
  -gtk-icon-source: -gtk-icontheme("process-working-symbolic"); }
  spinner:checked {
    opacity: 1;
    animation: spin 1s linear infinite; }
    spinner:checked:disabled {
      opacity: 0.5; }

/****************
 * Text Entries *
 ****************/
spinbutton:not(.vertical),
entry {
  min-height: 16px;
  padding-left: 8px;
  padding-right: 8px;
  padding-top: 4px;
  padding-bottom: 4px;
  border: 1px solid;
  border-radius: 2px;
  transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
  color: black;
  border-color: #313131;
  background-color: #bfbfbf;
  box-shadow: inset 0 0 0 1px rgba(74, 144, 217, 0); }
  spinbutton:not(.vertical) image.left,
  entry image.left {
    margin-right: 6px; }
  spinbutton:not(.vertical) image.right,
  entry image.right {
    margin-left: 6px; }
  spinbutton:not(.vertical) undershoot.left,
  entry undershoot.left {
    background-color: transparent;
    background-image: linear-gradient(to top, rgba(255, 255, 255, 0.2) 50%, rgba(0, 0, 0, 0.2) 50%);
    padding-left: 1px;
    background-size: 1px 10px;
    background-repeat: repeat-y;
    background-origin: content-box;
    background-position: left center;
    border: none;
    box-shadow: none; }
  spinbutton:not(.vertical) undershoot.right,
  entry undershoot.right {
    background-color: transparent;
    background-image: linear-gradient(to top, rgba(255, 255, 255, 0.2) 50%, rgba(0, 0, 0, 0.2) 50%);
    padding-right: 1px;
    background-size: 1px 10px;
    background-repeat: repeat-y;
    background-origin: content-box;
    background-position: right center;
    border: none;
    box-shadow: none; }
  spinbutton.flat:focus:not(.vertical), spinbutton.flat:not(.vertical),
  entry.flat:focus,
  entry.flat {
    min-height: 0;
    padding: 2px;
    background-color: transparent;
    border-color: transparent;
    border-radius: 0; }
  spinbutton:focus:not(.vertical),
  entry:focus {
    box-shadow: inset 0 0 0 1px mix (@theme_base_color, shade(@theme_selected_bg_color, 1.333333), 0.5); }
  spinbutton:disabled:not(.vertical),
  entry:disabled {
    color: #666666;
    border-color: #313131;
    background-color: #333333;
    box-shadow: none; }
  spinbutton:backdrop:not(.vertical),
  entry:backdrop {
    color: #323232;
    border-color: #c0c0bd;
    background-color: #fcfcfc;
    box-shadow: none;
    transition: 200ms ease-out; }
  spinbutton:backdrop:disabled:not(.vertical),
  entry:backdrop:disabled {
    color: #c3c3c0;
    border-color: #c0c0bd;
    background-color: #333333;
    box-shadow: none; }
  spinbutton.error:not(.vertical),
  entry.error {
    color: #cc0000;
    border-color: #cc0000; }
    spinbutton.error:focus:not(.vertical),
    entry.error:focus {
      box-shadow: inset 0 0 0 1px #cc0000;
      border-color: #cc0000; }
    spinbutton.error:not(.vertical) selection,
    entry.error selection {
      background-color: #cc0000; }
  spinbutton.warning:not(.vertical),
  entry.warning {
    color: #f57900;
    border-color: #f57900; }
    spinbutton.warning:focus:not(.vertical),
    entry.warning:focus {
      box-shadow: inset 0 0 0 1px #f57900;
      border-color: #f57900; }
    spinbutton.warning:not(.vertical) selection,
    entry.warning selection {
      background-color: #f57900; }
  spinbutton:not(.vertical) image,
  entry image {
    color: #585d5e; }
    spinbutton:not(.vertical) image:hover,
    entry image:hover {
      color: #2e3436; }
    spinbutton:not(.vertical) image:active,
    entry image:active {
      color: @theme_selected_bg_color; }
    spinbutton:not(.vertical) image:backdrop,
    entry image:backdrop {
      color: #a2a4a5; }
  spinbutton:drop(active):focus:not(.vertical), spinbutton:drop(active):not(.vertical),
  entry:drop(active):focus,
  entry:drop(active) {
    border-color: @theme_selected_bg_color;
    box-shadow: inset 0 0 0 1px @theme_selected_bg_color; }
  .osd spinbutton:not(.vertical), .osd
  entry {
    color: white;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: rgba(0, 0, 0, 0.5);
    background-clip: padding-box;
    box-shadow: none;
    text-shadow: 0 1px black;
    -gtk-icon-shadow: 0 1px black; }
    .osd spinbutton:focus:not(.vertical), .osd
    entry:focus {
      color: @theme_selected_fg_color;
      border-color: @theme_selected_bg_color;
      background-color: rgba(0, 0, 0, 0.5);
      background-clip: padding-box;
      box-shadow: inset 0 0 0 1px @theme_selected_bg_color;
      text-shadow: 0 1px black;
      -gtk-icon-shadow: 0 1px black; }
    .osd spinbutton:backdrop:not(.vertical), .osd
    entry:backdrop {
      color: white;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: rgba(0, 0, 0, 0.5);
      background-clip: padding-box;
      box-shadow: none;
      text-shadow: none;
      -gtk-icon-shadow: none; }
    .osd spinbutton:disabled:not(.vertical), .osd
    entry:disabled {
      color: #858786;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: rgba(49, 52, 52, 0.5);
      background-clip: padding-box;
      box-shadow: none;
      text-shadow: none;
      -gtk-icon-shadow: none; }
spinbutton:not(.vertical) progress,
entry progress {
  margin: 2px -6px;
  background-color: transparent;
  background-image: none;
  border-radius: 0;
  border-width: 0 0 2px;
  border-color: @theme_selected_bg_color;
  border-style: solid;
  box-shadow: none; }
  spinbutton:not(.vertical) progress:backdrop,
  entry progress:backdrop {
    background-color: transparent; }
.linked:not(.vertical) > spinbutton:focus:not(.vertical) + spinbutton:not(.vertical), .linked:not(.vertical) > spinbutton:focus:not(.vertical) + button, .linked:not(.vertical) > spinbutton:focus:not(.vertical) + combobox > box > button.combo, .linked:not(.vertical) >
entry:focus + spinbutton:not(.vertical), .linked:not(.vertical) >
entry:focus + button, .linked:not(.vertical) >
entry:focus + combobox > box > button.combo, .linked:not(.vertical) > spinbutton:focus:not(.vertical) +
entry, .linked:not(.vertical) >
entry:focus +
entry {
  border-left-color: @theme_selected_bg_color; }
.linked:not(.vertical) > spinbutton:drop(active):not(.vertical) + spinbutton:not(.vertical), .linked:not(.vertical) > spinbutton:drop(active):not(.vertical) + button, .linked:not(.vertical) > spinbutton:drop(active):not(.vertical) + combobox > box > button.combo, .linked:not(.vertical) >
entry:drop(active) + spinbutton:not(.vertical), .linked:not(.vertical) >
entry:drop(active) + button, .linked:not(.vertical) >
entry:drop(active) + combobox > box > button.combo, .linked:not(.vertical) > spinbutton:drop(active):not(.vertical) +
entry, .linked:not(.vertical) >
entry:drop(active) +
entry {
  border-left-color: @theme_selected_bg_color; }
.linked.vertical > spinbutton:not(:disabled):not(.vertical) + entry:not(:disabled), .linked.vertical > spinbutton:not(:disabled):not(.vertical) + spinbutton:not(:disabled):not(.vertical), .linked.vertical >
entry:not(:disabled) + entry:not(:disabled), .linked.vertical >
entry:not(:disabled) + spinbutton:not(:disabled):not(.vertical) {
  border-top-color: #e9e9e8; }
  .linked.vertical > spinbutton:not(:disabled):not(.vertical) + entry:not(:disabled):backdrop, .linked.vertical > spinbutton:not(:disabled):not(.vertical) + spinbutton:not(:disabled):backdrop:not(.vertical), .linked.vertical >
  entry:not(:disabled) + entry:not(:disabled):backdrop, .linked.vertical >
  entry:not(:disabled) + spinbutton:not(:disabled):backdrop:not(.vertical) {
    border-top-color: #eaeae9; }
.linked.vertical > spinbutton:disabled:not(.vertical) + spinbutton:disabled:not(.vertical), .linked.vertical > spinbutton:disabled:not(.vertical) + entry:disabled, .linked.vertical >
entry:disabled + spinbutton:disabled:not(.vertical), .linked.vertical >
entry:disabled + entry:disabled {
  border-top-color: #FF55A3; }
.linked.vertical > spinbutton:not(.vertical) + spinbutton:focus:not(:only-child):not(.vertical),
.linked.vertical > spinbutton:not(.vertical) + entry:focus:not(:only-child), .linked.vertical >
entry + spinbutton:focus:not(:only-child):not(.vertical),
.linked.vertical >
entry + entry:focus:not(:only-child) {
  border-top-color: @theme_selected_bg_color; }
.linked.vertical > spinbutton:not(.vertical) + spinbutton:drop(active):not(:only-child):not(.vertical),
.linked.vertical > spinbutton:not(.vertical) + entry:drop(active):not(:only-child), .linked.vertical >
entry + spinbutton:drop(active):not(:only-child):not(.vertical),
.linked.vertical >
entry + entry:drop(active):not(:only-child) {
  border-top-color: #4e9a06; }
.linked.vertical > spinbutton:focus:not(:only-child):not(.vertical) + spinbutton:not(.vertical),
.linked.vertical > spinbutton:focus:not(:only-child):not(.vertical) + entry,
.linked.vertical > spinbutton:focus:not(:only-child):not(.vertical) + button,
.linked.vertical > spinbutton:focus:not(:only-child):not(.vertical) + combobox > box > button.combo, .linked.vertical >
entry:focus:not(:only-child) + spinbutton:not(.vertical),
.linked.vertical >
entry:focus:not(:only-child) + entry,
.linked.vertical >
entry:focus:not(:only-child) + button,
.linked.vertical >
entry:focus:not(:only-child) + combobox > box > button.combo {
  border-top-color: @theme_selected_bg_color; }
.linked.vertical > spinbutton:drop(active):not(:only-child):not(.vertical) + spinbutton:not(.vertical),
.linked.vertical > spinbutton:drop(active):not(:only-child):not(.vertical) + entry,
.linked.vertical > spinbutton:drop(active):not(:only-child):not(.vertical) + button,
.linked.vertical > spinbutton:drop(active):not(:only-child):not(.vertical) + combobox > box > button.combo, .linked.vertical >
entry:drop(active):not(:only-child) + spinbutton:not(.vertical),
.linked.vertical >
entry:drop(active):not(:only-child) + entry,
.linked.vertical >
entry:drop(active):not(:only-child) + button,
.linked.vertical >
entry:drop(active):not(:only-child) + combobox > box > button.combo {
  border-top-color: #4e9a06; }

treeview entry:focus:dir(rtl), treeview entry:focus:dir(ltr) {
  background-color: #bfbfbf;
  transition-property: color, background; }
treeview entry.flat, treeview entry {
  border-radius: 0;
  background-image: none;
  background-color: #bfbfbf; }
  treeview entry.flat:focus, treeview entry:focus {
    border-color: @theme_selected_bg_color; }

/***********
 * Buttons *
 ***********/
@keyframes needs_attention {
  from {
    background-image: -gtk-gradient(radial, center center, 0, center center, 0.01, to(@theme_selected_bg_color), to(transparent)); }
  to {
    background-image: -gtk-gradient(radial, center center, 0, center center, 0.5, to(@theme_selected_bg_color), to(transparent)); } }
notebook > header > tabs > arrow, button.titlebutton,
button {
  min-height: 16px;
  min-width: 16px;
  padding: 4px 8px;
  border: 1px solid;
  border-radius: 2px;
  border-color: #000000;
  background-color: #444444;
  -gtk-icon-shadow: none;}
  notebook > header > tabs > arrow, button.sidebar-button, button.titlebutton,
  button.flat {
    border-color: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    text-shadow: none;
    -gtk-icon-shadow: none;
    transition: none; }
    notebook > header > tabs > arrow:hover, button.sidebar-button:hover, button.titlebutton:hover,
    button.flat:hover {
      transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
      transition-duration: 500ms; }
      notebook > header > tabs > arrow:hover:active, button.sidebar-button:hover:active, button.titlebutton:hover:active,
      button.flat:hover:active {
        transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94); }
  notebook > header > tabs > arrow:hover, button.titlebutton:hover,
  button:hover {
    color: #ffffff;
    background-color: #5b5b5b;
    border-color: #bfbfbf;
    -gtk-icon-shadow: none;
    -gtk-icon-effect: highlight; }
  notebook > header > tabs > arrow:active, button.titlebutton:active, notebook > header > tabs > arrow:checked, button.titlebutton:checked,
  button:active,
  button:checked,
  button:hover:active:checked {
    color: #ffffff;
    background-color: #606060;
    border-color: #b3b3b3;
    -gtk-icon-shadow: none;
    -gtk-icon-effect: highlight; }
  button:hover:checked {
    color: #2e3436;
    background-color: #dedede;
    border-color: #c7c7c7;
    -gtk-icon-shadow: none;
    -gtk-icon-effect: highlight; }
  notebook > header > tabs > arrow:backdrop, button.sidebar-button:backdrop, button.titlebutton:backdrop, notebook > header > tabs > arrow:backdrop, button.titlebutton:backdrop,
  button:backdrop.flat,
  button:backdrop {
    border-color: #c0c0bd;
    background-image: image(#323232);
    text-shadow: none;
    -gtk-icon-shadow: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    transition: 200ms ease-out;
    -gtk-icon-effect: none; }
    notebook > header > tabs > arrow:backdrop label, button.sidebar-button:backdrop label, button.titlebutton:backdrop label, notebook > header > tabs > arrow:backdrop, button.sidebar-button:backdrop, button.titlebutton:backdrop, notebook > header > tabs > arrow:backdrop label, button.titlebutton:backdrop label, notebook > header > tabs > arrow:backdrop, button.titlebutton:backdrop,
    button:backdrop.flat label,
    button:backdrop.flat,
    button:backdrop label,
    button:backdrop {
      color: #666666; }
    notebook > header > tabs > arrow:backdrop:active, button.sidebar-button:backdrop:active, button.titlebutton:backdrop:active, notebook > header > tabs > arrow:backdrop:checked, button.sidebar-button:backdrop:checked, button.titlebutton:backdrop:checked, notebook > header > tabs > arrow:backdrop:active, button.titlebutton:backdrop:active, notebook > header > tabs > arrow:backdrop:checked, button.titlebutton:backdrop:checked,
    button:backdrop.flat:active,
    button:backdrop.flat:checked,
    button:backdrop:active,
    button:backdrop:checked {
      border-color: #c0c0bd;
      background-image: image(#d7d7d7);
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      notebook > header > tabs > arrow:backdrop:active label, button.sidebar-button:backdrop:active label, button.titlebutton:backdrop:active label, notebook > header > tabs > arrow:backdrop:active, button.sidebar-button:backdrop:active, button.titlebutton:backdrop:active, notebook > header > tabs > arrow:backdrop:checked label, button.sidebar-button:backdrop:checked label, button.titlebutton:backdrop:checked label, notebook > header > tabs > arrow:backdrop:checked, button.sidebar-button:backdrop:checked, button.titlebutton:backdrop:checked, notebook > header > tabs > arrow:backdrop:active label, button.titlebutton:backdrop:active label, notebook > header > tabs > arrow:backdrop:active, button.titlebutton:backdrop:active, notebook > header > tabs > arrow:backdrop:checked label, button.titlebutton:backdrop:checked label, notebook > header > tabs > arrow:backdrop:checked, button.titlebutton:backdrop:checked,
      button:backdrop.flat:active label,
      button:backdrop.flat:active,
      button:backdrop.flat:checked label,
      button:backdrop.flat:checked,
      button:backdrop:active label,
      button:backdrop:active,
      button:backdrop:checked label,
      button:backdrop:checked {
        color: #666666; }
    notebook > header > tabs > arrow:backdrop:disabled, button.sidebar-button:backdrop:disabled, button.titlebutton:backdrop:disabled, notebook > header > tabs > arrow:backdrop:disabled, button.titlebutton:backdrop:disabled,
    button:backdrop.flat:disabled,
    button:backdrop:disabled {
      border-color: #000000;
      background-image: image(#333333);
      text-shadow: none;
      -gtk-icon-shadow: none;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      notebook > header > tabs > arrow:backdrop:disabled label, button.sidebar-button:backdrop:disabled label, button.titlebutton:backdrop:disabled label, notebook > header > tabs > arrow:backdrop:disabled, button.sidebar-button:backdrop:disabled, button.titlebutton:backdrop:disabled, notebook > header > tabs > arrow:backdrop:disabled label, button.titlebutton:backdrop:disabled label, notebook > header > tabs > arrow:backdrop:disabled, button.titlebutton:backdrop:disabled,
      button:backdrop.flat:disabled label,
      button:backdrop.flat:disabled,
      button:backdrop:disabled label,
      button:backdrop:disabled {
        color: #ffffff; }
      notebook > header > tabs > arrow:backdrop:disabled:active, button.sidebar-button:backdrop:disabled:active, button.titlebutton:backdrop:disabled:active, notebook > header > tabs > arrow:backdrop:disabled:checked, button.sidebar-button:backdrop:disabled:checked, button.titlebutton:backdrop:disabled:checked, notebook > header > tabs > arrow:backdrop:disabled:active, button.titlebutton:backdrop:disabled:active, notebook > header > tabs > arrow:backdrop:disabled:checked, button.titlebutton:backdrop:disabled:checked,
      button:backdrop.flat:disabled:active,
      button:backdrop.flat:disabled:checked,
      button:backdrop:disabled:active,
      button:backdrop:disabled:checked {
        border-color: #c0c0bd;
        background-image: image(#d7d7d7);
        box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
        notebook > header > tabs > arrow:backdrop:disabled:active label, button.sidebar-button:backdrop:disabled:active label, button.titlebutton:backdrop:disabled:active label, notebook > header > tabs > arrow:backdrop:disabled:checked label, button.sidebar-button:backdrop:disabled:checked label, button.titlebutton:backdrop:disabled:checked label, notebook > header > tabs > arrow:backdrop:disabled:active label, button.titlebutton:backdrop:disabled:active label, notebook > header > tabs > arrow:backdrop:disabled:checked label, button.titlebutton:backdrop:disabled:checked label,
        button:backdrop.flat:disabled:active label,
        button:backdrop.flat:disabled:checked label,
        button:backdrop:disabled:active label,
        button:backdrop:disabled:checked label {
          color: #c3c3c0; }
  notebook > header > tabs > arrow:backdrop, button.sidebar-button:backdrop, button.titlebutton:backdrop, notebook > header > tabs > arrow:disabled, button.sidebar-button:disabled, button.titlebutton:disabled, notebook > header > tabs > arrow:backdrop:disabled, button.sidebar-button:backdrop:disabled, button.titlebutton:backdrop:disabled,
  button.flat:backdrop,
  button.flat:disabled,
  button.flat:backdrop:disabled {
    border-color: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    text-shadow: none;
    -gtk-icon-shadow: none; }
  notebook > header > tabs > arrow:disabled, button.titlebutton:disabled,
  button:disabled {
    border-color: #000000;
    background-color: #f44336;
    text-shadow: none;
    -gtk-icon-shadow: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
    notebook > header > tabs > arrow:disabled label, button.titlebutton:disabled label, notebook > header > tabs > arrow:disabled, button.titlebutton:disabled,
    button:disabled label,
    button:disabled {
      color: #000000; }
    notebook > header > tabs > arrow:disabled:active, button.titlebutton:disabled:active, notebook > header > tabs > arrow:disabled:checked, button.titlebutton:disabled:checked,
    button:disabled:active,
    button:disabled:checked {
      border-color: #313131;
      background-image: image(#d7d7d7);
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      notebook > header > tabs > arrow:disabled:active label, button.titlebutton:disabled:active label, notebook > header > tabs > arrow:disabled:active, button.titlebutton:disabled:active, notebook > header > tabs > arrow:disabled:checked label, button.titlebutton:disabled:checked label, notebook > header > tabs > arrow:disabled:checked, button.titlebutton:disabled:checked,
      button:disabled:active label,
      button:disabled:active,
      button:disabled:checked label,
      button:disabled:checked {
        color: #666666; }
  notebook > header > tabs > arrow.image-button, button.image-button.titlebutton,
  button.image-button {
    min-width: 24px;
    padding-left: 4px;
    padding-right: 4px; }
  notebook > header > tabs > arrow.text-button, button.text-button.titlebutton,
  button.text-button {
    padding-left: 16px;
    padding-right: 16px; }
  notebook > header > tabs > arrow.text-button.image-button, button.text-button.image-button.titlebutton,
  button.text-button.image-button {
    padding-left: 8px;
    padding-right: 8px; }
    notebook > header > tabs > arrow.text-button.image-button label, button.text-button.image-button.titlebutton label,
    button.text-button.image-button label {
      padding-left: 8px;
      padding-right: 8px; }
  combobox:drop(active) button.combo, notebook > header > tabs > arrow:drop(active), button.titlebutton:drop(active),
  button:drop(active) {
    color: #4e9a06;
    border-color: #4e9a06;
    box-shadow: inset 0 0 0 1px #4e9a06; }
row:selected
button {
  border-color: @theme_sel_bg_shaded; }
  row:selected button.sidebar-button:not(:active):not(:checked):not(:hover):not(disabled), row:selected
  button.flat:not(:active):not(:checked):not(:hover):not(disabled) {
    color: #bfbfbf;
    border-color: transparent; }
    row:selected button.sidebar-button:not(:active):not(:checked):not(:hover):not(disabled):backdrop, row:selected
    button.flat:not(:active):not(:checked):not(:hover):not(disabled):backdrop {
      color: #fcfcfc; }
button.osd {
  min-width: 24px;
  min-height: 32px;
  color: #808080;
  border-radius: 5px;
  color: #808080;
  border-color: rgba(0, 0, 0, 0.7);
  background-color: transparent;
  background-image: image(rgba(28, 31, 32, 0.7));
  background-clip: padding-box;
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
  text-shadow: 0 1px black;
  -gtk-icon-shadow: 0 1px black;
  outline-color: rgba(238, 238, 236, 0.3);
  border: none;
  box-shadow: none; }
  button.osd.image-button {
    min-width: 32px; }
  button.osd:hover {
    color: white;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(57, 63, 65, 0.7));
    background-clip: padding-box;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
    text-shadow: 0 1px black;
    -gtk-icon-shadow: 0 1px black;
    outline-color: rgba(238, 238, 236, 0.3);
    border: none;
    box-shadow: none; }
  button.osd:active,
  button.osd:checked {
    color: white;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(0, 0, 0, 0.7));
    background-clip: padding-box;
    box-shadow: none;
    text-shadow: none;
    -gtk-icon-shadow: none;
    outline-color: rgba(238, 238, 236, 0.3);
    border: none;
    box-shadow: none; }
  button.osd:disabled:backdrop,
  button.osd:disabled {
    color: #858786;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(49, 52, 52, 0.5));
    background-clip: padding-box;
    box-shadow: none;
    text-shadow: none;
    -gtk-icon-shadow: none;
    border: none; }
  button.osd:backdrop {
    color: #808080;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(28, 31, 32, 0.7));
    background-clip: padding-box;
    box-shadow: none;
    text-shadow: none;
    -gtk-icon-shadow: none;
    border: none; }
.csd popover.background.touch-selection button, .csd popover.background.magnifier button, popover.background.touch-selection button, popover.background.magnifier button, .app-notification button,
.app-notification.frame button, .osd
button {
  color: #808080;
  border-color: rgba(0, 0, 0, 0.7);
  background-color: transparent;
  background-image: image(rgba(28, 31, 32, 0.7));
  background-clip: padding-box;
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
  text-shadow: 0 1px black;
  -gtk-icon-shadow: 0 1px black;
  outline-color: rgba(238, 238, 236, 0.3); }
  popover.background.touch-selection button:hover, popover.background.magnifier button:hover, .app-notification button:hover, .osd
  button:hover {
    color: white;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(57, 63, 65, 0.7));
    background-clip: padding-box;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
    text-shadow: 0 1px black;
    -gtk-icon-shadow: 0 1px black;
    outline-color: rgba(238, 238, 236, 0.3); }
  popover.background.touch-selection button:active:backdrop, popover.background.magnifier button:active:backdrop, .app-notification button:active:backdrop, popover.background.touch-selection button:active, popover.background.magnifier button:active, .app-notification button:active, popover.background.touch-selection button:checked:backdrop, popover.background.magnifier button:checked:backdrop, .app-notification button:checked:backdrop, popover.background.touch-selection button:checked, popover.background.magnifier button:checked, .app-notification button:checked, .osd
  button:active:backdrop, .osd
  button:active, .osd
  button:checked:backdrop, .osd
  button:checked {
    color: white;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(0, 0, 0, 0.7));
    background-clip: padding-box;
    box-shadow: none;
    text-shadow: none;
    -gtk-icon-shadow: none;
    outline-color: rgba(238, 238, 236, 0.3); }
  popover.background.touch-selection button:disabled:backdrop, popover.background.magnifier button:disabled:backdrop, .app-notification button:disabled:backdrop, popover.background.touch-selection button:disabled, popover.background.magnifier button:disabled, .app-notification button:disabled, .osd
  button:disabled:backdrop, .osd
  button:disabled {
    color: #858786;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(49, 52, 52, 0.5));
    background-clip: padding-box;
    box-shadow: none;
    text-shadow: none;
    -gtk-icon-shadow: none; }
  popover.background.touch-selection button:backdrop, popover.background.magnifier button:backdrop, .app-notification button:backdrop, .osd
  button:backdrop {
    color: #808080;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(28, 31, 32, 0.7));
    background-clip: padding-box;
    box-shadow: none;
    text-shadow: none;
    -gtk-icon-shadow: none; }
  popover.background.touch-selection button.flat, popover.background.magnifier button.flat, .app-notification button.flat, .osd
  button.flat {
    border-color: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    text-shadow: none;
    -gtk-icon-shadow: none;
    box-shadow: none;
    text-shadow: 0 1px black;
    -gtk-icon-shadow: 0 1px black; }
    popover.background.touch-selection button.flat:hover, popover.background.magnifier button.flat:hover, .app-notification button.flat:hover, .osd
    button.flat:hover {
      color: white;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(57, 63, 65, 0.7));
      background-clip: padding-box;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
      text-shadow: 0 1px black;
      -gtk-icon-shadow: 0 1px black;
      outline-color: rgba(238, 238, 236, 0.3); }
    popover.background.touch-selection button.flat:disabled, popover.background.magnifier button.flat:disabled, .app-notification button.flat:disabled, .osd
    button.flat:disabled {
      color: #858786;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(49, 52, 52, 0.5));
      background-clip: padding-box;
      box-shadow: none;
      text-shadow: none;
      -gtk-icon-shadow: none;
      background-image: none;
      border-color: transparent;
      box-shadow: none; }
    popover.background.touch-selection button.flat:backdrop, popover.background.magnifier button.flat:backdrop, .app-notification button.flat:backdrop, .osd
    button.flat:backdrop {
      border-color: transparent;
      background-color: transparent;
      background-image: none;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0);
      text-shadow: none;
      -gtk-icon-shadow: none; }
    popover.background.touch-selection button.flat:active, popover.background.magnifier button.flat:active, .app-notification button.flat:active, popover.background.touch-selection button.flat:checked, popover.background.magnifier button.flat:checked, .app-notification button.flat:checked, .osd
    button.flat:active, .osd
    button.flat:checked {
      color: white;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(0, 0, 0, 0.7));
      background-clip: padding-box;
      box-shadow: none;
      text-shadow: none;
      -gtk-icon-shadow: none;
      outline-color: rgba(238, 238, 236, 0.3); }
button.suggested-action {
  color: white;
  border-color: rgba(0, 0, 0, 0.4);
  background-image: image(@theme_selected_bg_color);
  -gtk-icon-shadow: 0 -1px rgba(0, 0, 0, 0.54353); }
  .selection-mode button.titlebutton,
  button.suggested-action.flat {
    border-color: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    text-shadow: none;
    -gtk-icon-shadow: none;
    color: @theme_selected_bg_color; }
  button.suggested-action:hover {
    color: white;
    border-color: rgba(0, 0, 0, 0.4);
    background-image: image(shade(@theme_selected_bg_color,1.05));
    -gtk-icon-shadow: 0 -1px rgba(0, 0, 0, 0.49553); }
  button.suggested-action:active,
  button.suggested-action:checked {
    color: white;
    border-color: rgba(0, 0, 0, 0.4);
    background-image: image(shade(@theme_selected_bg_color,1.1));
     -gtk-icon-shadow: none; }
  .selection-mode button.titlebutton:backdrop,
  button.suggested-action:backdrop,
  button.suggested-action.flat:backdrop {
    border-color: @theme_selected_bg_color;
    background-image: image(@theme_selected_bg_color);
    text-shadow: none;
    -gtk-icon-shadow: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
    .selection-mode button.titlebutton:backdrop label, .selection-mode button.titlebutton:backdrop,
    button.suggested-action:backdrop label,
    button.suggested-action:backdrop,
    button.suggested-action.flat:backdrop label,
    button.suggested-action.flat:backdrop {
      color: #dbe9f7; }
    .selection-mode button.titlebutton:backdrop:active, .selection-mode button.titlebutton:backdrop:checked,
    button.suggested-action:backdrop:active,
    button.suggested-action:backdrop:checked,
    button.suggested-action.flat:backdrop:active,
    button.suggested-action.flat:backdrop:checked {
      border-color: @theme_selected_bg_color;
      background-image: image(@theme_selected_bg_color);
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      .selection-mode button.titlebutton:backdrop:active label, .selection-mode button.titlebutton:backdrop:active, .selection-mode button.titlebutton:backdrop:checked label, .selection-mode button.titlebutton:backdrop:checked,
      button.suggested-action:backdrop:active label,
      button.suggested-action:backdrop:active,
      button.suggested-action:backdrop:checked label,
      button.suggested-action:backdrop:checked,
      button.suggested-action.flat:backdrop:active label,
      button.suggested-action.flat:backdrop:active,
      button.suggested-action.flat:backdrop:checked label,
      button.suggested-action.flat:backdrop:checked {
        color: #d9e8f7; }
    .selection-mode button.titlebutton:backdrop:disabled,
    button.suggested-action:backdrop:disabled,
    button.suggested-action.flat:backdrop:disabled {
      border-color: #c0c0bd;
      background-image: image(#333333);
      text-shadow: none;
      -gtk-icon-shadow: none;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      .selection-mode button.titlebutton:backdrop:disabled label, .selection-mode button.titlebutton:backdrop:disabled,
      button.suggested-action:backdrop:disabled label,
      button.suggested-action:backdrop:disabled,
      button.suggested-action.flat:backdrop:disabled label,
      button.suggested-action.flat:backdrop:disabled {
        color: #c3c3c0; }
      .selection-mode button.titlebutton:backdrop:disabled:active, .selection-mode button.titlebutton:backdrop:disabled:checked,
      button.suggested-action:backdrop:disabled:active,
      button.suggested-action:backdrop:disabled:checked,
      button.suggested-action.flat:backdrop:disabled:active,
      button.suggested-action.flat:backdrop:disabled:checked {
        border-color: @theme_selected_bg_color;
        background-image: image(@theme_selected_bg_color);
        box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
        .selection-mode button.titlebutton:backdrop:disabled:active label, .selection-mode button.titlebutton:backdrop:disabled:checked label,
        button.suggested-action:backdrop:disabled:active label,
        button.suggested-action:backdrop:disabled:checked label,
        button.suggested-action.flat:backdrop:disabled:active label,
        button.suggested-action.flat:backdrop:disabled:checked label {
          color: #85b4e6; }
  .selection-mode button.titlebutton:backdrop, .selection-mode button.titlebutton:disabled, .selection-mode button.titlebutton:backdrop:disabled,
  button.suggested-action.flat:backdrop,
  button.suggested-action.flat:disabled,
  button.suggested-action.flat:backdrop:disabled {
    border-color: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    text-shadow: none;
    -gtk-icon-shadow: none;
    color: rgba(74, 144, 217, 0.8); }
  button.suggested-action:disabled {
    border-color: #313131;
    background-image: image(#333333);
    text-shadow: none;
    -gtk-icon-shadow: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
    button.suggested-action:disabled label,
    button.suggested-action:disabled {
      color: #666666; }
    button.suggested-action:disabled:active,
    button.suggested-action:disabled:checked {
      border-color: @theme_sel_bg_shaded;
      background-image: image(@theme_selected_bg_color);
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      button.suggested-action:disabled:active label,
      button.suggested-action:disabled:active,
      button.suggested-action:disabled:checked label,
      button.suggested-action:disabled:checked {
        color: #b4d1ef; }
  .osd
  button.suggested-action {
    color: #808080;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(74, 144, 217, 0.5));
    background-clip: padding-box;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
    text-shadow: 0 1px black;
    -gtk-icon-shadow: 0 1px black;
    outline-color: rgba(238, 238, 236, 0.3); }
    .osd
    button.suggested-action:hover {
      color: white;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(74, 144, 217, 0.7));
      background-clip: padding-box;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
      text-shadow: 0 1px black;
      -gtk-icon-shadow: 0 1px black;
      outline-color: rgba(238, 238, 236, 0.3); }
    .osd
    button.suggested-action:active:backdrop, .osd
    button.suggested-action:active, .osd
    button.suggested-action:checked:backdrop, .osd
    button.suggested-action:checked {
      color: white;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(@theme_selected_bg_color);
      background-clip: padding-box;
      box-shadow: none;
      text-shadow: none;
      -gtk-icon-shadow: none;
      outline-color: rgba(238, 238, 236, 0.3); }
    .osd
    button.suggested-action:disabled:backdrop, .osd
    button.suggested-action:disabled {
      color: #858786;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(49, 52, 52, 0.5));
      background-clip: padding-box;
      box-shadow: none;
      text-shadow: none;
      -gtk-icon-shadow: none; }
    .osd
    button.suggested-action:backdrop {
      color: #808080;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(74, 144, 217, 0.5));
      background-clip: padding-box;
      box-shadow: none;
      text-shadow: none;
      -gtk-icon-shadow: none; }
button.destructive-action {
  color: white;
  border-color: #a60c0c;
  background-color: #ee1616;
  -gtk-icon-shadow: 0 -1px rgba(0, 0, 0, 0.56078); }
  button.destructive-action.flat {
    border-color: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    text-shadow: none;
    -gtk-icon-shadow: none;
    color: #ef2929; }
  button.destructive-action:hover {
    color: white;
    border-color: #a60c0c;
    background-color: #ef2929;
    -gtk-icon-shadow: 0 -1px rgba(0, 0, 0, 0.51278); }
  button.destructive-action:active,
  button.destructive-action:checked {
    color: white;
    border-color: #a60c0c;
    background-color: #e81111;
    -gtk-icon-shadow: none; }
  button.destructive-action:backdrop,
  button.destructive-action.flat:backdrop {
    border-color: #ef2929;
    background-image: image(#ef2929);
    text-shadow: none;
    -gtk-icon-shadow: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
    button.destructive-action:backdrop label,
    button.destructive-action:backdrop,
    button.destructive-action.flat:backdrop label,
    button.destructive-action.flat:backdrop {
      color: #fcd4d4; }
    button.destructive-action:backdrop:active,
    button.destructive-action:backdrop:checked,
    button.destructive-action.flat:backdrop:active,
    button.destructive-action.flat:backdrop:checked {
      border-color: #ee2323;
      background-image: image(#ee2323);
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      button.destructive-action:backdrop:active label,
      button.destructive-action:backdrop:active,
      button.destructive-action:backdrop:checked label,
      button.destructive-action:backdrop:checked,
      button.destructive-action.flat:backdrop:active label,
      button.destructive-action.flat:backdrop:active,
      button.destructive-action.flat:backdrop:checked label,
      button.destructive-action.flat:backdrop:checked {
        color: #fcd3d3; }
    button.destructive-action:backdrop:disabled,
    button.destructive-action.flat:backdrop:disabled {
      border-color: #c0c0bd;
      background-image: image(#333333);
      text-shadow: none;
      -gtk-icon-shadow: none;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      button.destructive-action:backdrop:disabled label,
      button.destructive-action:backdrop:disabled,
      button.destructive-action.flat:backdrop:disabled label,
      button.destructive-action.flat:backdrop:disabled {
        color: #c3c3c0; }
      button.destructive-action:backdrop:disabled:active,
      button.destructive-action:backdrop:disabled:checked,
      button.destructive-action.flat:backdrop:disabled:active,
      button.destructive-action.flat:backdrop:disabled:checked {
        border-color: #ee2323;
        background-image: image(#ee2323);
        box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
        button.destructive-action:backdrop:disabled:active label,
        button.destructive-action:backdrop:disabled:checked label,
        button.destructive-action.flat:backdrop:disabled:active label,
        button.destructive-action.flat:backdrop:disabled:checked label {
          color: #f47070; }
  button.destructive-action.flat:backdrop,
  button.destructive-action.flat:disabled,
  button.destructive-action.flat:backdrop:disabled {
    border-color: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    text-shadow: none;
    -gtk-icon-shadow: none;
    color: rgba(239, 41, 41, 0.8); }
  button.destructive-action:disabled {
    border-color: #313131;
    background-image: image(#333333);
    text-shadow: none;
    -gtk-icon-shadow: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
    button.destructive-action:disabled label,
    button.destructive-action:disabled {
      color: #666666; }
    button.destructive-action:disabled:active,
    button.destructive-action:disabled:checked {
      border-color: #a60c0c;
      background-image: image(#ee2323);
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      button.destructive-action:disabled:active label,
      button.destructive-action:disabled:active,
      button.destructive-action:disabled:checked label,
      button.destructive-action:disabled:checked {
        color: #f8a7a7; }
  .osd
  button.destructive-action {
    color: #808080;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(239, 41, 41, 0.5));
    background-clip: padding-box;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
    text-shadow: 0 1px black;
    -gtk-icon-shadow: 0 1px black;
    outline-color: rgba(238, 238, 236, 0.3); }
    .osd
    button.destructive-action:hover {
      color: white;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(239, 41, 41, 0.7));
      background-clip: padding-box;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
      text-shadow: 0 1px black;
      -gtk-icon-shadow: 0 1px black;
      outline-color: rgba(238, 238, 236, 0.3); }
    .osd
    button.destructive-action:active:backdrop, .osd
    button.destructive-action:active, .osd
    button.destructive-action:checked:backdrop, .osd
    button.destructive-action:checked {
      color: white;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(#ef2929);
      background-clip: padding-box;
      box-shadow: none;
      text-shadow: none;
      -gtk-icon-shadow: none;
      outline-color: rgba(238, 238, 236, 0.3); }
    .osd
    button.destructive-action:disabled:backdrop, .osd
    button.destructive-action:disabled {
      color: #858786;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(49, 52, 52, 0.5));
      background-clip: padding-box;
      box-shadow: none;
      text-shadow: none;
      -gtk-icon-shadow: none; }
    .osd
    button.destructive-action:backdrop {
      color: #808080;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(239, 41, 41, 0.5));
      background-clip: padding-box;
      box-shadow: none;
      text-shadow: none;
      -gtk-icon-shadow: none; }
.stack-switcher >
button {
  outline-offset: -3px; }
  .stack-switcher >
  button > label {
    padding-left: 6px;
    padding-right: 6px; }
  .stack-switcher >
  button > image {
    padding-left: 6px;
    padding-right: 6px;
    padding-top: 3px;
    padding-bottom: 3px; }
  .stack-switcher >
  button.text-button {
    padding-left: 10px;
    padding-right: 10px; }
  .stack-switcher >
  button.image-button {
    padding-left: 2px;
    padding-right: 2px; }
  .stack-switcher >
  button.needs-attention:active > label,
  .stack-switcher >
  button.needs-attention:active > image, .stack-switcher >
  button.needs-attention:checked > label,
  .stack-switcher >
  button.needs-attention:checked > image {
    animation: none;
    background-image: none; }
button.font separator,
button.file separator {
  background-color: transparent; }
button.font > box > box > label {
  font-weight: bold; }
.inline-toolbar
button, .inline-toolbar
button:backdrop {
  border-radius: 1px;
  border-width: 1px; }
.primary-toolbar
button {
  -gtk-icon-shadow: none; }
button.circular {
  border-radius: 9999px;
  -gtk-outline-radius: 9999px;
  background-origin: padding-box, border-box;
  background-clip: padding-box, border-box; }
  button.circular label {
    padding: 0; }
  button.circular:not(.flat):not(:checked):not(:active):not(:disabled):not(:backdrop) {
    color: #2e3436;
    outline-color: rgba(46, 52, 54, 0.3);
    border-color: #313131;
    border-bottom-color: #91918c;
    background-image: linear-gradient(to bottom, #323232, #dededd 60%, #8b8e8f);
    text-shadow: 0 1px rgba(255, 255, 255, 0.76923);
    -gtk-icon-shadow: 0 1px rgba(255, 255, 255, 0.76923);
    box-shadow: inset 0 1px rgba(255, 255, 255, 0.8);
    background-image: linear-gradient(to bottom, #323232, #dededd 60%, #8b8e8f), linear-gradient(to top, #91918c 25%, #313131 50%);
    border-color: transparent; }
  button.circular:hover:not(:checked):not(:active):not(:disabled):not(:backdrop) {
    color: #2e3436;
    outline-color: rgba(46, 52, 54, 0.3);
    border-color: #313131;
    border-bottom-color: #91918c;
    text-shadow: 0 1px rgba(255, 255, 255, 0.76923);
    -gtk-icon-shadow: 0 1px rgba(255, 255, 255, 0.76923);
    box-shadow: inset 0 1px white;
    background-image: linear-gradient(to bottom, #f7f7f7, #323232 60%, #dededd);
    background-image: linear-gradient(to bottom, #f7f7f7, #323232 60%, #dededd), linear-gradient(to top, #91918c 25%, #313131 50%);
    border-color: transparent; }

.stack-switcher >
button.needs-attention > label,
.stack-switcher >
button.needs-attention > image, stacksidebar row.needs-attention > label {
  animation: needs_attention 150ms ease-in;
  background-image: -gtk-gradient(radial, center center, 0, center center, 0.5, to(@theme_selected_bg_color), to(transparent)), -gtk-gradient(radial, center center, 0, center center, 0.5, to(rgba(255, 255, 255, 0.76923)), to(transparent));
  background-size: 6px 6px, 6px 6px;
  background-repeat: no-repeat;
  background-position: right 3px, right 4px; }
  .stack-switcher >
  button.needs-attention > label:backdrop,
  .stack-switcher >
  button.needs-attention > image:backdrop, stacksidebar row.needs-attention > label:backdrop {
    background-size: 6px 6px, 0 0; }
  .stack-switcher >
  button.needs-attention > label:dir(rtl),
  .stack-switcher >
  button.needs-attention > image:dir(rtl), stacksidebar row.needs-attention > label:dir(rtl) {
    background-position: left 3px, left 4px; }

.inline-toolbar toolbutton > button {
  color: #2e3436;
  outline-color: rgba(46, 52, 54, 0.3);
  border-color: #313131;
  border-bottom-color: #91918c;
  background-image: linear-gradient(to bottom, #323232, #dededd 60%, #8b8e8f);
  text-shadow: 0 1px rgba(255, 255, 255, 0.76923);
  -gtk-icon-shadow: 0 1px rgba(255, 255, 255, 0.76923);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.8); }
  .inline-toolbar toolbutton > button:hover {
    color: #2e3436;
    outline-color: rgba(46, 52, 54, 0.3);
    border-color: #313131;
    border-bottom-color: #91918c;
    text-shadow: 0 1px rgba(255, 255, 255, 0.76923);
    -gtk-icon-shadow: 0 1px rgba(255, 255, 255, 0.76923);
    box-shadow: inset 0 1px white;
    background-image: linear-gradient(to bottom, #f7f7f7, #323232 60%, #dededd); }
  .inline-toolbar toolbutton > button:active, .inline-toolbar toolbutton > button:checked {
    color: #2e3436;
    outline-color: rgba(46, 52, 54, 0.3);
    border-color: #313131;
    background-image: image(#d9d9d7);
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    text-shadow: none;
    -gtk-icon-shadow: none; }
  .inline-toolbar toolbutton > button:disabled {
    border-color: #313131;
    background-image: image(#333333);
    text-shadow: none;
    -gtk-icon-shadow: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
    .inline-toolbar toolbutton > button:disabled label, .inline-toolbar toolbutton > button:disabled {
      color: #666666; }
    .inline-toolbar toolbutton > button:disabled:active, .inline-toolbar toolbutton > button:disabled:checked {
      border-color: #313131;
      background-image: image(#d7d7d7);
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      .inline-toolbar toolbutton > button:disabled:active label, .inline-toolbar toolbutton > button:disabled:active, .inline-toolbar toolbutton > button:disabled:checked label, .inline-toolbar toolbutton > button:disabled:checked {
        color: #666666; }
  .inline-toolbar toolbutton > button:backdrop {
    border-color: #c0c0bd;
    background-image: image(#323232);
    text-shadow: none;
    -gtk-icon-shadow: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
    .inline-toolbar toolbutton > button:backdrop label, .inline-toolbar toolbutton > button:backdrop {
      color: #666666; }
    .inline-toolbar toolbutton > button:backdrop:active, .inline-toolbar toolbutton > button:backdrop:checked {
      border-color: #c0c0bd;
      background-image: image(#d7d7d7);
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      .inline-toolbar toolbutton > button:backdrop:active label, .inline-toolbar toolbutton > button:backdrop:active, .inline-toolbar toolbutton > button:backdrop:checked label, .inline-toolbar toolbutton > button:backdrop:checked {
        color: #666666; }
    .inline-toolbar toolbutton > button:backdrop:disabled {
      border-color: #c0c0bd;
      background-image: image(#333333);
      text-shadow: none;
      -gtk-icon-shadow: none;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      .inline-toolbar toolbutton > button:backdrop:disabled label, .inline-toolbar toolbutton > button:backdrop:disabled {
        color: #c3c3c0; }
      .inline-toolbar toolbutton > button:backdrop:disabled:active, .inline-toolbar toolbutton > button:backdrop:disabled:checked {
        border-color: #c0c0bd;
        background-image: image(#d7d7d7);
        box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
        .inline-toolbar toolbutton > button:backdrop:disabled:active label, .inline-toolbar toolbutton > button:backdrop:disabled:checked label {
          color: #c3c3c0; }

toolbar.inline-toolbar toolbutton > button.flat,
toolbar.inline-toolbar toolbutton:backdrop > button.flat, .linked:not(.vertical) > spinbutton:not(.vertical), .linked:not(.vertical) >
entry, .inline-toolbar
button, .inline-toolbar
button:backdrop, .linked >
button, .linked >
button:hover, .linked >
button:active, .linked >
button:checked, .linked >
button:backdrop, .linked > combobox > box > button.combo:dir(ltr), .linked > combobox > box > button.combo:dir(rtl) {
  border-radius: 0;
  border-right-style: none; }

.linked:not(.vertical) > spinbutton:first-child:not(.vertical), .linked:not(.vertical) >
entry:first-child, .inline-toolbar
button:first-child, .linked >
button:first-child, toolbar.inline-toolbar toolbutton:first-child > button.flat,
toolbar.inline-toolbar toolbutton:backdrop:first-child > button.flat, combobox.linked button:nth-child(2):dir(rtl), .linked:not(.vertical) > combobox:first-child > box > button.combo {
  border-top-left-radius: 2px;
  border-bottom-left-radius: 2px; }
.linked:not(.vertical) > spinbutton:last-child:not(.vertical), .linked:not(.vertical) >
entry:last-child, .inline-toolbar
button:last-child, .linked >
button:last-child, toolbar.inline-toolbar toolbutton:last-child > button.flat,
toolbar.inline-toolbar toolbutton:backdrop:last-child > button.flat, combobox.linked button:nth-child(2):dir(ltr), .linked:not(.vertical) > combobox:last-child > box > button.combo {
  border-top-right-radius: 2px;
  border-bottom-right-radius: 2px;
  border-right-style: solid; }
.linked:not(.vertical) > spinbutton:only-child:not(.vertical), .linked:not(.vertical) >
entry:only-child, .inline-toolbar
button:only-child, .linked >
button:only-child, toolbar.inline-toolbar toolbutton:only-child > button.flat,
toolbar.inline-toolbar toolbutton:backdrop:only-child > button.flat, .linked:not(.vertical) > combobox:only-child > box > button.combo {
  border-radius: 2px;
  border-style: solid; }

.linked.vertical > spinbutton:not(.vertical), .linked.vertical >
entry, .linked.vertical >
button, .linked.vertical >
button:hover, .linked.vertical >
button:active, .linked.vertical >
button:checked, .linked.vertical >
button:backdrop, .linked.vertical > combobox > box > button.combo {
  border-style: solid solid none solid;
  border-radius: 0; }

.linked.vertical > spinbutton:first-child:not(.vertical), .linked.vertical >
entry:first-child, .linked.vertical >
button:first-child, .linked.vertical > combobox:first-child > box > button.combo {
  border-top-left-radius: 3px;
  border-top-right-radius: 3px; }
.linked.vertical > spinbutton:last-child:not(.vertical), .linked.vertical >
entry:last-child, .linked.vertical >
button:last-child, .linked.vertical > combobox:last-child > box > button.combo {
  border-bottom-left-radius: 3px;
  border-bottom-right-radius: 3px;
  border-style: solid; }
.linked.vertical > spinbutton:only-child:not(.vertical), .linked.vertical >
entry:only-child, .linked.vertical >
button:only-child, .linked.vertical > combobox:only-child > box > button.combo {
  border-radius: 1px;
  border-style: solid; }

modelbutton.flat,
.menuitem.button.flat, modelbutton.flat:backdrop, modelbutton.flat:backdrop:hover,
.menuitem.button.flat:backdrop,
.menuitem.button.flat:backdrop:hover, button:link,
button:visited, button:link:hover, button:link:active, button:link:checked,
button:visited:hover,
button:visited:active,
button:visited:checked, calendar.button, .scale-popup button:hover, .scale-popup button:backdrop:hover, .scale-popup button:backdrop:disabled, .scale-popup button:backdrop {
  background-color: transparent;
  background-image: none;
  border-color: transparent;
  box-shadow: inset 0 1px rgba(255, 255, 255, 0), 0 1px rgba(255, 255, 255, 0);
  text-shadow: none;
  -gtk-icon-shadow: none; }

/* menu buttons */
modelbutton.flat,
.menuitem.button.flat {
  min-height: 26px;
  padding-left: 5px;
  padding-right: 5px;
  border-radius: 3px;
  outline-offset: -2px; }
  modelbutton.flat:hover,
  .menuitem.button.flat:hover {
    background-color: #f4f4f4; }

modelbutton.flat arrow {
  background: none; }
  modelbutton.flat arrow:hover {
    background: none; }
  modelbutton.flat arrow.left {
    -gtk-icon-source: -gtk-icontheme("pan-start-symbolic"); }
  modelbutton.flat arrow.right {
    -gtk-icon-source: -gtk-icontheme("pan-end-symbolic"); }

button.color {
  padding-left: 32px;
  padding-right: 32px;  }
  button.color colorswatch:only-child {
    box-shadow: 0 1px rgba(255, 255, 255, 0.76923); }
    button.color colorswatch:only-child, button.color colorswatch:only-child overlay {
      border-radius: 0; }
    .osd button.color colorswatch:only-child {
      box-shadow: none; }
  .osd button.color:disabled colorswatch:only-child, .osd button.color:backdrop colorswatch:only-child, .osd button.color:active colorswatch:only-child, .osd button.color:checked colorswatch:only-child, button.color:disabled colorswatch:only-child, button.color:backdrop colorswatch:only-child, button.color:active colorswatch:only-child, button.color:checked colorswatch:only-child {
    box-shadow: none; }

/*********
 * Links *
 *********/
button:link > label,
button:visited > label,
*:link,
button:link,
button:visited {
  color: @theme_sel_bg_shaded; }
  button:link > label:visited,
  button:visited > label:visited,
  *:link:visited,
  button:visited {
    color: @theme_sel_bg_shaded; }
    *:selected button:link > label:visited,
    *:selected button:visited > label:visited, *:selected
    *:link:visited, *:selected
    button:visited:link,
    *:selected button:visited {
      color: #b7d3f0; }
  button:link > label:hover,
  button:visited > label:hover,
  *:link:hover,
  button:hover:link,
  button:hover:visited {
    color: @theme_selected_bg_color; }
    *:selected button:link > label:hover,
    *:selected button:visited > label:hover, *:selected
    *:link:hover, *:selected
    button:hover:link,
    *:selected button:hover:visited {
      color: #edf4fb; }
  button:link > label:active,
  button:visited > label:active,
  *:link:active,
  button:active:link,
  button:active:visited {
    color: @theme_sel_bg_shaded; }
    *:selected button:link > label:active,
    *:selected button:visited > label:active, *:selected
    *:link:active, *:selected
    button:active:link,
    *:selected button:active:visited {
      color: #dbe9f7; }
  button:link > label:backdrop:backdrop:hover,
  button:visited > label:backdrop:backdrop:hover, button:link > label:backdrop:backdrop:hover:selected,
  button:visited > label:backdrop:backdrop:hover:selected, button:link > label:backdrop,
  button:visited > label:backdrop,
  *:link:backdrop:backdrop:hover,
  button:backdrop:backdrop:hover:link,
  button:backdrop:backdrop:hover:visited,
  *:link:backdrop:backdrop:hover:selected,
  button:backdrop:backdrop:hover:selected:link,
  button:backdrop:backdrop:hover:selected:visited,
  .selection-mode.titlebar:not(headerbar) .subtitle:backdrop:backdrop:hover:link,
  headerbar.selection-mode .subtitle:backdrop:backdrop:hover:link,
  *:link:backdrop,
  button:backdrop:link,
  button:backdrop:visited {
    color: @theme_selected_bg_color; }
  infobar.info *:link, infobar.info button:link,
  infobar.info button:visited, infobar.question *:link, infobar.question button:link,
  infobar.question button:visited, infobar.warning *:link, infobar.warning button:link,
  infobar.warning button:visited, infobar.error *:link, infobar.error button:link,
  infobar.error button:visited, button:link > label:selected,
  button:visited > label:selected, *:selected button:link > label,
  *:selected button:visited > label,
  *:link:selected,
  button:selected:link,
  button:selected:visited,
  .selection-mode.titlebar:not(headerbar) .subtitle:link,
  headerbar.selection-mode .subtitle:link, *:selected
  *:link, *:selected
  button:link,
  *:selected button:visited {
    color: #dbe9f7; }

button:link,
button:visited {
  text-shadow: none; }
  button:link:hover, button:link:active, button:link:checked,
  button:visited:hover,
  button:visited:active,
  button:visited:checked {
    text-shadow: none; }
  button:link > label,
  button:visited > label {
    text-decoration-line: underline; }

/*****************
 * GtkSpinButton *
 *****************/
spinbutton:not(.vertical) {
  padding: 0; }
  spinbutton:not(.vertical) entry {
    min-width: 28px;
    margin: 0;
    background: none;
    background-color: transparent;
    border: none;
    border-radius: 0;
    box-shadow: none; }
    spinbutton:not(.vertical) entry:backdrop:disabled {
      background-color: transparent; }
  spinbutton:not(.vertical) button {
    min-height: 16px;
    margin: 0;
    padding-bottom: 0;
    padding-top: 0;
    color: #43484a;
    background-image: none;
    border-style: none none none solid;
    border-color: rgba(182, 182, 179, 0.3);
    border-radius: 0;
    box-shadow: none; }
    spinbutton:not(.vertical) button:dir(rtl) {
      border-style: none solid none none; }
    spinbutton:not(.vertical) button:hover {
      color: #2e3436;
      background-color: rgba(46, 52, 54, 0.05); }
    spinbutton:not(.vertical) button:disabled {
      color: rgba(139, 142, 143, 0.3);
      background-color: transparent; }
    spinbutton:not(.vertical) button:active {
      background-color: rgba(0, 0, 0, 0.1);
      box-shadow: inset 0 2px 3px -1px rgba(0, 0, 0, 0.2); }
    spinbutton:not(.vertical) button:backdrop {
      color: #96999a;
      background-color: transparent;
      border-color: rgba(192, 192, 189, 0.3);
      transition: 200ms ease-out; }
    spinbutton:not(.vertical) button:backdrop:disabled {
      color: rgba(195, 195, 192, 0.3);
      background-color: transparent;
      border-style: none none none solid; }
      spinbutton:not(.vertical) button:backdrop:disabled:dir(rtl) {
        border-style: none solid none none; }
    spinbutton:not(.vertical) button:dir(ltr):last-child {
      border-radius: 0 1px 1px 0; }
    spinbutton:not(.vertical) button:dir(rtl):first-child {
      border-radius: 1px 0 0 1px; }
.osd spinbutton:not(.vertical) button {
  border-color: transparent;
  background-color: transparent;
  background-image: none;
  box-shadow: inset 0 1px rgba(255, 255, 255, 0);
  text-shadow: none;
  -gtk-icon-shadow: none;
  color: #808080;
  border-style: none none none solid;
  border-color: rgba(0, 0, 0, 0.4);
  border-radius: 0;
  box-shadow: none;
  -gtk-icon-shadow: 0 1px black; }
  .osd spinbutton:not(.vertical) button:dir(rtl) {
    border-style: none solid none none; }
  .osd spinbutton:not(.vertical) button:hover {
    border-color: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    text-shadow: none;
    -gtk-icon-shadow: none;
    color: #808080;
    border-color: rgba(0, 0, 0, 0.5);
    background-color: rgba(238, 238, 236, 0.1);
    -gtk-icon-shadow: 0 1px black;
    box-shadow: none; }
  .osd spinbutton:not(.vertical) button:backdrop {
    border-color: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    text-shadow: none;
    -gtk-icon-shadow: none;
    color: #808080;
    border-color: rgba(0, 0, 0, 0.5);
    -gtk-icon-shadow: none;
    box-shadow: none; }
  .osd spinbutton:not(.vertical) button:disabled {
    border-color: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    text-shadow: none;
    -gtk-icon-shadow: none;
    color: #858786;
    border-color: rgba(0, 0, 0, 0.5);
    -gtk-icon-shadow: none;
    box-shadow: none; }
  .osd spinbutton:not(.vertical) button:dir(ltr):last-child {
    border-radius: 0 1px 1px 0; }
  .osd spinbutton:not(.vertical) button:dir(rtl):first-child {
    border-radius: 1px 0 0 1px; }
spinbutton.vertical:disabled {
  color: #666666; }
spinbutton.vertical:backdrop:disabled {
  color: #c3c3c0; }
spinbutton.vertical:drop(active) {
  border-color: transparent;
  box-shadow: none; }
spinbutton.vertical entry {
  min-height: 32px;
  min-width: 32px;
  padding: 0;
  border-radius: 0; }
spinbutton.vertical button {
  min-height: 32px;
  min-width: 32px;
  padding: 0; }
spinbutton.vertical button.up {
  border-radius: 1px 1px 0 0;
  border-style: solid solid none solid; }
spinbutton.vertical button.down {
  border-radius: 0 0 1px 1px;
  border-style: none solid solid solid; }
.osd spinbutton.vertical button:first-child {
  color: #808080;
  border-color: rgba(0, 0, 0, 0.7);
  background-color: transparent;
  background-image: image(rgba(28, 31, 32, 0.7));
  background-clip: padding-box;
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
  text-shadow: 0 1px black;
  -gtk-icon-shadow: 0 1px black;
  outline-color: rgba(238, 238, 236, 0.3); }
  .osd spinbutton.vertical button:first-child:hover {
    color: white;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(57, 63, 65, 0.7));
    background-clip: padding-box;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
    text-shadow: 0 1px black;
    -gtk-icon-shadow: 0 1px black;
    outline-color: rgba(238, 238, 236, 0.3); }
  .osd spinbutton.vertical button:first-child:active {
    color: white;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(0, 0, 0, 0.7));
    background-clip: padding-box;
    box-shadow: none;
    text-shadow: none;
    -gtk-icon-shadow: none;
    outline-color: rgba(238, 238, 236, 0.3); }
  .osd spinbutton.vertical button:first-child:disabled {
    color: #858786;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(49, 52, 52, 0.5));
    background-clip: padding-box;
    box-shadow: none;
    text-shadow: none;
    -gtk-icon-shadow: none; }
  .osd spinbutton.vertical button:first-child:backdrop {
    color: #808080;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(28, 31, 32, 0.7));
    background-clip: padding-box;
    box-shadow: none;
    text-shadow: none;
    -gtk-icon-shadow: none; }
treeview spinbutton:not(.vertical) {
  min-height: 0;
  border-style: none;
  border-radius: 0; }
  treeview spinbutton:not(.vertical) entry {
    min-height: 0;
    padding: 1px 2px; }

/**************
 * ComboBoxes *
 **************/
combobox arrow {
  -gtk-icon-source: -gtk-icontheme("pan-down-symbolic");
  min-height: 16px;
  min-width: 16px; }
combobox:drop(active) {
  box-shadow: none; }
/* required to make height of non-entry combo consistent with entry combo */
combobox button.combo {
  padding: 2px 6px 2px 6px;
}

/************
 * Toolbars *
 ************/
toolbar, .inline-toolbar, searchbar,
.location-bar {
  -GtkWidget-window-dragging: true;
  padding: 4px;
  background-color: #323232; }

toolbar {
  padding: 4px 3px 3px 4px; }
  .osd toolbar {
    background-color: transparent; }
  toolbar.osd {
    padding: 13px;
    border: none;
    border-radius: 5px;
    background-color: rgba(28, 31, 32, 0.7); }
    toolbar.osd.left, toolbar.osd.right, toolbar.osd.top, toolbar.osd.bottom {
      border-radius: 0; }
  toolbar.horizontal separator {
    margin: 0 7px 1px 6px; }
  toolbar.vertical separator {
    margin: 6px 1px 7px 0; }
  toolbar:not(.inline-toolbar):not(.osd) switch,
  toolbar:not(.inline-toolbar):not(.osd) scale,
  toolbar:not(.inline-toolbar):not(.osd) entry,
  toolbar:not(.inline-toolbar):not(.osd) spinbutton,
  toolbar:not(.inline-toolbar):not(.osd) button {
    margin-right: 1px;
    margin-bottom: 1px; }

.inline-toolbar {
  padding: 3px;
  border-width: 0 1px 1px;
  border-radius: 0  0 5px 5px; }

searchbar,
.location-bar {
  border-width: 0 0 1px;
  padding: 3px; }

.inline-toolbar, searchbar,
.location-bar {
  border-style: solid;
  border-color: #313131;
  background-color: #d9d9d7; }
  .inline-toolbar:backdrop, searchbar:backdrop,
  .location-bar:backdrop {
    border-color: #c0c0bd;
    background-color: #dadad8;
    box-shadow: none;
    transition: 200ms ease-out; }

/***************
 * Header bars *
 ***************/
.titlebar:not(headerbar),
headerbar {
  padding: 0 6px;
  min-height: 46px;
  border-width: 0;
  border-style: none;
  color: @theme_selected_fg_color;
  background: @theme_selected_bg_color;
  box-shadow: none; }
  .titlebar:backdrop:not(headerbar),
  headerbar:backdrop {
    border-color: #c0c0bd;
    background-color: #323232;
    background-image: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0.8);
    transition: 200ms ease-out; }
  .titlebar:not(headerbar) .title,
  headerbar .title {
    padding-left: 12px;
    padding-right: 12px;
    font-weight: bold; }
  .titlebar:not(headerbar) .subtitle,
  headerbar .subtitle {
    font-size: smaller;
    padding-left: 12px;
    padding-right: 12px; }
  .selection-mode.titlebar:not(headerbar),
  headerbar.selection-mode {
    color: #bfbfbf;
    border-color: @theme_sel_bg_shaded;
    text-shadow: 0 -1px rgba(0, 0, 0, 0.5);
    background: @theme_selected_bg_color linear-gradient(to top, #276fba, #428bd7 2px, @theme_selected_bg_color 3px);
    box-shadow: inset 0 1px rgba(146, 188, 232, 0.9); }
    .selection-mode.titlebar:backdrop:not(headerbar),
    headerbar.selection-mode:backdrop {
      background-color: @theme_selected_bg_color;
      background-image: none;
      box-shadow: inset 0 1px rgba(165, 200, 236, 0.88); }
    .selection-mode.titlebar:not(headerbar) button,
    headerbar.selection-mode button {
      color: #bfbfbf;
      outline-color: rgba(255, 255, 255, 0.3);
      border-color: @theme_sel_bg_shaded;
      background-image: image(@theme_selected_bg_color);
      text-shadow: 0 -1px rgba(0, 0, 0, 0.54353);
      -gtk-icon-shadow: 0 -1px rgba(0, 0, 0, 0.54353);
      box-shadow: inset 0 1px rgba(255, 255, 255, 0.4); }
      .selection-mode.titlebar:not(headerbar) button.flat,
      headerbar.selection-mode button.flat {
        border-color: transparent;
        background-color: transparent;
        background-image: none;
        box-shadow: inset 0 1px rgba(255, 255, 255, 0);
        text-shadow: none;
        -gtk-icon-shadow: none; }
      .selection-mode.titlebar:not(headerbar) button:hover,
      headerbar.selection-mode button:hover {
        color: #bfbfbf;
        outline-color: rgba(255, 255, 255, 0.3);
        border-color: @theme_sel_bg_shaded;
        text-shadow: 0 -1px rgba(0, 0, 0, 0.49553);
        -gtk-icon-shadow: 0 -1px rgba(0, 0, 0, 0.49553);
        box-shadow: inset 0 1px rgba(255, 255, 255, 0.4);
        background-image: image(lighter (@theme_selected_bg_color)); }
      .selection-mode.titlebar:not(headerbar) button:active, .selection-mode.titlebar:not(headerbar) button:checked,
      headerbar.selection-mode button:active,
      headerbar.selection-mode button:checked {
        color: #bfbfbf;
        outline-color: rgba(255, 255, 255, 0.3);
        border-color: @theme_sel_bg_shaded;
        background-image: image(@theme_selected_bg_color);
        box-shadow: inset 0 1px rgba(255, 255, 255, 0);
        text-shadow: none;
        -gtk-icon-shadow: none; }
      .selection-mode.titlebar:not(headerbar) button:backdrop.flat, .selection-mode.titlebar:not(headerbar) button:backdrop,
      headerbar.selection-mode button:backdrop.flat,
      headerbar.selection-mode button:backdrop {
        border-color: @theme_selected_bg_color;
        background-image: image(@theme_selected_bg_color);
        text-shadow: none;
        -gtk-icon-shadow: none;
        box-shadow: inset 0 1px rgba(255, 255, 255, 0);
        -gtk-icon-effect: none;
        border-color: @theme_sel_bg_shaded; }
        .selection-mode.titlebar:not(headerbar) button:backdrop.flat label, .selection-mode.titlebar:not(headerbar) button:backdrop.flat, .selection-mode.titlebar:not(headerbar) button:backdrop label, .selection-mode.titlebar:not(headerbar) button:backdrop,
        headerbar.selection-mode button:backdrop.flat label,
        headerbar.selection-mode button:backdrop.flat,
        headerbar.selection-mode button:backdrop label,
        headerbar.selection-mode button:backdrop {
          color: #dbe9f7; }
        .selection-mode.titlebar:not(headerbar) button:backdrop.flat:active, .selection-mode.titlebar:not(headerbar) button:backdrop.flat:checked, .selection-mode.titlebar:not(headerbar) button:backdrop:active, .selection-mode.titlebar:not(headerbar) button:backdrop:checked,
        headerbar.selection-mode button:backdrop.flat:active,
        headerbar.selection-mode button:backdrop.flat:checked,
        headerbar.selection-mode button:backdrop:active,
        headerbar.selection-mode button:backdrop:checked {
          border-color: @theme_selected_bg_color;
          background-image: image(@theme_selected_bg_color);
          box-shadow: inset 0 1px rgba(255, 255, 255, 0);
          border-color: @theme_sel_bg_shaded; }
          .selection-mode.titlebar:not(headerbar) button:backdrop.flat:active label, .selection-mode.titlebar:not(headerbar) button:backdrop.flat:active, .selection-mode.titlebar:not(headerbar) button:backdrop.flat:checked label, .selection-mode.titlebar:not(headerbar) button:backdrop.flat:checked, .selection-mode.titlebar:not(headerbar) button:backdrop:active label, .selection-mode.titlebar:not(headerbar) button:backdrop:active, .selection-mode.titlebar:not(headerbar) button:backdrop:checked label, .selection-mode.titlebar:not(headerbar) button:backdrop:checked,
          headerbar.selection-mode button:backdrop.flat:active label,
          headerbar.selection-mode button:backdrop.flat:active,
          headerbar.selection-mode button:backdrop.flat:checked label,
          headerbar.selection-mode button:backdrop.flat:checked,
          headerbar.selection-mode button:backdrop:active label,
          headerbar.selection-mode button:backdrop:active,
          headerbar.selection-mode button:backdrop:checked label,
          headerbar.selection-mode button:backdrop:checked {
            color: #d9e8f7; }
        .selection-mode.titlebar:not(headerbar) button:backdrop.flat:disabled, .selection-mode.titlebar:not(headerbar) button:backdrop:disabled,
        headerbar.selection-mode button:backdrop.flat:disabled,
        headerbar.selection-mode button:backdrop:disabled {
          border-color: lighter(@theme_selected_bg_color);
          background-image: image(lighter(@theme_selected_bg_color));
          text-shadow: none;
          -gtk-icon-shadow: none;
          box-shadow: inset 0 1px rgba(255, 255, 255, 0);
          border-color: @theme_sel_bg_shaded; }
          .selection-mode.titlebar:not(headerbar) button:backdrop.flat:disabled label, .selection-mode.titlebar:not(headerbar) button:backdrop.flat:disabled, .selection-mode.titlebar:not(headerbar) button:backdrop:disabled label, .selection-mode.titlebar:not(headerbar) button:backdrop:disabled,
          headerbar.selection-mode button:backdrop.flat:disabled label,
          headerbar.selection-mode button:backdrop.flat:disabled,
          headerbar.selection-mode button:backdrop:disabled label,
          headerbar.selection-mode button:backdrop:disabled {
            color: #9bc2ea; }
          .selection-mode.titlebar:not(headerbar) button:backdrop.flat:disabled:active, .selection-mode.titlebar:not(headerbar) button:backdrop.flat:disabled:checked, .selection-mode.titlebar:not(headerbar) button:backdrop:disabled:active, .selection-mode.titlebar:not(headerbar) button:backdrop:disabled:checked,
          headerbar.selection-mode button:backdrop.flat:disabled:active,
          headerbar.selection-mode button:backdrop.flat:disabled:checked,
          headerbar.selection-mode button:backdrop:disabled:active,
          headerbar.selection-mode button:backdrop:disabled:checked {
            border-color: @theme_selected_bg_color;
            background-image: image(@theme_selected_bg_color);
            box-shadow: inset 0 1px rgba(255, 255, 255, 0);
            border-color: @theme_sel_bg_shaded; }
            .selection-mode.titlebar:not(headerbar) button:backdrop.flat:disabled:active label, .selection-mode.titlebar:not(headerbar) button:backdrop.flat:disabled:checked label, .selection-mode.titlebar:not(headerbar) button:backdrop:disabled:active label, .selection-mode.titlebar:not(headerbar) button:backdrop:disabled:checked label,
            headerbar.selection-mode button:backdrop.flat:disabled:active label,
            headerbar.selection-mode button:backdrop.flat:disabled:checked label,
            headerbar.selection-mode button:backdrop:disabled:active label,
            headerbar.selection-mode button:backdrop:disabled:checked label {
              color: #85b4e6; }
      .selection-mode.titlebar:not(headerbar) button.flat:backdrop, .selection-mode.titlebar:not(headerbar) button.flat:disabled, .selection-mode.titlebar:not(headerbar) button.flat:backdrop:disabled,
      headerbar.selection-mode button.flat:backdrop,
      headerbar.selection-mode button.flat:disabled,
      headerbar.selection-mode button.flat:backdrop:disabled {
        border-color: transparent;
        background-color: transparent;
        background-image: none;
        box-shadow: inset 0 1px rgba(255, 255, 255, 0);
        text-shadow: none;
        -gtk-icon-shadow: none; }
      .selection-mode.titlebar:not(headerbar) button:disabled,
      headerbar.selection-mode button:disabled {
        border-color: @theme_sel_bg_shaded;
        background-image: image(lighter(@theme_selected_bg_color));
        text-shadow: none;
        -gtk-icon-shadow: none;
        box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
        .selection-mode.titlebar:not(headerbar) button:disabled label, .selection-mode.titlebar:not(headerbar) button:disabled,
        headerbar.selection-mode button:disabled label,
        headerbar.selection-mode button:disabled {
          color: #b2d0ef; }
        .selection-mode.titlebar:not(headerbar) button:disabled:active, .selection-mode.titlebar:not(headerbar) button:disabled:checked,
        headerbar.selection-mode button:disabled:active,
        headerbar.selection-mode button:disabled:checked {
          border-color: @theme_sel_bg_shaded;
          background-image: image(@theme_selected_bg_color);
          box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
          .selection-mode.titlebar:not(headerbar) button:disabled:active label, .selection-mode.titlebar:not(headerbar) button:disabled:active, .selection-mode.titlebar:not(headerbar) button:disabled:checked label, .selection-mode.titlebar:not(headerbar) button:disabled:checked,
          headerbar.selection-mode button:disabled:active label,
          headerbar.selection-mode button:disabled:active,
          headerbar.selection-mode button:disabled:checked label,
          headerbar.selection-mode button:disabled:checked {
            color: #b4d1ef; }
      .selection-mode.titlebar:not(headerbar) button.suggested-action,
      headerbar.selection-mode button.suggested-action {
        color: #2e3436;
        outline-color: rgba(46, 52, 54, 0.3);
        border-color: #313131;
        border-bottom-color: #91918c;
        background-image: linear-gradient(to bottom, #323232, #dededd 60%, #8b8e8f);
        text-shadow: 0 1px rgba(255, 255, 255, 0.76923);
        -gtk-icon-shadow: 0 1px rgba(255, 255, 255, 0.76923);
        box-shadow: inset 0 1px rgba(255, 255, 255, 0.8);
        border-color: @theme_sel_bg_shaded; }
        .selection-mode.titlebar:not(headerbar) button.suggested-action:hover,
        headerbar.selection-mode button.suggested-action:hover {
          color: #2e3436;
          outline-color: rgba(46, 52, 54, 0.3);
          border-color: #313131;
          border-bottom-color: #91918c;
          text-shadow: 0 1px rgba(255, 255, 255, 0.76923);
          -gtk-icon-shadow: 0 1px rgba(255, 255, 255, 0.76923);
          box-shadow: inset 0 1px white;
          background-image: linear-gradient(to bottom, #f7f7f7, #323232 60%, #dededd);
          border-color: @theme_sel_bg_shaded; }
        .selection-mode.titlebar:not(headerbar) button.suggested-action:active,
        headerbar.selection-mode button.suggested-action:active {
          color: #2e3436;
          outline-color: rgba(46, 52, 54, 0.3);
          border-color: #313131;
          background-image: image(#d9d9d7);
          box-shadow: inset 0 1px rgba(255, 255, 255, 0);
          text-shadow: none;
          -gtk-icon-shadow: none;
          border-color: @theme_sel_bg_shaded; }
        .selection-mode.titlebar:not(headerbar) button.suggested-action:disabled,
        headerbar.selection-mode button.suggested-action:disabled {
          border-color: #313131;
          background-image: image(#333333);
          text-shadow: none;
          -gtk-icon-shadow: none;
          box-shadow: inset 0 1px rgba(255, 255, 255, 0);
          border-color: @theme_sel_bg_shaded; }
          .selection-mode.titlebar:not(headerbar) button.suggested-action:disabled label, .selection-mode.titlebar:not(headerbar) button.suggested-action:disabled,
          headerbar.selection-mode button.suggested-action:disabled label,
          headerbar.selection-mode button.suggested-action:disabled {
            color: #666666; }
        .selection-mode.titlebar:not(headerbar) button.suggested-action:backdrop,
        headerbar.selection-mode button.suggested-action:backdrop {
          border-color: #c0c0bd;
          background-image: image(#323232);
          text-shadow: none;
          -gtk-icon-shadow: none;
          box-shadow: inset 0 1px rgba(255, 255, 255, 0);
          border-color: @theme_sel_bg_shaded; }
          .selection-mode.titlebar:not(headerbar) button.suggested-action:backdrop label, .selection-mode.titlebar:not(headerbar) button.suggested-action:backdrop,
          headerbar.selection-mode button.suggested-action:backdrop label,
          headerbar.selection-mode button.suggested-action:backdrop {
            color: #666666; }
        .selection-mode.titlebar:not(headerbar) button.suggested-action:backdrop:disabled,
        headerbar.selection-mode button.suggested-action:backdrop:disabled {
          border-color: #c0c0bd;
          background-image: image(#333333);
          text-shadow: none;
          -gtk-icon-shadow: none;
          box-shadow: inset 0 1px rgba(255, 255, 255, 0);
          border-color: @theme_sel_bg_shaded; }
          .selection-mode.titlebar:not(headerbar) button.suggested-action:backdrop:disabled label, .selection-mode.titlebar:not(headerbar) button.suggested-action:backdrop:disabled,
          headerbar.selection-mode button.suggested-action:backdrop:disabled label,
          headerbar.selection-mode button.suggested-action:backdrop:disabled {
            color: #c3c3c0; }
    .selection-mode.titlebar:not(headerbar) .selection-menu:backdrop, .selection-mode.titlebar:not(headerbar) .selection-menu,
    headerbar.selection-mode .selection-menu:backdrop,
    headerbar.selection-mode .selection-menu {
      border-color: rgba(74, 144, 217, 0);
      background-color: rgba(74, 144, 217, 0);
      background-image: none;
      box-shadow: none;
      padding-left: 10px;
      padding-right: 10px; }
      .selection-mode.titlebar:not(headerbar) .selection-menu:backdrop GtkArrow, .selection-mode.titlebar:not(headerbar) .selection-menu GtkArrow,
      headerbar.selection-mode .selection-menu:backdrop GtkArrow,
      headerbar.selection-mode .selection-menu GtkArrow {
        -GtkArrow-arrow-scaling: 1; }
      .selection-mode.titlebar:not(headerbar) .selection-menu:backdrop .arrow, .selection-mode.titlebar:not(headerbar) .selection-menu .arrow,
      headerbar.selection-mode .selection-menu:backdrop .arrow,
      headerbar.selection-mode .selection-menu .arrow {
        -gtk-icon-source: -gtk-icontheme("pan-down-symbolic");
        color: rgba(255, 255, 255, 0.5);
        -gtk-icon-shadow: none; }
  .tiled .titlebar:backdrop:not(headerbar), .tiled .titlebar:not(headerbar), .maximized .titlebar:backdrop:not(headerbar), .maximized .titlebar:not(headerbar), .tiled
  headerbar:backdrop, .tiled
  headerbar, .maximized
  headerbar:backdrop, .maximized
  headerbar {
    border-radius: 0; }
  .default-decoration.titlebar:not(headerbar),
  headerbar.default-decoration {
    min-height: 16px;
    padding: 4px; }
    .default-decoration.titlebar:not(headerbar) button.titlebutton,
    headerbar.default-decoration button.titlebutton {
      min-height: 16px;
      min-width: 16px;
      margin: 0;
      padding: 0; }
  .solid-csd .titlebar:backdrop:dir(rtl):not(headerbar), .solid-csd .titlebar:backdrop:dir(ltr):not(headerbar), .solid-csd .titlebar:dir(rtl):not(headerbar), .solid-csd .titlebar:dir(ltr):not(headerbar), .solid-csd
  headerbar:backdrop:dir(rtl), .solid-csd
  headerbar:backdrop:dir(ltr), .solid-csd
  headerbar:dir(rtl), .solid-csd
  headerbar:dir(ltr) {
    margin-left: -1px;
    margin-right: -1px;
    margin-top: -1px;
    border-radius: 0;
    box-shadow: none; }

headerbar entry,
headerbar spinbutton,
headerbar separator,
headerbar button {
  margin-top: 6px;
  margin-bottom: 6px; }
headerbar switch {
  margin-top: 9px;
  margin-bottom: 9px; }

.background:not(.tiled):not(.maximized):not(.solid-csd) .titlebar:backdrop, .background:not(.tiled):not(.maximized):not(.solid-csd) .titlebar {
  border-top-left-radius: 3px;
  border-top-right-radius: 3px; }

window:not(.tiled):not(.maximized):not(.solid-csd) separator:first-child + headerbar:backdrop, window:not(.tiled):not(.maximized):not(.solid-csd) separator:first-child + headerbar, window:not(.tiled):not(.maximized):not(.solid-csd) headerbar:first-child:backdrop, window:not(.tiled):not(.maximized):not(.solid-csd) headerbar:first-child {
  border-top-left-radius: 3px; }
window:not(.tiled):not(.maximized):not(.solid-csd) headerbar:last-child:backdrop, window:not(.tiled):not(.maximized):not(.solid-csd) headerbar:last-child {
  border-top-right-radius: 3px; }
window:not(.tiled):not(.maximized):not(.solid-csd) stack headerbar:first-child:backdrop, window:not(.tiled):not(.maximized):not(.solid-csd) stack headerbar:first-child, window:not(.tiled):not(.maximized):not(.solid-csd) stack headerbar:last-child:backdrop, window:not(.tiled):not(.maximized):not(.solid-csd) stack headerbar:last-child {
  border-top-left-radius: 7px;
  border-top-right-radius: 7px; }
window {
  border-bottom-left-radius: 2px;
  border-bottom-right-radius: 2px; }

window.csd > .titlebar:not(headerbar) {
  padding: 0;
  background-color: transparent;
  background-image: none;
  border-style: none;
  border-color: transparent;
  box-shadow: none; }
.titlebar:not(headerbar) > separator {
  background-color: #313131; }

#pixbox {
  background-color: #bfbfbf;
  border: 1px solid #313131; }

/************
 * Pathbars *
 ************/
.path-bar button.text-button, .path-bar button.image-button, .path-bar button {
  padding-left: 4px;
  padding-right: 4px; }
.path-bar button.text-button.image-button label {
  padding-left: 0;
  padding-right: 0; }
.path-bar button.text-button.image-button label:last-child, .path-bar button label:last-child {
  padding-right: 8px; }
.path-bar button.text-button.image-button label:first-child, .path-bar button label:first-child {
  padding-left: 8px; }
.path-bar button image {
  padding-left: 4px;
  padding-right: 4px; }
.path-bar button.slider-button {
  padding-left: 0;
  padding-right: 0; }

/**************
 * Tree Views *
 **************/
treeview.view {
  border-left-color: #979a9b;
  border-top-color: #323232; }
  * {
    -GtkTreeView-horizontal-separator: 4;
    -GtkTreeView-grid-line-width: 1;
    -GtkTreeView-grid-line-pattern: '';
    -GtkTreeView-tree-line-width: 1;
    -GtkTreeView-tree-line-pattern: '';
    -GtkTreeView-expander-size: 16; }
  treeview.view:selected:focus, treeview.view:selected {
    border-radius: 0; }
  treeview.view:selected:backdrop, treeview.view:selected {
    border-left-color: #a5c8ec;
    border-top-color: rgba(46, 52, 54, 0.1); }
  treeview.view:disabled {
    color: #666666; }
    treeview.view:disabled:selected {
      color: #92bce8; }
      treeview.view:disabled:selected:backdrop {
        color: #7fb0e4; }
    treeview.view:disabled:backdrop {
      color: #c3c3c0; }
  treeview.view.separator {
    min-height: 2px;
    color: #323232; }
    treeview.view.separator:backdrop {
      color: rgba(232, 232, 231, 0.1); }
  treeview.view:backdrop {
    border-left-color: #babbbb;
    border-top: #323232; }
  treeview.view:drop(active) {
    border-style: solid none;
    border-width: 1px;
    border-color: @theme_sel_bg_shaded; }
    treeview.view:drop(active).after {
      border-top-style: none; }
    treeview.view:drop(active).before {
      border-bottom-style: none; }
  treeview.view.expander {
    -gtk-icon-source: -gtk-icontheme("pan-end-symbolic");
    color: #4d4d4d; }
    treeview.view.expander:dir(rtl) {
      -gtk-icon-source: -gtk-icontheme("pan-end-symbolic-rtl"); }
    treeview.view.expander:hover {
      color: black; }
    treeview.view.expander:selected {
      color: #c9def4; }
      treeview.view.expander:selected:hover {
        color: #bfbfbf; }
      treeview.view.expander:selected:backdrop {
        color: #c7dcf2; }
    treeview.view.expander:checked {
      -gtk-icon-source: -gtk-icontheme("pan-down-symbolic"); }
    treeview.view.expander:backdrop {
      color: #adafb0; }
  treeview.view.progressbar {
    color: @theme_selected_fg_color;
    border: 1px solid @theme_sel_bg_shaded;
    border-radius: 4px;
    background-color: @theme_selected_bg_color;
    background-image: linear-gradient(to bottom, @theme_selected_bg_color, @theme_sel_bg_shaded);
    box-shadow: inset 0 1px rgba(255, 255, 255, 0.3), 0 1px rgba(0, 0, 0, 0.2); }
    treeview.view.progressbar:selected:focus, treeview.view.progressbar:selected {
      border-radius: 4px;
      color: @theme_selected_bg_color;
      box-shadow: none;
      background-image: linear-gradient(to bottom, #bfbfbf, #e6e6e6); }
      treeview.view.progressbar:selected:focus:backdrop, treeview.view.progressbar:selected:backdrop {
        color: @theme_selected_bg_color;
        border-color: @theme_sel_bg_shaded;
        background-color: #fcfcfc; }
    treeview.view.progressbar:backdrop {
      color: #fcfcfc;
      background-image: none;
      box-shadow: none; }
  treeview.view.trough {
    background-color: rgba(46, 52, 54, 0.1);
    border-radius: 4px; }
    treeview.view.trough:selected:focus, treeview.view.trough:selected {
      background-color: rgba(255, 255, 255, 0.3);
      border-radius: 4px;
      border-width: 1px 0;
      border-style: solid;
      border-color: @theme_selected_bg_color; }
  treeview.view header button {
    color: #979a9b;
    background-color: #bfbfbf;
    font-weight: normal;
    text-shadow: none;
    box-shadow: none; }
    treeview.view header button:hover {
      color: #636769;
      box-shadow: none;
      transition: none; }
    treeview.view header button:active {
      color: #2e3436;
      transition: none; }
  treeview.view header button:last-child:backdrop, treeview.view header button:last-child {
    border-right-style: none; }
  treeview.view button.dnd:active, treeview.view button.dnd:selected, treeview.view button.dnd:hover, treeview.view button.dnd,
  treeview.view header.button.dnd:active,
  treeview.view header.button.dnd:selected,
  treeview.view header.button.dnd:hover,
  treeview.view header.button.dnd {
    padding: 0 6px;
    color: @theme_selected_fg_color;
    background-image: none;
    background-color: @theme_selected_bg_color;
    border-style: none;
    border-radius: 0;
    box-shadow: inset 0 0 0 1px #bfbfbf;
    text-shadow: none;
    transition: none; }
  treeview.view acceleditor > label {
    background-color: @theme_selected_bg_color; }

treeview.view header button, treeview.view header button:hover, treeview.view header button:active {
  padding: 4px 6px;
  background-image: none;
  border-style: none solid solid none;
  border-color: #323232;
  border-radius: 0;
  text-shadow: none; }
  treeview.view header button:disabled {
    border-color: #323232;
    background-image: none; }
  treeview.view header button:backdrop {
    color: #babbbb;
    border-color: #323232;
    border-style: none solid solid none;
    background-image: none;
    background-color: #fcfcfc; }
    treeview.view header button:backdrop:disabled {
      border-color: #323232;
      background-image: none; }

/*********
 * Menus *
 *********/
menubar,
.menubar {
  -GtkWidget-window-dragging: true;
  padding: 0px; }
  menubar:backdrop,
  .menubar:backdrop {
    background-color: #323232; }
  menubar > menuitem,
  .menubar > menuitem {
    min-height: 16px;
    padding: 4px 8px; }
    menubar > menuitem:hover,
    .menubar > menuitem:hover {
      background-color: white;
      color: black; }
    menubar > menuitem:disabled,
    .menubar > menuitem:disabled {
      color: #666666;
      box-shadow: none; }

menu,
.menu,
.context-menu {
  -GtkMenu-dynamic-resize : true;
  margin: 4px;
  padding: 0px 0px;
  background-color: #bfbfbf;
  border: 1px solid #e0e0e0; }
  .csd menu, .csd
  .menu, .csd
  .context-menu {
    border: none; }
  menu:backdrop,
  .menu:backdrop,
  .context-menu:backdrop {
    background-color: #fcfcfc; }
  menu menuitem,
  .menu menuitem,
  .context-menu menuitem {
    min-height: 16px;
    min-width: 40px;
    padding: 4px 6px;
    text-shadow: none; }
    menu menuitem:hover,
    .menu menuitem:hover,
    .context-menu menuitem:hover {
      color: @theme_selected_fg_color;
      background-color: @theme_selected_bg_color; }
    menu menuitem:disabled,
    .menu menuitem:disabled,
    .context-menu menuitem:disabled {
      color: #666666; }
      menu menuitem:disabled:backdrop,
      .menu menuitem:disabled:backdrop,
      .context-menu menuitem:disabled:backdrop {
        color: #c3c3c0; }
    menu menuitem:backdrop, menu menuitem:backdrop:hover,
    .menu menuitem:backdrop,
    .menu menuitem:backdrop:hover,
    .context-menu menuitem:backdrop,
    .context-menu menuitem:backdrop:hover {
      color: #666666;
      background-color: transparent; }
    menu menuitem check,
    .menu menuitem check,
    .context-menu menuitem check {
      border: none;}
    menu menuitem arrow,
    .menu menuitem arrow,
    .context-menu menuitem arrow {
      min-height: 16px;
      min-width: 16px; }
      menu menuitem arrow:dir(ltr),
      .menu menuitem arrow:dir(ltr),
      .context-menu menuitem arrow:dir(ltr) {
        -gtk-icon-source: -gtk-icontheme("menu-arrow-symbolic-ltr");
        margin-left: 10px; }
      menu menuitem arrow:dir(rtl),
      .menu menuitem arrow:dir(rtl),
      .context-menu menuitem arrow:dir(rtl) {
        -gtk-icon-source: -gtk-icontheme("menu-arrow-symbolic-rtl");
        margin-right: 10px; }
    menu menuitem label:dir(rtl), menu menuitem label:dir(ltr),
    .menu menuitem label:dir(rtl),
    .menu menuitem label:dir(ltr),
    .context-menu menuitem label:dir(rtl),
    .context-menu menuitem label:dir(ltr) {
      color: inherit; }
  menu > arrow,
  .menu > arrow,
  .context-menu > arrow {
    border-color: transparent;
    background-color: transparent;
    background-image: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    text-shadow: none;
    -gtk-icon-shadow: none;
    min-height: 16px;
    min-width: 16px;
    padding: 4px;
    background-color: #bfbfbf;
    border-radius: 0; }
    menu > arrow.top,
    .menu > arrow.top,
    .context-menu > arrow.top {
      margin-top: -6px;
      border-bottom: 1px solid #eaebeb;
      -gtk-icon-source: -gtk-icontheme("pan-up-symbolic"); }
    menu > arrow.bottom,
    .menu > arrow.bottom,
    .context-menu > arrow.bottom {
      margin-bottom: -6px;
      border-top: 1px solid #eaebeb;
      -gtk-icon-source: -gtk-icontheme("pan-down-symbolic"); }
    menu > arrow:hover,
    .menu > arrow:hover,
    .context-menu > arrow:hover {
      background-color: #eaebeb; }
    menu > arrow:backdrop,
    .menu > arrow:backdrop,
    .context-menu > arrow:backdrop {
      background-color: #fcfcfc; }
    menu > arrow:disabled,
    .menu > arrow:disabled,
    .context-menu > arrow:disabled {
      color: transparent;
      background-color: transparent;
      border-color: transparent; }

menuitem accelerator {
  color: alpha(currentColor,0.55); }
menuitem check,
menuitem radio {
  min-height: 16px;
  min-width: 16px; }
  menuitem check:dir(ltr),
  menuitem radio:dir(ltr) {
    margin-right: 7px; }
  menuitem check:dir(rtl),
  menuitem radio:dir(rtl) {
    margin-left: 7px; }

/***************
 * Popovers   *
 ***************/
popover.background {
  padding: 2px;
  border-radius: 5px;
  background-color: #323232;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.3); }
  .csd popover.background, popover.background {
    border: 1px solid #313131; }
  popover.background:backdrop {
    background-color: #323232;
    box-shadow: none; }
  popover.background > list,
  popover.background > .view,
  popover.background > iconview,
  popover.background > toolbar {
    border-style: none;
    background-color: transparent; }
  .csd popover.background.touch-selection, .csd popover.background.magnifier, popover.background.touch-selection, popover.background.magnifier {
    border: 1px solid rgba(255, 255, 255, 0.1); }
  popover.background separator {
    margin: 3px; }
  popover.background list separator {
    margin: 0px; }

/*************
 * Notebooks *
 *************/

notebook > header { padding: 1px; border-color: #cdc7c2; border-width: 1px; background-color: #e1dedb; }

notebook > header:backdrop { border-color: #d5d0cc; background-color: #eae8e6; }

notebook > header tabs { margin: -1px; }

notebook > header.top { border-bottom-style: solid; }

notebook > header.top > tabs { margin-bottom: -2px; }

notebook > header.top > tabs > tab:hover { box-shadow: inset 0 -3px #cdc7c2; }

notebook > header.top > tabs > tab:backdrop { box-shadow: none; }

notebook > header.top > tabs > tab:checked { box-shadow: inset 0 -3px @theme_selected_bg_color; }

notebook > header.bottom { border-top-style: solid; }

notebook > header.bottom > tabs { margin-top: -2px; }

notebook > header.bottom > tabs > tab:hover { box-shadow: inset 0 3px #cdc7c2; }

notebook > header.bottom > tabs > tab:backdrop { box-shadow: none; }

notebook > header.bottom > tabs > tab:checked { box-shadow: inset 0 3px @theme_selected_bg_color; }

notebook > header.left { border-right-style: solid; }

notebook > header.left > tabs { margin-right: -2px; }

notebook > header.left > tabs > tab:hover { box-shadow: inset -3px 0 #cdc7c2; }

notebook > header.left > tabs > tab:backdrop { box-shadow: none; }

notebook > header.left > tabs > tab:checked { box-shadow: inset -3px 0 @theme_selected_bg_color; }

notebook > header.right { border-left-style: solid; }

notebook > header.right > tabs { margin-left: -2px; }

notebook > header.right > tabs > tab:hover { box-shadow: inset 3px 0 #cdc7c2; }

notebook > header.right > tabs > tab:backdrop { box-shadow: none; }

notebook > header.right > tabs > tab:checked { box-shadow: inset 3px 0 @theme_selected_bg_color; }

notebook > header.top > tabs > arrow { border-top-style: none; }

notebook > header.bottom > tabs > arrow { border-bottom-style: none; }

notebook > header.top > tabs > arrow, notebook > header.bottom > tabs > arrow { margin-left: -5px; margin-right: -5px; padding-left: 4px; padding-right: 4px; }

notebook > header.top > tabs > arrow.down, notebook > header.bottom > tabs > arrow.down { -gtk-icon-source: -gtk-icontheme("pan-start-symbolic"); }

notebook > header.top > tabs > arrow.up, notebook > header.bottom > tabs > arrow.up { -gtk-icon-source: -gtk-icontheme("pan-end-symbolic"); }

notebook > header.left > tabs > arrow { border-left-style: none; }

notebook > header.right > tabs > arrow { border-right-style: none; }

notebook > header.left > tabs > arrow, notebook > header.right > tabs > arrow { margin-top: -5px; margin-bottom: -5px; padding-top: 4px; padding-bottom: 4px; }

notebook > header.left > tabs > arrow.down, notebook > header.right > tabs > arrow.down { -gtk-icon-source: -gtk-icontheme("pan-up-symbolic"); }

notebook > header.left > tabs > arrow.up, notebook > header.right > tabs > arrow.up { -gtk-icon-source: -gtk-icontheme("pan-down-symbolic"); }

notebook > header > tabs > arrow { min-height: 16px; min-width: 16px; border-radius: 0; }

notebook > header > tabs > arrow:hover:not(:active):not(:backdrop) { background-clip: padding-box; background-image: none; background-color: rgba(255, 255, 255, 0.3); border-color: transparent; box-shadow: none; }

notebook > header > tabs > arrow:disabled { border-color: transparent; background-color: transparent; background-image: none; box-shadow: inset 0 1px rgba(255, 255, 255, 0); text-shadow: none; -gtk-icon-shadow: none; }

notebook > header tab { min-height: 30px; min-width: 30px; padding: 3px 12px; outline-offset: -5px; color: #929595; font-weight: bold; border-width: 1px; border-color: transparent; }

notebook > header tab:hover { color: #606566; }

notebook > header tab:hover.reorderable-page { border-color: rgba(205, 199, 194, 0.3); background-color: rgba(246, 245, 244, 0.2); }

notebook > header tab:backdrop { color: #babbbb; }

notebook > header tab:backdrop.reorderable-page { border-color: transparent; background-color: transparent; }

notebook > header tab:checked { color: #2e3436; }

notebook > header tab:checked.reorderable-page { border-color: rgba(205, 199, 194, 0.5); background-color: rgba(246, 245, 244, 0.5); }

notebook > header tab:checked.reorderable-page:hover { background-color: rgba(246, 245, 244, 0.7); }

notebook > header tab:backdrop:checked { color: #929595; }

notebook > header tab:backdrop:checked.reorderable-page { border-color: #d5d0cc; background-color: #f6f5f4; }

notebook > header tab button.flat { padding: 0; margin-top: 4px; margin-bottom: 4px; min-width: 20px; min-height: 20px; }

notebook > header tab button.flat:hover { color: currentColor; }

notebook > header tab button.flat, notebook > header tab button.flat:backdrop { color: alpha(currentColor,0.3); }

notebook > header tab button.flat:last-child { margin-left: 4px; margin-right: -4px; }

notebook > header tab button.flat:first-child { margin-left: -4px; margin-right: 4px; }

notebook > header.top tabs, notebook > header.bottom tabs { padding-left: 4px; padding-right: 4px; }

notebook > header.top tabs:not(:only-child), notebook > header.bottom tabs:not(:only-child) { margin-left: 3px; margin-right: 3px; }

notebook > header.top tabs:not(:only-child):first-child, notebook > header.bottom tabs:not(:only-child):first-child { margin-left: -1px; }

notebook > header.top tabs:not(:only-child):last-child, notebook > header.bottom tabs:not(:only-child):last-child { margin-right: -1px; }

notebook > header.top tabs tab, notebook > header.bottom tabs tab { margin-left: 4px; margin-right: 4px; }

notebook > header.top tabs tab.reorderable-page, notebook > header.bottom tabs tab.reorderable-page { border-style: none solid; }

notebook > header.left tabs, notebook > header.right tabs { padding-top: 4px; padding-bottom: 4px; }

notebook > header.left tabs:not(:only-child), notebook > header.right tabs:not(:only-child) { margin-top: 3px; margin-bottom: 3px; }

notebook > header.left tabs:not(:only-child):first-child, notebook > header.right tabs:not(:only-child):first-child { margin-top: -1px; }

notebook > header.left tabs:not(:only-child):last-child, notebook > header.right tabs:not(:only-child):last-child { margin-bottom: -1px; }

notebook > header.left tabs tab, notebook > header.right tabs tab { margin-top: 4px; margin-bottom: 4px; }

notebook > header.left tabs tab.reorderable-page, notebook > header.right tabs tab.reorderable-page { border-style: solid none; }

notebook > header.top tab { padding-bottom: 4px; }

notebook > header.bottom tab { padding-top: 4px; }

notebook > stack:not(:only-child) { background-color: #bfbfbf; }

notebook > stack:not(:only-child):backdrop { background-color: #fcfcfc; }

/**************
 * Scrollbars *
 **************/
scrollbar {
  background-color: #e0e0e0;
  transition: 300ms cubic-bezier(0.25, 0.46, 0.45, 0.94); }
  * {
    -GtkScrollbar-has-backward-stepper: true;
    -GtkScrollbar-has-forward-stepper: true; }
  scrollbar.top {
    border-bottom: none; }
  scrollbar.bottom {
    border-top: none; }
  scrollbar.left {
    border-right: none; }
  scrollbar.right {
    border-left: none; }
  scrollbar:backdrop {
    background-color: transparent;
    border-color: transparent;}
  scrollbar slider {
    min-width: 7px;
    min-height: 7px;
    margin: -1px;
    border: 4px solid transparent;
    border-radius: 1px;
    background-clip: padding-box;
    background-color: #a0a0a0; }
    scrollbar slider:hover {
      background-color: #707070; }
    scrollbar slider:hover:active {
      background-color: @theme_selected_bg_color; }
    scrollbar slider:backdrop {
      background-color: #c3c4c4; }
    scrollbar slider:disabled {
      background-color: transparent; }
  scrollbar.fine-tune slider {
    min-width: 4px;
    min-height: 4px; }
  scrollbar.fine-tune.horizontal slider {
    border-width: 5px 4px; }
  scrollbar.fine-tune.vertical slider {
    border-width: 4px 5px; }
  scrollbar.horizontal slider {
    min-width: 40px; }
  scrollbar.vertical slider {
    min-height: 40px; }
  scrollbar button {
    min-width: 7px;
    min-height: 7px;
    border-style: none;
    border-radius: 2px;
    border-color: #B0B0B0;
    background-color: transparent;
    background-image: none;
    -gtk-icon-shadow: none;
    box-shadow: none; }
  scrollbar button:disabled {
    min-width: 7px;
    min-height: 7px;
    border-style: none;
    border-radius: 2px;
    border-color: #B0B0B0;
    background-color: transparent;
    background-image: none;
    -gtk-icon-shadow: none;
    box-shadow: none; }
  scrollbar button:hover {
    min-width: 7px;
    min-height: 7px;
    border-style: none;
    border-radius: 2px;
    border-color: #B0B0B0;
    background-color: white;
    background-image: none;
    -gtk-icon-shadow: none;
    box-shadow: none; }
  scrollbar.vertical button.down {
    padding-left: 0px;
    padding-right: 0px;
    padding-top: 2px;
    padding-bottom: 2px;
    -gtk-icon-source: -gtk-icontheme("scroll_d"); }
  scrollbar.vertical button:disabled.down {
    padding-left: 0px;
    padding-right: 0px;
    padding-top: 2px;
    padding-bottom: 2px;
    -gtk-icon-source: -gtk-icontheme("scroll_d_d"); }
  scrollbar.vertical button.up {
    padding-left: 0px;
    padding-right: 0px;
    padding-top: 2px;
    padding-bottom: 2px;
    -gtk-icon-source: -gtk-icontheme("scroll_u"); }
  scrollbar.vertical button:disabled.up {
    padding-left: 0px;
    padding-right: 0px;
    padding-top: 2px;
    padding-bottom: 2px;
    -gtk-icon-source: -gtk-icontheme("scroll_u_d"); }
  scrollbar.horizontal button.down {
    padding-left: 2px;
    padding-right: 2px;
    padding-top: 0px;
    padding-bottom: 0px;
    -gtk-icon-source: -gtk-icontheme("scroll_r"); }
  scrollbar.horizontal button:disabled.down {
    padding-left: 2px;
    padding-right: 2px;
    padding-top: 0px;
    padding-bottom: 0px;
    -gtk-icon-source: -gtk-icontheme("scroll_r_d"); }
  scrollbar.horizontal button.up {
    padding-left: 2px;
    padding-right: 2px;
    padding-top: 0px;
    padding-bottom: 0px;
    -gtk-icon-source: -gtk-icontheme("scroll_l"); }
  scrollbar.horizontal button:disabled.up {
    padding-left: 2px;
    padding-right: 2px;
    padding-top: 0px;
    padding-bottom: 0px;
    -gtk-icon-source: -gtk-icontheme("scroll_l_d"); }

treeview ~ scrollbar.vertical {
  border-top: 1px solid #313131;
  margin-top: -1px; }

/**********
 * Switch *
 **********/
switch {
  margin: 4px;
  font-weight: bold;
  font-size: smaller;
  outline-offset: -4px;
  border: 1px solid ;
  border-radius: 15px;
  color: #f4f4f4;
  background-color: #f4f4f4;
  border-color: #a0a0a0; }
  switch:checked {
    /*color: #30a030;*/
    color: @theme_selected_bg_color;
    background-color: @theme_selected_bg_color;
    border-color: #707070; }
  switch:disabled {
    color: #f4f4f4;
    background-color: #f4f4f4;
    border-color: #d0d0d0; }
    switch:disabled:checked {
      /*color: #a0d0a0;*/
      color: shade(@theme_selected_bg_color, 1.4);
      background-color: shade(@theme_selected_bg_color, 1.4);
      border-color: #b0b0b0; }
  switch:backdrop {
    color: #f4f4f4;
    background-color: #f4f4f4;
    border-color: #c8c8c8;
    transition: 200ms ease-out; }
    switch:backdrop:checked {
      color: shade(@theme_selected_bg_color, 1.4);
      background-color: shade(@theme_selected_bg_color, 1.4);
      border-color: #b0b0b0; }
    switch:backdrop:disabled {
      color: #333333;
      background-color: #333333;
      border-color: #e0e0e0; }
      switch:backdrop:disabled:checked {
        color: shade(@theme_selected_bg_color, 1.6);
        background-color: shade(@theme_selected_bg_color, 1.6);
        border-color: #d0d0d0; }
  switch slider {
    margin: 1px;
    min-width: 18px;
    min-height: 18px;
    border: 1px solid;
    border-radius: 15px;
    transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
    border-color: #a0a0a0;
    background-image: image(#dedede); }
  switch:checked slider {
    border-color: #707070;
    background-image: image(#dedede); }
  switch:hover slider {
    border-color: #a0a0a0;
    background-image: image(#cfcfcf); }
  switch:hover:checked slider {
    border-color: #707070;
    background-image: image(#cfcfcf); }
  switch:disabled slider {
    border-color: #d0d0d0;
    background-image: image(#333333);
    text-shadow: none;
    -gtk-icon-shadow: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
  switch:disabled:checked slider {
    border-color: #b0b0b0;
    background-image: image(#333333); }
    switch:disabled slider label, switch:disabled slider {
      color: #666666; }
  switch:backdrop slider {
    transition: 200ms ease-out;
    border-color: #c8c8c8;
    background-image: image(#333333); }
    switch:backdrop slider label {
      color: #666666; }
  switch:backdrop:checked slider {
    border-color: #b0b0b0;
    background-image: image(#333333); }
  switch:backdrop:disabled slider {
    border-color: #e0e0e0;
    background-image: image(#333333); }
  switch:backdrop:disabled:checked slider {
    border-color: #d0d0d0;
    background-image: image(#333333); }
    switch:backdrop:disabled slider label {
      color: #c3c3c0; }
  row:selected switch {
    box-shadow: none;
    border-color: @theme_sel_bg_shaded; }
    row:selected switch:backdrop {
      border-color: @theme_sel_bg_shaded; }
    row:selected switch.slider:dir(rtl) {
      border-left-color: #313131; }
    row:selected switch.slider:dir(ltr) {
      border-right-color: #313131; }
    row:selected switch.slider:checked, row:selected switch.slider {
      border-color: @theme_sel_bg_shaded; }

/*************************
 * Check and Radio items *
 *************************/
.view.content-view.check:not(list), iconview.content-view.check:not(list) {
  -gtk-icon-shadow: none;
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-selectionmode.png"), url("assets/checkbox-selectionmode@2.png"));
  background-color: transparent; }

.view.content-view.check:hover:not(list), iconview.content-view.check:hover:not(list) {
  -gtk-icon-shadow: none;
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-hover-selectionmode.png"), url("assets/checkbox-hover-selectionmode@2.png"));
  background-color: transparent; }

.view.content-view.check:active:not(list), iconview.content-view.check:active:not(list) {
  -gtk-icon-shadow: none;
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-active-selectionmode.png"), url("assets/checkbox-active-selectionmode@2.png"));
  background-color: transparent; }

.view.content-view.check:backdrop:not(list), iconview.content-view.check:backdrop:not(list) {
  -gtk-icon-shadow: none;
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-backdrop-selectionmode.png"), url("assets/checkbox-backdrop-selectionmode@2.png"));
  background-color: transparent; }

.view.content-view.check:checked:not(list), iconview.content-view.check:checked:not(list) {
  -gtk-icon-shadow: none;
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-checked-selectionmode.png"), url("assets/checkbox-checked-selectionmode@2.png"));
  background-color: transparent; }

.view.content-view.check:checked:hover:not(list), iconview.content-view.check:checked:hover:not(list) {
  -gtk-icon-shadow: none;
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-checked-hover-selectionmode.png"), url("assets/checkbox-checked-hover-selectionmode@2.png"));
  background-color: transparent; }

.view.content-view.check:checked:active:not(list), iconview.content-view.check:checked:active:not(list) {
  -gtk-icon-shadow: none;
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-checked-active-selectionmode.png"), url("assets/checkbox-checked-active-selectionmode@2.png"));
  background-color: transparent; }

.view.content-view.check:backdrop:checked:not(list), iconview.content-view.check:backdrop:checked:not(list) {
  -gtk-icon-shadow: none;
  -gtk-icon-source: -gtk-scaled(url("assets/checkbox-checked-backdrop-selectionmode.png"), url("assets/checkbox-checked-backdrop-selectionmode@2.png"));
  background-color: transparent; }

checkbutton.text-button, radiobutton.text-button {
  padding: 2px 0;
  outline-offset: 0; }
  checkbutton.text-button label:not(:only-child):first-child, radiobutton.text-button label:not(:only-child):first-child {
    margin-left: 4px; }
  checkbutton.text-button label:not(:only-child):last-child, radiobutton.text-button label:not(:only-child):last-child {
    margin-right: 4px; }

check,
radio {
  margin: 0 4px;
  min-height: 13px;
  min-width: 13px;
  border: 1px solid;
  -gtk-icon-source: none;
  color: #2e3436;
  border-color: #bfbfbf;
  background-color: #bfbfbf;
  text-shadow: 0 1px rgba(255, 255, 255, 0.76923);
  -gtk-icon-shadow: 0 1px rgba(255, 255, 255, 0.76923); }
  check:only-child,
  radio:only-child {
    margin: 0; }
  check:disabled,
  radio:disabled {
    border-color: #313131;
    background-color: #333333;
    text-shadow: none;
    -gtk-icon-shadow: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
    check:disabled label, check:disabled,
    radio:disabled label,
    radio:disabled {
      color: #666666; }
  check:backdrop,
  radio:backdrop {
    border-color: #c0c0bd;
    background-color: #323232;
    text-shadow: none;
    -gtk-icon-shadow: none;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0);
    transition: 200ms ease-out; }
    check:backdrop label, check:backdrop,
    radio:backdrop label,
    radio:backdrop {
      color: #666666; }
    check:backdrop:disabled,
    radio:backdrop:disabled {
      border-color: #c0c0bd;
      background-image: image(#333333);
      text-shadow: none;
      -gtk-icon-shadow: none;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      check:backdrop:disabled label, check:backdrop:disabled,
      radio:backdrop:disabled label,
      radio:backdrop:disabled {
        color: #c3c3c0; }
  row:selected check, row:selected
  radio {
    border-color: @theme_sel_bg_shaded; }
  .osd check, .osd
  radio {
    color: #808080;
    border-color: rgba(0, 0, 0, 0.7);
    background-color: transparent;
    background-image: image(rgba(28, 31, 32, 0.7));
    background-clip: padding-box;
    box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
    text-shadow: 0 1px black;
    -gtk-icon-shadow: 0 1px black;
    outline-color: rgba(238, 238, 236, 0.3); }
    .osd check:hover, .osd
    radio:hover {
      color: #808080;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(28, 31, 32, 0.7));
      background-clip: padding-box;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
      text-shadow: 0 1px black;
      -gtk-icon-shadow: 0 1px black;
      outline-color: rgba(238, 238, 236, 0.3); }
    .osd check:active, .osd
    radio:active {
      color: white;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(0, 0, 0, 0.7));
      background-clip: padding-box;
      box-shadow: none;
      text-shadow: none;
      -gtk-icon-shadow: none;
      outline-color: rgba(238, 238, 236, 0.3); }
    .osd check:backdrop, .osd
    radio:backdrop {
      color: #808080;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(28, 31, 32, 0.7));
      background-clip: padding-box;
      box-shadow: none;
      text-shadow: none;
      -gtk-icon-shadow: none; }
    .osd check:disabled, .osd
    radio:disabled {
      color: #858786;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(49, 52, 52, 0.5));
      background-clip: padding-box;
      box-shadow: none;
      text-shadow: none;
      -gtk-icon-shadow: none; }
  menu menuitem check, menu menuitem
  radio {
    margin: 0; }
    menu menuitem check, menu menuitem check:hover, menu menuitem check:disabled, menu menuitem
    radio, menu menuitem
    radio:hover, menu menuitem
    radio:disabled {
      min-height: 14px;
      min-width: 14px;
      background-image: none;
      background-color: transparent;
      box-shadow: none;
      -gtk-icon-shadow: none;
      color: inherit;
      border-color: currentColor; }

check {
  border-radius: 1px; }
  check:checked {
    -gtk-icon-source: image(-gtk-recolor(url("assets/check-symbolic.svg")), -gtk-recolor(url("assets/check-symbolic.symbolic.png"))); }
  check:indeterminate {
    -gtk-icon-source: image(-gtk-recolor(url("assets/dash-symbolic.svg")), -gtk-recolor(url("assets/dash-symbolic.symbolic.png"))); }

treeview.view radio:selected:focus, treeview.view radio:selected,
radio {
  border-radius: 100%; }
  treeview.view radio:checked:selected,
  radio:checked {
    -gtk-icon-source: image(-gtk-recolor(url("assets/bullet-symbolic.svg")), -gtk-recolor(url("assets/bullet-symbolic.symbolic.png"))); }
  treeview.view radio:indeterminate:selected,
  radio:indeterminate {
    -gtk-icon-source: image(-gtk-recolor(url("assets/dash-symbolic.svg")), -gtk-recolor(url("assets/dash-symbolic.symbolic.png"))); }

radio:not(:indeterminate):not(:checked):active:not(:backdrop) {
  -gtk-icon-transform: scale(0); }

check:not(:indeterminate):not(:checked):active:not(:backdrop) {
  -gtk-icon-transform: translate(6px, -3px) rotate(-45deg) scaleY(0.2) rotate(45deg) scaleX(0); }

radio:active,
check:active {
  -gtk-icon-transform: scale(0, 1); }
radio:checked:not(:backdrop), radio:indeterminate:not(:backdrop),
check:checked:not(:backdrop),
check:indeterminate:not(:backdrop) {
  -gtk-icon-transform: unset;
  transition: none; }

menu menuitem radio:checked:not(:backdrop), menu menuitem radio:indeterminate:not(:backdrop),
menu menuitem check:checked:not(:backdrop),
menu menuitem check:indeterminate:not(:backdrop) {
  transition: none; }

menu menuitem radio {
  border: none;
}

menu menuitem radio:checked {
  -gtk-icon-source: image(-gtk-recolor(url("assets/check-symbolic.svg")), -gtk-recolor(url("assets/check-symbolic.symbolic.png")));
}

treeview.view check:selected:focus, treeview.view check:selected,
treeview.view radio:selected:focus,
treeview.view radio:selected {
  color: #2e3436;
  border-color: @theme_sel_bg_shaded; }
treeview.view check:selected:disabled,
treeview.view radio:selected:disabled {
  color: #666666; }
  treeview.view check:selected:disabled:backdrop,
  treeview.view radio:selected:disabled:backdrop {
    color: #c3c3c0; }
treeview.view check:backdrop:selected, treeview.view check:backdrop,
treeview.view radio:backdrop:selected,
treeview.view radio:backdrop {
  color: #666666; }

/************
 * GtkScale *
 ************/
scale trough, scale fill, progressbar trough {
  border: 1px solid #313131;
  border-radius: 1px;
  background-color: #8b8e8f; }
  scale trough:disabled, scale fill:disabled, progressbar trough:disabled {
    background-color: #333333; }
  scale trough:backdrop, scale fill:backdrop, progressbar trough:backdrop, progressbar:backdrop trough {
    background-color: #dadad8;
    border-color: #c0c0bd;
    transition: 200ms ease-out; }
    scale trough:backdrop:disabled, scale fill:backdrop:disabled, progressbar trough:backdrop:disabled, progressbar:backdrop trough:disabled {
      background-color: #333333; }
  row:selected scale trough:disabled, scale row:selected trough:disabled, row:selected scale fill:disabled, scale row:selected fill:disabled, row:selected progressbar trough:disabled, progressbar row:selected trough:disabled, row:selected scale trough, scale row:selected trough, row:selected scale fill, scale row:selected fill, row:selected progressbar trough, progressbar row:selected trough {
    border-color: @theme_sel_bg_shaded; }
  .osd scale trough, scale .osd trough, .osd scale fill, scale .osd fill, .osd progressbar trough, progressbar .osd trough {
    border-color: rgba(0, 0, 0, 0.7);
    background-color: rgba(0, 0, 0, 0.5); }
    .osd scale trough:disabled, scale .osd trough:disabled, .osd scale fill:disabled, scale .osd fill:disabled, .osd progressbar trough:disabled, progressbar .osd trough:disabled {
      background-color: rgba(49, 52, 52, 0.5); }

scale highlight, progressbar progress {
  border: 1px solid @theme_sel_bg_shaded;
  border-radius: 1px;
  background-color: @theme_selected_bg_color; }
  scale highlight:disabled, progressbar progress:disabled {
    background-color: transparent;
    border-color: transparent; }
  scale highlight:backdrop, progressbar progress:backdrop, progressbar:backdrop progress {
    border-color: @theme_selected_bg_color; }
    scale highlight:backdrop:disabled, progressbar progress:backdrop:disabled, progressbar:backdrop progress:disabled {
      background-color: transparent;
      border-color: transparent; }
  row:selected scale highlight:disabled, scale row:selected highlight:disabled, row:selected progressbar progress:disabled, progressbar row:selected progress:disabled, row:selected scale highlight, scale row:selected highlight, row:selected progressbar progress, progressbar row:selected progress {
    border-color: @theme_sel_bg_shaded; }
  .osd scale highlight, scale .osd highlight, .osd progressbar progress, progressbar .osd progress {
    border-color: rgba(0, 0, 0, 0.7); }
    .osd scale highlight:disabled, scale .osd highlight:disabled, .osd progressbar progress:disabled, progressbar .osd progress:disabled {
      border-color: transparent; }

scale {
  min-height: 10px;
  min-width: 10px;
  padding: 12px; }
  scale fill,
  scale highlight {
    margin: -1px; }
  scale.vertical slider {
    min-height: 8px;
    min-width: 20px;
    margin-left: -9px;
    margin-right: -9px;
    border-radius: 2px; }
  scale.horizontal slider {
    min-height: 20px;
    min-width: 8px;
    margin-bottom: -9px;
    margin-top: -9px;
    border-radius: 2px; }
  scale.fine-tune.horizontal {
    padding-top: 9px;
    padding-bottom: 9px;
    min-height: 16px; }
  scale.fine-tune.vertical {
    padding-left: 9px;
    padding-right: 9px;
    min-width: 16px; }
  scale.fine-tune slider {
    margin: -6px; }
  scale.fine-tune fill,
  scale.fine-tune highlight,
  scale.fine-tune trough {
    border-radius: 5px;
    -gtk-outline-radius: 7px; }
  scale trough {
    outline-offset: 2px;
    -gtk-outline-radius: 5px; }
  scale fill:backdrop, scale fill {
    background-color: #313131; }
  scale fill:disabled:backdrop, scale fill:disabled {
    border-color: transparent;
    background-color: transparent; }
  .osd scale fill {
    background-color: rgba(91, 91, 90, 0.775); }
    .osd scale fill:disabled:backdrop, .osd scale fill:disabled {
      border-color: transparent;
      background-color: transparent; }
  scale slider {
    color: #2e3436;
    border-color: #c7c7c7;
    background-color: #dedede;
    text-shadow: 0 1px rgba(255, 255, 255, 0.76923);
    -gtk-icon-shadow: 0 1px rgba(255, 255, 255, 0.76923);
    border: 1px solid #c7c7c7;
    transition: all 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
    transition-property: background, border, box-shadow; }
    scale slider:hover, scale slider:active {
      color: #2e3436;
      border-color: #bfbfbf;
      background-color: #cfcfcf; }
    scale slider:disabled {
      border-color: #313131;
      background-color: #333333;
      text-shadow: none;
      -gtk-icon-shadow: none;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      scale slider:disabled label, scale slider:disabled {
        color: #666666; }
    scale slider:backdrop {
      transition: 200ms ease-out;
      border-color: #c0c0bd;
      background-color: #323232;
      text-shadow: none;
      -gtk-icon-shadow: none;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      scale slider:backdrop label, scale slider:backdrop {
        color: #666666; }
      scale slider:backdrop:disabled {
        border-color: #c0c0bd;
        background-color: #333333;
        text-shadow: none;
        -gtk-icon-shadow: none;
        box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
        scale slider:backdrop:disabled label, scale slider:backdrop:disabled {
          color: #c3c3c0; }
    row:selected scale slider:disabled, row:selected scale slider {
      border-color: @theme_sel_bg_shaded; }
    .osd scale slider {
      color: #808080;
      border-color: rgba(0, 0, 0, 0.7);
      background-color: transparent;
      background-image: image(rgba(28, 31, 32, 0.7));
      background-clip: padding-box;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
      text-shadow: 0 1px black;
      -gtk-icon-shadow: 0 1px black;
      outline-color: rgba(238, 238, 236, 0.3);
      border-color: rgba(0, 0, 0, 0.7);
      background-color: #1c1f20; }
      .osd scale slider:hover {
        color: white;
        border-color: rgba(0, 0, 0, 0.7);
        background-color: transparent;
        background-image: image(rgba(57, 63, 65, 0.7));
        background-clip: padding-box;
        box-shadow: inset 0 1px rgba(255, 255, 255, 0.1);
        text-shadow: 0 1px black;
        -gtk-icon-shadow: 0 1px black;
        outline-color: rgba(238, 238, 236, 0.3);
        background-color: #1c1f20; }
      .osd scale slider:active {
        color: white;
        border-color: rgba(0, 0, 0, 0.7);
        background-color: transparent;
        background-image: image(rgba(0, 0, 0, 0.7));
        background-clip: padding-box;
        box-shadow: none;
        text-shadow: none;
        -gtk-icon-shadow: none;
        outline-color: rgba(238, 238, 236, 0.3);
        background-color: #1c1f20; }
      .osd scale slider:disabled {
        color: #858786;
        border-color: rgba(0, 0, 0, 0.7);
        background-color: transparent;
        background-image: image(rgba(49, 52, 52, 0.5));
        background-clip: padding-box;
        box-shadow: none;
        text-shadow: none;
        -gtk-icon-shadow: none;
        background-color: #1c1f20; }
      .osd scale slider:backdrop {
        color: #808080;
        border-color: rgba(0, 0, 0, 0.7);
        background-color: transparent;
        background-image: image(rgba(28, 31, 32, 0.7));
        background-clip: padding-box;
        box-shadow: none;
        text-shadow: none;
        -gtk-icon-shadow: none;
        background-color: #1c1f20; }
        .osd scale slider:backdrop:disabled {
          background-color: #1c1f20; }
  scale value {
    color: alpha(currentColor,0.55); }
  scale marks {
    color: alpha(currentColor,0.55); }
    scale marks.top {
      margin-bottom: 6px;
      margin-top: -12px; }
    scale marks.bottom {
      margin-top: 6px;
      margin-bottom: -12px; }
    scale marks.top {
      margin-right: 6px;
      margin-left: -12px; }
    scale marks.bottom {
      margin-left: 6px;
      margin-right: -12px; }
  scale.fine-tune marks.top {
    margin-bottom: 6px;
    margin-top: -9px; }
  scale.fine-tune marks.bottom {
    margin-top: 6px;
    margin-bottom: -9px; }
  scale.fine-tune marks.top {
    margin-right: 6px;
    margin-left: -9px; }
  scale.fine-tune marks.bottom {
    margin-left: 6px;
    margin-right: -9px; }
  scale.horizontal indicator {
    min-height: 6px;
    min-width: 1px; }
  scale.horizontal.fine-tune indicator {
    min-height: 3px; }
  scale.vertical indicator {
    min-height: 1px;
    min-width: 6px; }
  scale.vertical.fine-tune indicator {
    min-width: 3px; }
  scale.color {
    min-height: 0;
    min-width: 0; }
    scale.color trough {
      background-image: image(#313131);
      background-repeat: no-repeat; }
    scale.color.horizontal {
      padding: 0 0 15px 0; }
      scale.color.horizontal trough {
        padding-bottom: 4px;
        background-position: 0 -3px;
        border-top-left-radius: 0;
        border-top-right-radius: 0; }
      scale.color.horizontal slider:dir(ltr):hover, scale.color.horizontal slider:dir(ltr):backdrop, scale.color.horizontal slider:dir(ltr):disabled, scale.color.horizontal slider:dir(ltr):backdrop:disabled, scale.color.horizontal slider:dir(ltr), scale.color.horizontal slider:dir(rtl):hover, scale.color.horizontal slider:dir(rtl):backdrop, scale.color.horizontal slider:dir(rtl):disabled, scale.color.horizontal slider:dir(rtl):backdrop:disabled, scale.color.horizontal slider:dir(rtl) {
        margin-bottom: -15px;
        margin-top: 6px; }
    scale.color.vertical:dir(ltr) {
      padding: 0 0 0 15px; }
      scale.color.vertical:dir(ltr) trough {
        padding-left: 4px;
        background-position: 3px 0;
        border-bottom-right-radius: 0;
        border-top-right-radius: 0; }
      scale.color.vertical:dir(ltr) slider:hover, scale.color.vertical:dir(ltr) slider:backdrop, scale.color.vertical:dir(ltr) slider:disabled, scale.color.vertical:dir(ltr) slider:backdrop:disabled, scale.color.vertical:dir(ltr) slider {
        margin-left: -15px;
        margin-right: 6px; }
    scale.color.vertical:dir(rtl) {
      padding: 0 15px 0 0; }
      scale.color.vertical:dir(rtl) trough {
        padding-right: 4px;
        background-position: -3px 0;
        border-bottom-left-radius: 0;
        border-top-left-radius: 0; }
      scale.color.vertical:dir(rtl) slider:hover, scale.color.vertical:dir(rtl) slider:backdrop, scale.color.vertical:dir(rtl) slider:disabled, scale.color.vertical:dir(rtl) slider:backdrop:disabled, scale.color.vertical:dir(rtl) slider {
        margin-right: -15px;
        margin-left: 6px; }
    scale.color.fine-tune.horizontal:dir(ltr), scale.color.fine-tune.horizontal:dir(rtl) {
      padding: 0 0 12px 0; }
      scale.color.fine-tune.horizontal:dir(ltr) trough, scale.color.fine-tune.horizontal:dir(rtl) trough {
        padding-bottom: 7px;
        background-position: 0 -6px; }
      scale.color.fine-tune.horizontal:dir(ltr) slider, scale.color.fine-tune.horizontal:dir(rtl) slider {
        margin-bottom: -15px;
        margin-top: 6px; }
    scale.color.fine-tune.vertical:dir(ltr) {
      padding: 0 0 0 12px; }
      scale.color.fine-tune.vertical:dir(ltr) trough {
        padding-left: 7px;
        background-position: 6px 0; }
      scale.color.fine-tune.vertical:dir(ltr) slider {
        margin-left: -15px;
        margin-right: 6px; }
    scale.color.fine-tune.vertical:dir(rtl) {
      padding: 0 12px 0 0; }
      scale.color.fine-tune.vertical:dir(rtl) trough {
        padding-right: 7px;
        background-position: -6px 0; }
      scale.color.fine-tune.vertical:dir(rtl) slider {
        margin-right: -15px;
        margin-left: 6px; }

/*****************
 * Progress bars *
 *****************/
progressbar {
  font-size: smaller;
  color: rgba(46, 52, 54, 0.4); }
  progressbar.horizontal trough,
  progressbar.horizontal progress {
    min-height: 7px; }
  progressbar.vertical trough,
  progressbar.vertical progress {
    min-width: 7px; }
  progressbar.horizontal progress {
    margin: 0 -1px; }
  progressbar.vertical progress {
    margin: -1px 0; }
  progressbar:backdrop {
    box-shadow: none;
    transition: 200ms ease-out; }
  progressbar progress {
    border-radius: 0px; }
    progressbar progress.left {
      border-top-left-radius: 0px;
      border-bottom-left-radius: 0px; }
    progressbar progress.right {
      border-top-right-radius: 0px;
      border-bottom-right-radius: 0px; }
    progressbar progress.top {
      border-top-right-radius: 0px;
      border-top-left-radius: 0px; }
    progressbar progress.bottom {
      border-bottom-right-radius: 0px;
      border-bottom-left-radius: 0px; }
  progressbar.osd {
    min-width: 3px;
    min-height: 3px;
    background-color: transparent; }
    progressbar.osd trough {
      border-style: none;
      border-radius: 0;
      background-color: transparent;
      box-shadow: none; }
    progressbar.osd progress {
      border-style: none;
      border-radius: 0; }
  progressbar trough.empty progress {
    all: unset; }

/*************
 * Level Bar *
 *************/
levelbar block {
  min-width: 32px;
  min-height: 1px; }
levelbar.vertical block {
  min-width: 1px;
  min-height: 32px; }
levelbar:backdrop {
  transition: 200ms ease-out; }
levelbar trough {
  border: 1px solid;
  padding: 2px;
  border-radius: 3px;
  color: black;
  border-color: #313131;
  background-color: #bfbfbf;
  box-shadow: inset 0 0 0 1px rgba(74, 144, 217, 0); }
  levelbar trough:backdrop {
    color: #323232;
    border-color: #c0c0bd;
    background-color: #fcfcfc;
    box-shadow: none; }
levelbar.horizontal.discrete block {
  margin: 0 1px; }
levelbar.vertical.discrete block {
  margin: 1px 0; }
levelbar block {
  border: 1px solid;
  border-radius: 1px; }
  levelbar block.low {
    border-color: #8f4700;
    background-color: #f57900; }
    levelbar block.low:backdrop {
      border-color: #f57900; }
  levelbar block.high, levelbar block:not(.empty) {
    border-color: @theme_sel_bg_shaded;
    background-color: @theme_selected_bg_color; }
    levelbar block.high:backdrop, levelbar block:not(.empty):backdrop {
      border-color: @theme_selected_bg_color; }
  levelbar block.full {
    border-color: #40760c;
    background-color: #73d216; }
    levelbar block.full:backdrop {
      border-color: #73d216; }
  levelbar block.empty {
    background-color: transparent;
    border-color: rgba(46, 52, 54, 0.2); }
    levelbar block.empty:backdrop {
      border-color: rgba(139, 142, 143, 0.15); }

/****************
 * Print dialog *
*****************/
printdialog paper {
  color: #2e3436;
  border: 1px solid #313131;
  background: white;
  padding: 0; }
  printdialog paper:backdrop {
    color: #666666;
    border-color: #c0c0bd; }
printdialog .dialog-action-box {
  margin: 12px; }

/**********
 * Frames *
 **********/
frame > border,
.frame {
  box-shadow: none;
  margin: 0;
  padding: 0;
  border-radius: 0;
  border: 1px solid #313131; }
  frame > border.flat,
  .frame.flat {
    border-style: none; }
  frame > border:backdrop,
  .frame:backdrop {
    border-color: #c0c0bd; }

actionbar > revealer > box {
  padding: 6px;
  border-top: 1px solid #313131; }
  actionbar > revealer > box:backdrop {
    border-color: #c0c0bd; }

scrolledwindow viewport.frame {
  border-style: none; }
scrolledwindow overshoot.top {
  background-image: -gtk-gradient(radial, center top, 0, center top, 0.5, to(#9d9d99), to(rgba(157, 157, 153, 0))), -gtk-gradient(radial, center top, 0, center top, 0.6, from(rgba(46, 52, 54, 0.07)), to(rgba(46, 52, 54, 0)));
  background-size: 100% 5%, 100% 100%;
  background-repeat: no-repeat;
  background-position: center top;
  background-color: transparent;
  border: none;
  box-shadow: none; }
  scrolledwindow overshoot.top:backdrop {
    background-image: -gtk-gradient(radial, center top, 0, center top, 0.5, to(#c0c0bd), to(rgba(192, 192, 189, 0)));
    background-size: 100% 5%;
    background-repeat: no-repeat;
    background-position: center top;
    background-color: transparent;
    border: none;
    box-shadow: none; }
scrolledwindow overshoot.bottom {
  background-image: -gtk-gradient(radial, center bottom, 0, center bottom, 0.5, to(#9d9d99), to(rgba(157, 157, 153, 0))), -gtk-gradient(radial, center bottom, 0, center bottom, 0.6, from(rgba(46, 52, 54, 0.07)), to(rgba(46, 52, 54, 0)));
  background-size: 100% 5%, 100% 100%;
  background-repeat: no-repeat;
  background-position: center bottom;
  background-color: transparent;
  border: none;
  box-shadow: none; }
  scrolledwindow overshoot.bottom:backdrop {
    background-image: -gtk-gradient(radial, center bottom, 0, center bottom, 0.5, to(#c0c0bd), to(rgba(192, 192, 189, 0)));
    background-size: 100% 5%;
    background-repeat: no-repeat;
    background-position: center bottom;
    background-color: transparent;
    border: none;
    box-shadow: none; }
scrolledwindow overshoot.left {
  background-image: -gtk-gradient(radial, left center, 0, left center, 0.5, to(#9d9d99), to(rgba(157, 157, 153, 0))), -gtk-gradient(radial, left center, 0, left center, 0.6, from(rgba(46, 52, 54, 0.07)), to(rgba(46, 52, 54, 0)));
  background-size: 5% 100%, 100% 100%;
  background-repeat: no-repeat;
  background-position: left center;
  background-color: transparent;
  border: none;
  box-shadow: none; }
  scrolledwindow overshoot.left:backdrop {
    background-image: -gtk-gradient(radial, left center, 0, left center, 0.5, to(#c0c0bd), to(rgba(192, 192, 189, 0)));
    background-size: 5% 100%;
    background-repeat: no-repeat;
    background-position: left center;
    background-color: transparent;
    border: none;
    box-shadow: none; }
scrolledwindow overshoot.right {
  background-image: -gtk-gradient(radial, right center, 0, right center, 0.5, to(#9d9d99), to(rgba(157, 157, 153, 0))), -gtk-gradient(radial, right center, 0, right center, 0.6, from(rgba(46, 52, 54, 0.07)), to(rgba(46, 52, 54, 0)));
  background-size: 5% 100%, 100% 100%;
  background-repeat: no-repeat;
  background-position: right center;
  background-color: transparent;
  border: none;
  box-shadow: none; }
  scrolledwindow overshoot.right:backdrop {
    background-image: -gtk-gradient(radial, right center, 0, right center, 0.5, to(#c0c0bd), to(rgba(192, 192, 189, 0)));
    background-size: 5% 100%;
    background-repeat: no-repeat;
    background-position: right center;
    background-color: transparent;
    border: none;
    box-shadow: none; }
scrolledwindow undershoot.top {
/*  background-color: transparent;
  background-image: linear-gradient(to left, rgba(0, 0, 0, 0.2) 50%, rgba(0, 0, 0, 0.2) 50%);
  padding-top: 1px;
  background-size: 10px 1px;
  background-repeat: repeat-x;
  background-origin: content-box;
  background-position: center top;*/
  border: none;
  box-shadow: none; }
scrolledwindow undershoot.bottom {
/*  background-color: transparent;
  background-image: linear-gradient(to left, rgba(0, 0, 0, 0.2) 50%, rgba(0, 0, 0, 0.2) 50%);
  padding-bottom: 1px;
  background-size: 10px 1px;
  background-repeat: repeat-x;
  background-origin: content-box;
  background-position: center bottom;*/
  border: none;
  box-shadow: none; }
scrolledwindow undershoot.left {
/*  background-color: transparent;
  background-image: linear-gradient(to top, rgba(0, 0, 0, 0.2) 50%, rgba(0, 0, 0, 0.2) 50%);
  padding-left: 1px;
  background-size: 1px 10px;
  background-repeat: repeat-y;
  background-origin: content-box;
  background-position: left center;*/
  border: none;
  box-shadow: none; }
scrolledwindow undershoot.right {
/*  background-color: transparent;
  background-image: linear-gradient(to top, rgba(0, 0, 0, 0.2) 50%, rgba(0, 0, 0, 0.2) 50%);
  padding-right: 1px;
  background-size: 1px 10px;
  background-repeat: repeat-y;
  background-origin: content-box;
  background-position: right center;*/
  border: none;
  box-shadow: none; }
scrolledwindow junction {
  border-color: transparent;
  border-image: linear-gradient(to bottom, #313131 1px, transparent 1px) 0 0 0 1/0 1px stretch;
  background-color: #c3c4c4; }
  scrolledwindow junction:dir(rtl) {
    border-image-slice: 0 1 0 0; }
  scrolledwindow junction:backdrop {
    border-image-source: linear-gradient(to bottom, #c0c0bd 1px, transparent 1px);
    background-color: #e1e1df;
    transition: 200ms ease-out; }

separator {
  background: rgba(0, 0, 0, 0.1);
  min-width: 1px;
  min-height: 1px; }

/*********
 * Lists *
 *********/
list {
  color: black;
  background-color: #bfbfbf;
  border-color: #313131; }
  list:backdrop {
    background-color: #fcfcfc;
    border-color: #c0c0bd; }
  list row {
    padding: 2px; }

row {
  transition: all 150ms cubic-bezier(0.25, 0.46, 0.45, 0.94); }
  row:hover {
    transition: none; }
  row:backdrop {
    transition: 200ms ease-out; }
  row.activatable.has-open-popup, row.activatable:hover {
    background-color: rgba(46, 52, 54, 0.05); }
  row.activatable:active {
    box-shadow: inset 0 2px 2px -2px rgba(0, 0, 0, 0.2); }
  row.activatable:backdrop:hover {
    background-color: transparent; }
  row.activatable:selected:active {
    box-shadow: inset 0 2px 3px -1px rgba(0, 0, 0, 0.5); }
  row.activatable:selected.has-open-popup, row.activatable:selected:hover {
    background-color: @theme_selected_bg_color; }
  row.activatable:selected:backdrop {
    background-color: @theme_selected_bg_color; }

/*********************
 * App Notifications *
 *********************/
.app-notification,
.app-notification.frame {
  padding: 10px;
  border-radius: 0 0 5px 5px;
  background-color: rgba(28, 31, 32, 0.7);
  background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.2), transparent 2px);
  background-clip: padding-box; }
  .app-notification:backdrop,
  .app-notification.frame:backdrop {
    background-image: none;
    transition: 200ms ease-out; }
  .app-notification border,
  .app-notification.frame border {
    border: none; }

/*************
 * Expanders *
 *************/
expander arrow {
  min-width: 16px;
  min-height: 16px;
  -gtk-icon-source: -gtk-icontheme("pan-end-symbolic"); }
  expander arrow:dir(rtl) {
    -gtk-icon-source: -gtk-icontheme("pan-end-symbolic-rtl"); }
  expander arrow:hover {
    color: #748489; }
  expander arrow:checked {
    -gtk-icon-source: -gtk-icontheme("pan-down-symbolic"); }

/************
 * Calendar *
 ***********/
calendar {
  color: white;
  border: 1px solid #000000; }
  calendar:selected {
    border-radius: 3px; }
  calendar.header {
    border-bottom-color: rgba(0, 0, 0, 0.1); }
    calendar.header:backdrop {
      border-bottom-color: rgba(0, 0, 0, 0.1); }
  calendar.button {
    color: rgba(46, 52, 54, 0.45); }
    calendar.button:hover {
      color: #2e3436; }
    calendar.button:backdrop {
      color: rgba(139, 142, 143, 0.45); }
    calendar.button:disabled {
      color: rgba(139, 142, 143, 0.45); }
  calendar.highlight {
    color: #666666; }
    calendar.highlight:backdrop {
      color: #c3c3c0; }
  calendar:backdrop {
    color: #323232;
    border-color: #c0c0bd; }
  calendar:indeterminate {
    color: alpha(currentColor,0.1); }

/***********
 * Dialogs *
 ***********/
dialog buttonbox, messagedialog buttonbox {
  padding: 5px 5px;
}

filechooser .dialog-action-box {
  border-top: 1px solid #313131; }
  filechooser .dialog-action-box:backdrop {
    border-top-color: #c0c0bd; }
filechooser #pathbarbox {
  border-bottom: 1px solid #323232; }

filechooserbutton:drop(active) {
  box-shadow: none;
  border-color: transparent; }

/***********
 * Sidebar *
 ***********/
.sidebar {
  border-style: none;
  background-color: #f4f4f3; }
  stacksidebar.sidebar:dir(ltr) list, stacksidebar.sidebar.left list, stacksidebar.sidebar.left:dir(rtl) list, .sidebar:dir(ltr), .sidebar.left, .sidebar.left:dir(rtl) {
    border-right: 1px solid #313131;
    border-left-style: none; }
  stacksidebar.sidebar:dir(rtl) list
  .sidebar:dir(rtl), stacksidebar.sidebar.right list
  .sidebar:dir(rtl), .sidebar.right {
    border-left: 1px solid #313131;
    border-right-style: none; }
  .sidebar:backdrop {
    background-color: #f2f2f2;
    border-color: #c0c0bd;
    transition: 200ms ease-out; }
  .sidebar list {
    background-color: transparent; }
  paned .sidebar.left, paned .sidebar.right, paned .sidebar.left:dir(rtl), paned .sidebar:dir(rtl), paned .sidebar:dir(ltr), paned .sidebar {
    border-style: none; }

stacksidebar row {
  padding: 10px 4px; }
  stacksidebar row > label {
    padding-left: 6px;
    padding-right: 6px; }
  stacksidebar row.needs-attention > label {
    background-size: 6px 6px, 0 0; }

/****************
 * File chooser *
 ****************/
placessidebar > viewport.frame {
  border-style: none; }
placessidebar row {
  min-height: 36px;
  padding: 0px; }
  placessidebar row > revealer {
    padding: 0 14px; }
  placessidebar row:selected {
    color: #bfbfbf; }
  placessidebar row:disabled {
    color: #666666; }
  placessidebar row:backdrop {
    color: #666666; }
    placessidebar row:backdrop:selected {
      color: #fcfcfc; }
    placessidebar row:backdrop:disabled {
      color: #c3c3c0; }
  placessidebar row image.sidebar-icon {
    opacity: 0.7; }
    placessidebar row image.sidebar-icon:dir(ltr) {
      padding-right: 8px; }
    placessidebar row image.sidebar-icon:dir(rtl) {
      padding-left: 8px; }
  placessidebar row label.sidebar-label:dir(ltr) {
    padding-right: 2px; }
  placessidebar row label.sidebar-label:dir(rtl) {
    padding-left: 2px; }
  button.sidebar-button {
    min-height: 26px;
    min-width: 26px;
    margin-top: 3px;
    margin-bottom: 3px;
    padding: 0;
    border-radius: 100%;
    -gtk-outline-radius: 100%; }
    button.sidebar-button:not(:hover):not(:active) > image, button.sidebar-button:backdrop > image {
      opacity: 0.7; }
  placessidebar row:selected:active {
    box-shadow: none; }
  placessidebar row.sidebar-placeholder-row {
    padding: 0 8px;
    min-height: 2px;
    background-image: image(#4e9a06);
    background-clip: content-box; }
  placessidebar row.sidebar-new-bookmark-row {
    color: @theme_selected_bg_color; }
  placessidebar row:drop(active):not(:disabled) {
    color: #4e9a06;
    box-shadow: inset 0 1px #4e9a06, inset 0 -1px #4e9a06; }
    placessidebar row:drop(active):not(:disabled):selected {
      color: #bfbfbf;
      background-color: #4e9a06; }

placesview .server-list-button > image {
  transition: 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
  -gtk-icon-transform: rotate(0turn); }
placesview .server-list-button:checked > image {
  transition: 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
  -gtk-icon-transform: rotate(-0.5turn); }
placesview row.activatable:hover {
  background-color: transparent; }
placesview > actionbar > revealer > box > label {
  padding-left: 8px;
  padding-right: 8px; }

/*********
 * Paned *
 *********/
paned > separator {
  min-width: 1px;
  min-height: 1px;
  -gtk-icon-source: none;
  border-style: none;
  background-color: transparent; }
  paned > separator:selected {
    background-image: image(@theme_selected_bg_color); }
  paned > separator:backdrop {
    background-image: image(#c0c0bd); }
  paned > separator.wide {
    min-width: 5px;
    min-height: 5px;
    background-color: #323232;
    background-image: image(#313131), image(#313131);
    background-size: 1px 1px, 1px 1px; }
    paned > separator.wide:backdrop {
      background-color: #323232;
      background-image: image(#c0c0bd), image(#c0c0bd); }
paned.horizontal > separator {
  background-image: image(url("assets/handle-v.png"));
  background-repeat: no-repeat; }
  paned.horizontal > separator:dir(ltr) {
    margin: 0 -8px 0 0;
    padding: 0 8px 0 0;
    background-position: left; }
  paned.horizontal > separator:dir(rtl) {
    margin: 0 0 0 -8px;
    padding: 0 0 0 8px;
    background-position: right; }
  paned.horizontal > separator.wide {
    margin: 0;
    padding: 0;
    background-repeat: repeat-y, repeat-y;
    background-position: left, right; }
paned.vertical > separator {
  margin: 0 0 -8px 0;
  padding: 0 0 8px 0;
  background-image: image(url("assets/handle-h.png"));
  background-repeat: no-repeat;
  background-position: top; }
  paned.vertical > separator.wide {
    margin: 0;
    padding: 0;
    background-repeat: repeat-x, repeat-x;
    background-position: bottom, top; }

/**************
 * GtkInfoBar *
 **************/
infobar {
  border-style: none; }
  infobar.info, infobar.question, infobar.warning, infobar.error {
    text-shadow: 0 1px @theme_sel_bg_shaded; }
    infobar.info:backdrop, infobar.info, infobar.question:backdrop, infobar.question, infobar.warning:backdrop, infobar.warning {
      background-color: @theme_selected_bg_color;
      border-color: @theme_sel_bg_shaded; }
    infobar.error:backdrop, infobar.error {
      background-color: rgba(128,0,0,1);
      border-color: rgba(192,0,0,1); }
      infobar.info:backdrop label, infobar.info:backdrop, infobar.info label, infobar.info, infobar.question:backdrop label, infobar.question:backdrop, infobar.question label, infobar.question, infobar.warning:backdrop label, infobar.warning:backdrop, infobar.warning label, infobar.warning, infobar.error:backdrop label, infobar.error:backdrop, infobar.error label, infobar.error {
        color: #bfbfbf; }
    infobar.info:backdrop, infobar.question:backdrop, infobar.warning:backdrop, infobar.error:backdrop {
      text-shadow: none; }
    infobar.info button, infobar.question button, infobar.warning button, infobar.error button {
      color: #bfbfbf;
      outline-color: rgba(255, 255, 255, 0.3);
      border-color: @theme_sel_bg_shaded;
      background-image: image(@theme_selected_bg_color);
      text-shadow: 0 -1px rgba(0, 0, 0, 0.54353);
      -gtk-icon-shadow: 0 -1px rgba(0, 0, 0, 0.54353);
      box-shadow: inset 0 1px rgba(255, 255, 255, 0.4); }
      infobar.info button:hover, infobar.question button:hover, infobar.warning button:hover, infobar.error button:hover {
        color: #bfbfbf;
        outline-color: rgba(255, 255, 255, 0.3);
        border-color: @theme_sel_bg_shaded;
        text-shadow: 0 -1px rgba(0, 0, 0, 0.49553);
        -gtk-icon-shadow: 0 -1px rgba(0, 0, 0, 0.49553);
        box-shadow: inset 0 1px rgba(255, 255, 255, 0.4);
        background-image: image(lighter (@theme_selected_bg_color)); }
      infobar.info button:active, infobar.info button:checked, infobar.question button:active, infobar.question button:checked, infobar.warning button:active, infobar.warning button:checked, infobar.error button:active, infobar.error button:checked {
        color: #bfbfbf;
        outline-color: rgba(255, 255, 255, 0.3);
        border-color: @theme_sel_bg_shaded;
        background-image: image(@theme_selected_bg_color);
        box-shadow: inset 0 1px rgba(255, 255, 255, 0);
        text-shadow: none;
        -gtk-icon-shadow: none; }
      infobar.info button:disabled, infobar.question button:disabled, infobar.warning button:disabled, infobar.error button:disabled {
        border-color: @theme_sel_bg_shaded;
        background-image: image(lighter(@theme_selected_bg_color));
        text-shadow: none;
        -gtk-icon-shadow: none;
        box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
        infobar.info button:disabled label, infobar.info button:disabled, infobar.question button:disabled label, infobar.question button:disabled, infobar.warning button:disabled label, infobar.warning button:disabled, infobar.error button:disabled label, infobar.error button:disabled {
          color: #b2d0ef; }
      infobar.info button:backdrop, infobar.question button:backdrop, infobar.warning button:backdrop, infobar.error button:backdrop {
        border-color: @theme_selected_bg_color;
        background-image: image(@theme_selected_bg_color);
        text-shadow: none;
        -gtk-icon-shadow: none;
        box-shadow: inset 0 1px rgba(255, 255, 255, 0);
        border-color: @theme_sel_bg_shaded; }
        infobar.info button:backdrop label, infobar.info button:backdrop, infobar.question button:backdrop label, infobar.question button:backdrop, infobar.warning button:backdrop label, infobar.warning button:backdrop, infobar.error button:backdrop label, infobar.error button:backdrop {
          color: #dbe9f7; }
        infobar.info button:backdrop:disabled, infobar.question button:backdrop:disabled, infobar.warning button:backdrop:disabled, infobar.error button:backdrop:disabled {
          border-color: lighter(@theme_selected_bg_color);
          background-image: image(lighter(@theme_selected_bg_color));
          text-shadow: none;
          -gtk-icon-shadow: none;
          box-shadow: inset 0 1px rgba(255, 255, 255, 0);
          border-color: @theme_sel_bg_shaded; }
          infobar.info button:backdrop:disabled label, infobar.info button:backdrop:disabled, infobar.question button:backdrop:disabled label, infobar.question button:backdrop:disabled, infobar.warning button:backdrop:disabled label, infobar.warning button:backdrop:disabled, infobar.error button:backdrop:disabled label, infobar.error button:backdrop:disabled {
            color: #9bc2ea; }
    infobar.info selection, infobar.question selection, infobar.warning selection, infobar.error selection {
      background-color: @theme_sel_bg_shaded; }

/************
 * Tooltips *
 ************/
tooltip, .tooltip {
  padding: 4px;
  /* not working */
  border-radius: 5px;
  box-shadow: none; }
  tooltip.background, .tooltip.background {
    background-color: rgba(160, 160, 160, 0.8);
    background-clip: padding-box;
    border: none; }
  tooltip decoration, .tooltip decoration {
    background-color: transparent; }
  tooltip *, .tooltip * {
    padding: 4px;
    background-color: transparent;
    color: white; }
  tooltip.csd decoration, .tooltip.csd decoration {
    border-radius: 5px;
    box-shadow: none; }

/*****************
 * Color Chooser *
 *****************/
colorswatch:drop(active), colorswatch {
  border-style: none; }
colorswatch.top {
  border-top-left-radius: 5.5px;
  border-top-right-radius: 5.5px; }
  colorswatch.top overlay {
    border-top-left-radius: 5px;
    border-top-right-radius: 5px; }
colorswatch.bottom {
  border-bottom-left-radius: 5.5px;
  border-bottom-right-radius: 5.5px; }
  colorswatch.bottom overlay {
    border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px; }
colorswatch.left, colorswatch:first-child:not(.top) {
  border-top-left-radius: 5.5px;
  border-bottom-left-radius: 5.5px; }
  colorswatch.left overlay, colorswatch:first-child:not(.top) overlay {
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px; }
colorswatch.right, colorswatch:last-child:not(.bottom) {
  border-top-right-radius: 5.5px;
  border-bottom-right-radius: 5.5px; }
  colorswatch.right overlay, colorswatch:last-child:not(.bottom) overlay {
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px; }
colorswatch.dark overlay {
  color: #bfbfbf; }
  colorswatch.dark overlay:hover {
    border-color: rgba(0, 0, 0, 0.8); }
  colorswatch.dark overlay:backdrop {
    color: #fcfcfc; }
colorswatch.light overlay {
  color: black; }
  colorswatch.light overlay:hover {
    border-color: rgba(0, 0, 0, 0.5); }
  colorswatch.light overlay:backdrop {
    color: #323232; }
colorswatch:drop(active) {
  box-shadow: none; }
  colorswatch:drop(active).light overlay {
    border-color: #4e9a06;
    box-shadow: inset 0 0 0 2px #3d7805, inset 0 0 0 1px #4e9a06; }
  colorswatch:drop(active).dark overlay {
    border-color: #4e9a06;
    box-shadow: inset 0 0 0 2px rgba(0, 0, 0, 0.3), inset 0 0 0 1px #4e9a06; }
colorswatch overlay {
  border: 1px solid rgba(0, 0, 0, 0.3); }
  colorswatch overlay:hover {
    box-shadow: inset 0 1px rgba(255, 255, 255, 0.4), inset 0 -1px rgba(0, 0, 0, 0.2); }
  colorswatch overlay:backdrop, colorswatch overlay:backdrop:hover {
    border-color: rgba(0, 0, 0, 0.3);
    box-shadow: none; }
colorswatch#add-color-button {
  border-radius: 5px 5px 0 0; }
  colorswatch#add-color-button:only-child {
    border-radius: 5px; }
  colorswatch#add-color-button overlay {
    color: #2e3436;
    outline-color: rgba(46, 52, 54, 0.3);
    border-color: #313131;
    border-bottom-color: #91918c;
    background-image: linear-gradient(to bottom, #323232, #dededd 60%, #8b8e8f);
    text-shadow: 0 1px rgba(255, 255, 255, 0.76923);
    -gtk-icon-shadow: 0 1px rgba(255, 255, 255, 0.76923);
    box-shadow: inset 0 1px rgba(255, 255, 255, 0.8); }
    colorswatch#add-color-button overlay:hover {
      color: #2e3436;
      outline-color: rgba(46, 52, 54, 0.3);
      border-color: #313131;
      border-bottom-color: #91918c;
      text-shadow: 0 1px rgba(255, 255, 255, 0.76923);
      -gtk-icon-shadow: 0 1px rgba(255, 255, 255, 0.76923);
      box-shadow: inset 0 1px white;
      background-image: linear-gradient(to bottom, #f7f7f7, #323232 60%, #dededd); }
    colorswatch#add-color-button overlay:backdrop {
      border-color: #c0c0bd;
      background-image: image(#323232);
      text-shadow: none;
      -gtk-icon-shadow: none;
      box-shadow: inset 0 1px rgba(255, 255, 255, 0); }
      colorswatch#add-color-button overlay:backdrop label, colorswatch#add-color-button overlay:backdrop {
        color: #666666; }
colorswatch:disabled {
  opacity: 0.5; }
  colorswatch:disabled overlay {
    border-color: rgba(0, 0, 0, 0.6);
    box-shadow: none; }
row:selected colorswatch {
  box-shadow: 0 0 0 2px #bfbfbf; }
colorswatch#editor-color-sample {
  border-radius: 4px; }
  colorswatch#editor-color-sample overlay {
    border-radius: 4.5px; }

colorchooser .popover.osd {
  border-radius: 5px; }

/********
 * Misc *
 ********/
.content-view {
  background-color: #d7d7d5; }
  .content-view:hover {
    -gtk-icon-effect: highlight; }
  .content-view:backdrop {
    background-color: #d7d7d5; }

.osd .scale-popup button.flat {
  border-style: none;
  border-radius: 5px; }
.scale-popup button:hover {
  background-color: rgba(46, 52, 54, 0.1);
  border-radius: 5px; }

/**********************
 * Window Decorations *
 *********************/
decoration {
  border-radius: 3px;
  border-width: 0px;
  box-shadow: 0 3px 9px 1px rgba(0, 0, 0, 0.5), 0 0 0 1px rgba(0, 0, 0, 0.23);
  margin: 10px; }
  decoration:backdrop {
    box-shadow: 0 3px 9px 1px transparent, 0 2px 6px 2px rgba(0, 0, 0, 0.2), 0 0 0 1px rgba(0, 0, 0, 0.18);
    transition: 200ms ease-out; }
  .maximized decoration, .fullscreen decoration, .tiled decoration {
    border-radius: 0; }
  .popup decoration {
    box-shadow: none; }
  .ssd decoration {
    box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.23); }
  .csd.popup decoration {
    border-radius: 0;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2), 0 0 0 1px rgba(0, 0, 0, 0.13); }
  .solid-csd decoration {
    margin: 0;
    padding: 4px;
    background-color: #313131;
    border: solid 1px #313131;
    border-radius: 0;
    box-shadow: inset 0 0 0 3px #f4f4f4, inset 0 1px rgba(255, 255, 255, 0.8); }
    .solid-csd decoration:backdrop {
      box-shadow: inset 0 0 0 3px #323232, inset 0 1px rgba(255, 255, 255, 0.8); }

button.titlebutton {
  color: @theme_selected_fg_color;
  background-color: @theme_selected_bg_color;
  border: none;
  -gtk-icon-shadow: none;
  -gtk-icon-effect: none;}
button.titlebutton:hover, button.titlebutton:active {
  color: @theme_selected_fg_color;
  background-color: @theme_selected_bg_color;
  border: none;
  -gtk-icon-shadow: none;
  -gtk-icon-effect: none; }
button.titlebutton:backdrop, button.titlebutton:backdrop:hover {
  color: #666666;
  background-color: #323232;
  border: none;
  -gtk-icon-shadow: none;
  -gtk-icon-effect: none; }

headerbar.selection-mode button.titlebutton,
.titlebar.selection-mode button.titlebutton {
  text-shadow: 0 -1px rgba(0, 0, 0, 0.54353);
  -gtk-icon-shadow: 0 -1px rgba(0, 0, 0, 0.54353); }
  headerbar.selection-mode button.titlebutton:backdrop,
  .titlebar.selection-mode button.titlebutton:backdrop {
    -gtk-icon-shadow: none; }

.view:selected:focus, iconview:selected:focus, .view:selected, iconview:selected,
.view text:selected:focus,
iconview text:selected:focus,
textview text:selected:focus,
.view text:selected,
iconview text:selected,
textview text:selected, .view text selection:focus, iconview text selection:focus, .view text selection, iconview text selection,
textview text selection:focus,
textview text selection, flowbox flowboxchild:selected, spinbutton:not(.vertical) selection,
entry selection, modelbutton.flat:selected,
.menuitem.button.flat:selected, treeview.view:selected:focus, treeview.view:selected, row:selected, calendar:selected {
  background-color: @theme_selected_bg_color; }
  row:selected label, label:selected, .selection-mode button.titlebutton, .view:selected:focus, iconview:selected:focus, .view:selected, iconview:selected,
  .view text:selected:focus,
  iconview text:selected:focus,
  textview text:selected:focus,
  .view text:selected,
  iconview text:selected,
  textview text:selected, .view text selection:focus, iconview text selection:focus, .view text selection, iconview text selection,
  textview text selection:focus,
  textview text selection, flowbox flowboxchild:selected, spinbutton:not(.vertical) selection,
  entry selection, modelbutton.flat:selected,
  .menuitem.button.flat:selected, treeview.view:selected:focus, treeview.view:selected, row:selected, calendar:selected {
    color: @theme_selected_fg_color; }
    row:selected label:disabled, label:disabled:selected, .selection-mode button.titlebutton:disabled, iconview:disabled:selected:focus, .view:disabled:selected, iconview:disabled:selected,
    iconview text:disabled:selected:focus,
    textview text:disabled:selected:focus,
    .view text:disabled:selected,
    iconview text:disabled:selected,
    textview text:disabled:selected, iconview text selection:disabled:focus, .view text selection:disabled, iconview text selection:disabled,
    textview text selection:disabled, flowbox flowboxchild:disabled:selected, label:disabled selection, spinbutton:not(.vertical) selection:disabled,
    entry selection:disabled, modelbutton.flat:disabled:selected,
    .menuitem.button.flat:disabled:selected, row:disabled:selected, calendar:disabled:selected {
      color: @theme_selected_bg_color; }
    row:selected label:backdrop, label:backdrop:selected, .selection-mode button.titlebutton:backdrop, iconview:backdrop:selected:focus, .view:backdrop:selected, iconview:backdrop:selected,
    iconview text:backdrop:selected:focus,
    textview text:backdrop:selected:focus,
    .view text:backdrop:selected,
    iconview text:backdrop:selected,
    textview text:backdrop:selected, iconview text selection:backdrop:focus, .view text selection:backdrop, iconview text selection:backdrop,
    textview text selection:backdrop, flowbox flowboxchild:backdrop:selected, label:backdrop selection, spinbutton:not(.vertical) selection:backdrop,
    entry selection:backdrop, modelbutton.flat:backdrop:selected,
    .menuitem.button.flat:backdrop:selected, row:backdrop:selected, calendar:backdrop:selected {
      color: @theme_selected_fg_color; }
      row:selected label:backdrop:disabled, label:backdrop:disabled:selected, .selection-mode button.titlebutton:backdrop:disabled, .view:backdrop:disabled:selected, iconview:backdrop:disabled:selected,
      .view text:backdrop:disabled:selected,
      iconview text:backdrop:disabled:selected,
      textview text:backdrop:disabled:selected, .view text selection:backdrop:disabled, iconview text selection:backdrop:disabled,
      textview text selection:backdrop:disabled, flowbox flowboxchild:backdrop:disabled:selected, label:disabled selection:backdrop, label:backdrop selection:disabled, spinbutton:not(.vertical) selection:backdrop:disabled,
      entry selection:backdrop:disabled, modelbutton.flat:backdrop:disabled:selected,
      .menuitem.button.flat:backdrop:disabled:selected, row:backdrop:disabled:selected, calendar:backdrop:disabled:selected {
        color: @theme_selected_bg_color; }

.monospace {
  font-family: monospace; }

/**********************
 * Touch Copy & Paste *
 *********************/
cursor-handle {
  background-color: transparent;
  background-image: none;
  box-shadow: none;
  border-style: none; }
  cursor-handle.top:dir(ltr), cursor-handle.bottom:dir(rtl) {
    -gtk-icon-source: -gtk-scaled(url("assets/text-select-start.png"), url("assets/text-select-start@2.png"));
    padding-left: 10px; }
  cursor-handle.bottom:dir(ltr), cursor-handle.top:dir(rtl) {
    -gtk-icon-source: -gtk-scaled(url("assets/text-select-end.png"), url("assets/text-select-end@2.png"));
    padding-right: 10px; }
  cursor-handle.insertion-cursor:dir(ltr), cursor-handle.insertion-cursor:dir(rtl) {
    -gtk-icon-source: -gtk-scaled(url("assets/slider-horz-scale-has-marks-above.png"), url("assets/slider-horz-scale-has-marks-above@2.png")); }
  cursor-handle.top:hover:dir(ltr), cursor-handle.bottom:hover:dir(rtl) {
    -gtk-icon-source: -gtk-scaled(url("assets/text-select-start-hover.png"), url("assets/text-select-start-hover@2.png"));
    padding-left: 10px; }
  cursor-handle.bottom:hover:dir(ltr), cursor-handle.top:hover:dir(rtl) {
    -gtk-icon-source: -gtk-scaled(url("assets/text-select-end-hover.png"), url("assets/text-select-end-hover@2.png"));
    padding-right: 10px; }
  cursor-handle.insertion-cursor:hover:dir(ltr), cursor-handle.insertion-cursor:hover:dir(rtl) {
    -gtk-icon-source: -gtk-scaled(url("assets/slider-horz-scale-has-marks-above-hover.png"), url("assets/slider-horz-scale-has-marks-above-hover@2.png")); }
  cursor-handle.top:active:dir(ltr), cursor-handle.bottom:active:dir(rtl) {
    -gtk-icon-source: -gtk-scaled(url("assets/text-select-start-active.png"), url("assets/text-select-start-active@2.png"));
    padding-left: 10px; }
  cursor-handle.bottom:active:dir(ltr), cursor-handle.top:active:dir(rtl) {
    -gtk-icon-source: -gtk-scaled(url("assets/text-select-end-active.png"), url("assets/text-select-end-active@2.png"));
    padding-right: 10px; }
  cursor-handle.insertion-cursor:active:dir(ltr), cursor-handle.insertion-cursor:active:dir(rtl) {
    -gtk-icon-source: -gtk-scaled(url("assets/slider-horz-scale-has-marks-above-active.png"), url("assets/slider-horz-scale-has-marks-above-active@2.png")); }

.context-menu {
  font: initial; }

.keycap {
  min-width: 20px;
  min-height: 25px;
  margin-top: 2px;
  padding-bottom: 3px;
  padding-left: 6px;
  padding-right: 6px;
  color: #2e3436;
  background-color: #bfbfbf;
  border: 1px solid;
  border-color: #8b8e8f;
  border-radius: 5px;
  box-shadow: inset 0 -3px #ededec;
  font-size: smaller; }
  .keycap:backdrop {
    background-color: #fcfcfc;
    color: #666666;
    transition: 200ms ease-out; }

:not(decoration):not(window):drop(active):focus,
:not(decoration):not(window):drop(active) {
  border-color: #4e9a06;
  box-shadow: inset 0 0 0 1px #4e9a06;
  caret-color: #4e9a06; }

stackswitcher button.text-button {
  min-width: 100px; }

stackswitcher button.circular,
stackswitcher button.text-button.circular {
  min-width: 32px;
  min-height: 32px;
  padding: 0; }

headerbar button {
  color: @theme_selected_fg_color;
  background-color: @theme_selected_bg_color;
  border-color: shade(@theme_selected_bg_color, 1.5)
}

headerbar button:hover {
  color: @theme_selected_fg_color;
  background-color: shade(@theme_selected_bg_color, 1.1);
  border-color: shade(@theme_selected_bg_color, 1.5)
}

headerbar button:checked {
  color: @theme_selected_fg_color;
  background-color: shade(@theme_selected_bg_color, 0.9);
  border-color: shade(@theme_selected_bg_color, 1.5)
}

headerbar button:checked:hover {
  color: @theme_selected_fg_color;
  background-color: shade(@theme_selected_bg_color, 1.1);
  border-color: shade(@theme_selected_bg_color, 1.5)
}

headerbar button:disabled {
  color: shade(@theme_selected_fg_color, 0.9);
  background-color: shade(@theme_selected_bg_color, 1.1);
  border-color: shade(@theme_selected_bg_color, 1.2)
}

/* LXPanel themeing */

#PanelToplevel {
  color: @bar_fg_color;
  background-color: @bar_bg_color;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
}
#PanelToplevel button {
  padding: 2px 3px;
  background-image: none;
  border: 0px;
}
#PanelToplevel button,
#PanelToplevel:backdrop button > box > label {
  color: @bar_fg_color;
  background-color: @bar_bg_color;
  -gtk-icon-shadow: none;
  -gtk-icon-effect: none;
  transition: 200ms ease-out;
}
#PanelToplevel button:hover,
#PanelToplevel button:checked:hover,
#PanelToplevel:backdrop button:hover > box > label,
#PanelToplevel:backdrop button:checked:hover > box > label {
  color: @theme_selected_fg_color;
  background-color: shade(@bar_bg_color, 0.75);
  -gtk-icon-shadow: none;
  -gtk-icon-effect: none;
  transition: 200ms ease-out;
}
#PanelToplevel button:checked,
#PanelToplevel:backdrop button:checked > box > label {
  color: @bar_fg_color;
  background-color: shade (@bar_bg_color, 0.9);
  -gtk-icon-shadow: none;
  -gtk-icon-effect: none;
  transition: 200ms ease-out;
}
/* No, I have no idea why menus under a checked taskbar button display incorrectly...*/
#PanelToplevel menuitem label, #PanelToplevel menuitem:hover menuitem label {
  color: black;
}
#PanelToplevel menuitem:hover label, #PanelToplevel menuitem:hover menuitem:hover label {
  color: @theme_selected_fg_color;
}
#PanelToplevel menuitem:disabled label, #PanelToplevel menuitem:hover menuitem:disabled label {
  color: #666666;
}
#launchbar button {
  padding: 0px 0px;
}
#sysmenu label, #syssubmenu label {
  padding-right: 50px;
}
#syssubmenu arrow:dir(ltr) {
  min-width: 0px;
  padding: 0px;
  margin: 0px;
  -gtk-icon-source: none;
}
#panelpopup, #panelpopup scrolledwindow, #panelpopup label {
  color: black;
  background-color: @theme_base_color;
  border : 0px;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
}
#panelpopup check {
  border: 1px solid;
  color: #2e3436;
  border-color: #bfbfbf;
  background-color: #bfbfbf;
}
#panelpopup scale slider {
  border-color: #c7c7c7;
  background-color: #dedede;
  border: 1px solid #c7c7c7; }
#panelpopup scale slider:hover, #panelpopup scale slider:active {
  border-color: #bfbfbf;
  background-color: #cfcfcf; }
#panelpopup scale slider:disabled {
  border-color: #313131;
  background-color: #333333; }
#panelmenuitem label, #panelmenu menuitem label {
  padding-right: 20px;
}

/* LibFM / PCManFM themeing */

#exo-icon-view {
  color: black;
  background-color: #bfbfbf;
}
#exo-icon-view:selected {
  color: @theme_selected_fg_color;
  background-color: @theme_selected_bg_color;
}
#exo-icon-view.rubberband {
  border: 1px solid @theme_selected_bg_color;
  background-color: alpha (@theme_selected_bg_color, 0.2);
}

@define-color bar_bg_color #292929;
@define-color bar_fg_color #000000;

/* GTK NAMED COLORS
   ----------------
   use responsibly! */
/*
widget text/foreground color */
@define-color theme_fg_color #000000;
/*
text color for entries, views and content in general */
@define-color theme_text_color #1a1a1a;
/*
widget base background color */
@define-color theme_bg_color #ee82ee;
/*
text widgets and the like base background color */
@define-color theme_base_color #333333;
/*
base background color of selections */
@define-color theme_selected_bg_color #333333;
/*
text/foreground color of selections */
@define-color theme_selected_fg_color #ffffff;
/*
base background color of insensitive widgets */
@define-color insensitive_bg_color #333333;
/*
text foreground color of insensitive widgets */
@define-color insensitive_fg_color #666666;
/*
insensitive text widgets and the like base background color */
@define-color insensitive_base_color #ffffff;
/*
widget text/foreground color on backdrop windows */
@define-color theme_unfocused_fg_color #666666;
/*
text color for entries, views and content in general on backdrop windows */
@define-color theme_unfocused_text_color black;
/*
widget base background color on backdrop windows */
@define-color theme_unfocused_bg_color #323232;
/*
text widgets and the like base background color on backdrop windows */
@define-color theme_unfocused_base_color #fcfcfc;
/*
base background color of selections on backdrop windows */
@define-color theme_unfocused_selected_bg_color @theme_selected_bg_color;
/*
text/foreground color of selections on backdrop windows */
@define-color theme_unfocused_selected_fg_color @theme_selected_fg_color;
/*
insensitive color on backdrop windows*/
@define-color unfocused_insensitive_color #c3c3c0;
/*
widgets main borders color */
@define-color borders #313131;
/*
widgets main borders color on backdrop windows */
@define-color unfocused_borders #ff0000;
/*
these are pretty self explicative */
@define-color warning_color #f57900;
@define-color error_color #cc0000;
@define-color success_color #73d216;
/*
these colors are exported for the window manager and shouldn't be used in applications,
read if you used those and something break with a version upgrade you're on your own... */
@define-color wm_title shade(#2e3436, 1.8);
@define-color wm_unfocused_title #666666;
@define-color wm_highlight rgba(255, 255, 255, 0.8);
@define-color wm_borders_edge rgba(255, 255, 255, 0.8);
@define-color wm_bg_a shade(#323232, 1.2);
@define-color wm_bg_b #323232;
@define-color wm_shadow alpha(black, 0.35);
@define-color wm_border alpha(black, 0.18);
@define-color wm_button_hover_color_a shade(#323232, 1.3);
@define-color wm_button_hover_color_b #323232;
@define-color wm_button_active_color_a shade(#323232, 0.85);
@define-color wm_button_active_color_b shade(#323232, 0.89);
@define-color wm_button_active_color_c shade(#323232, 0.9);
@define-color content_view_bg #bfbfbf;

@define-color theme_sel_bg_shaded darker (@theme_selected_bg_color);