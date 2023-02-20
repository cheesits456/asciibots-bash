#!/usr/bin/env bash

length=${#1}

hex_to_int() {
	int=""
	case $@ in
		a) int="10"; shift;;
		b) int="11"; shift;;
		c) int="12"; shift;;
		d) int="13"; shift;;
		e) int="14"; shift;;
		f) int="15"; shift;;
		*) int="$*"; shift;;
	esac
}

print_robot() {
	[ -z "$head" ] && head=$((RANDOM % 16))
	[ -z "$body" ] && body=$((RANDOM % 16))
	[ -z "$leg" ] && leg=$((RANDOM % 16))
	[ -z "$eye" ] && eye=$((RANDOM % 16))
	[ -z "$mouth" ] && mouth=$((RANDOM % 16))
	echo -en "${heads1[$head]}"
	if [ "$length" == "3" ]; then
		echo -en "${eyes2[$eye]}"
	else
		echo -en "${eyes[$eye]}"
	fi
	echo -en "${heads2[$head]}"
	if [ "$length" == "3" ]; then
		echo -en "${mouths2[$mouth]}"
	else
		echo -en "${mouths[$mouth]}"
	fi
	echo -e "${heads3[$head]}"
	echo -e "${bodies[$body]}"
	echo -e "${legs[$leg]}"
	exit 0
}

validate_hex() {
	hex_values=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "a" "b" "c" "d" "e" "f")
	match="0"
	for i in "${hex_values[@]}"; do
		[ "$i" == "$*" ] && match="1"
	done
}

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
eyes2=("o o" "b d" "0-0" "[o]" "ooo" "6=6" "- -" "o o" "d d" "o o" "q q" "u u" "9 9" "n n" "p q" "q p")

mouths=("-" "=" "o" "O" "0" "#" "u" "v" "n" "r" "\`" "^" "A" "@" "e" "E")
mouths2=("-" "=" "-" "-" "#" "o" "0" "o" "u" "=" "-" "-" "-" "=" "-" "\"")

[ "$length" == "5" ] && {
	values=("${1:0:1}" "${1:1:1}" "${1:2:1}" "${1:3:1}" "${1:4:1}")
	for i in "${values[@]}"; do
		validate_hex "$i"
		[ "$match" == "0" ] && print_robot
	done
	for i in {0..4}; do
		hex_to_int "${values[$i]}"
		case $i in
			0) mouth="$int"; shift;;
			1) eye="$int";   shift;;
			2) head="$int";  shift;;
			3) body="$int";  shift;;
			4) leg="$int";   shift;;
		esac
	done
}

[ "$length" == "3" ] && {
	values=("${1:0:1}" "${1:1:1}" "${1:2:1}")
	for i in "${values[@]}"; do
		validate_hex "$i"
		[ "$match" == "0" ] && {
			length="0"
			print_robot
		}
	done
	for i in {0..2}; do
		hex_to_int "${values[$i]}"
		case $i in
			0) eye="$int"
			   mouth="$int"
			   head="$int"; shift;;
			1) body="$int"; shift;;
			2) leg="$int";  shift;;
		esac
	done
}

print_robot