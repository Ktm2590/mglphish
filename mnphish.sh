
url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Алдаатай линк! https эсвэл http тэй бичнэ үү!\e[0m"
            exit 1
        fi
    fi
}


echo -e "\e[1;31;42m \e[0m \n"
echo -e "\e[40;38;5;82m Холбоо барих \e[30;48;5;82m https://www.facebook.com/profile.php?id=100019427860230 \e[0m"
echo -e "\e[30;48;5;82m    Edited by \e[40;38;5;82m   KiraShishigami \e[0m \n\n"
echo -e "\e[1;31;42m *Phishing Линк* \e[0m \n"
echo -n " Энд буулга Phishing линкээ  ( http эсвэл https хамт): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31;42m *Нуух Линк*\e[0m"
echo 'Одоо Phishing Линкээ өөрчилнө үү! (http эсвэл https), Жишээ https://Aimkira.com, http://Kira.org) :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nНэмэлт үгээ бичнэ үү!:(Жишээ: Profile-Kira, best-pubg-tricks)'
echo -e "\e[31mЗай авахгүй '-' Нэмэлт үгнүүд хооронд\e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e "\nАчааллаж байна...\n"
final=$mask-$words@$shorter
echo -e "Энд таны линк :\e[32m ${final} \e[0m\n"