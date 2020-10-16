#!/usr/bin/env bash

heads1=(
	"     ___T_     \n    | "
	"    \\.===./    \n    | "
	"     o___o     \n    //"
	"     T___      \n     |"
	"      )_(      \n     |"
	"     |---|     \n     |"
	"     .---.     \n    } "
	"      Y__      \n    _/"
	"     .===.     \n    //"
	"     _._._     \n    -)"
	"    .=._,=.    \n   ' ("
	"      .-.      \n   ._("
	"     ,_,_,     \n     \\"
	"     .===./\`   \n    /."
	"      __i      \n     ["
	"   _ _,_,_ _   \n   \\( "
)

heads2=(
	" |    \n    |__"
	" |    \n     \\_"
	"\\\\    \n    |\\_"
	"|     \n     \\_"
	"|     \n     |_"
	"|     \n     |_"
	" {    \n     \\_"
	"\\_    \n     \\_"
	"\\\\    \n    \\\\_"
	"(-    \n     \\_"
	") \`   \n     _)"
	")_.   \n     (_"
	"/     \n     /_"
	".\\    \n    \"\\_"
	"]     \n      ]"
	" )/   \n     \\_"
)

heads3=(
	"__|    "
	"_/     "
	"_/|    "
	"_/     "
	"_|     "
	"_|     "
	"_/     "
	"_/     "
	"_//    "
	"_/     "
	"(_     "
	"_)     "
	"_\\     "
	"_/\\"
	"[      "
	"_/     "
)

bodies=(
	"    /| []|\\    \n  ()/|___|\\()  "
	"  o==|ooo|==o  \n     |___|     "
	"    /|(\\)|\\    \n   d |___| b   "
	"  7--|=0=|--<  \n     |___|     "
	" .-._/___\\_.-. \n ;   \\___/   ; "
	"}-. /\\--o/\\ .-{\n   \" |___| \""
	"   .=[::+]=.   \n ]=' [___] '=[ "
	" )=o=|L88|=o=( \n )=o=|___|=o=( "
	"    ,=|x|=.    \n    'c/_\\  'c  "
	"()ooo|\\=/|ooo()\n     |___|     "
	".'c .\"|_|\". n\`.\n'--'  /_\\  \`--'"
	"   .=(+++)=.   \no=\"  (___)  \"=o"
	"   ,\"|+  |\".   \n   _\\|+__|/_   "
	"  (m9\\:::/\\    \n     /___\\6    "
	" >===]__o[===< \n     [o__]     "
	"  .==|>o<|==:=L\n  '=c|___|     "
)

legs=(
	"     |_|_|     \n     /_|_\\     "
	"    .'._.'.    \n    |_| |_|    "
	"    . \\_/  .   \n   . .:::.. .  "
	"     // \\\\     \n    _\\\\ //_    "
	"     (   )     \n    __) (__    "
	"      .\".      \n      |_|      "
	"     /| |\\     \n    [_] [_]    "
	"  .  /___\\  .  \n. ..:::::::.  ."
	"     /| |\\     \n    (0) (0)    "
	"      |_|      \n     (ooo)     "
	"    _// \\\\_    \n   /_o| |o_\\   "
	"     (_|_)     \n     (o|o)     "
	"     /  |      \n    _\\  |_     "
	"     [] []     \n    /:] [:\\    "
	"     ]| |[     \n    [_| |_]    "
	"     /7 [|     \n   \\/7  [|_    "
)

eyes=("o o" "p q" "q p" "d b" "b d" "ooo" "[o]" "9 9" "6=6" "u u" "n n" "q q" "d d" "- -" "0 0" "O O")

mouths=("-" "=" "o" "O" "0" "#" "u" "v" "n" "r" "\`" "^" "A" "@" "e" "E")

for i in {0..15}; do
	echo -en "${heads1[$i]}"
	echo -en "${eyes[$i]}"
	echo -en "${heads2[$i]}"
	echo -en "${mouths[$i]}"
	echo -e "${heads3[$i]}"
	echo -e "${bodies[$i]}"
	echo -e "${legs[$i]}"
	echo
done
