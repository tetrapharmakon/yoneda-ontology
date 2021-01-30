max_words=10000
words=$(pdftotext $1 - | tr -d '.' | wc -w)

RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[1;32m'

diff=$(expr $max_words - $words)

if [[ $diff -ge "0" ]];
then
    echo -e "You still have${GREEN} $diff ${NC}words left; way to go!";
else
    echo -e "You still have${RED} $diff ${NC}words left; life is too short to be wordy!";
fi 