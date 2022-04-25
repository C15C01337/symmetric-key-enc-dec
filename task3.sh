echo "Enter the name of file to create a new file: "
read new_file
touch $new_file
echo "Enter the plaintext message to the file for encryption:"
read msg_content
echo $msg_content > $new_file
clear

function encryption(){
    echo "Enter the name of file to be encrypted:"
    read toencFile
    echo "Enter the encryption algorithm:"
    read encAlg
    echo "Enter the password for encryption:"
    read passEnc
    echo "Enter the filename that will be used to save as output:"
    read outFile

openssl enc -$encAlg -k $passEnc -p -in $toencFile -out $outFile

choices
}

function decryption(){
    echo "Enter the name of file to be decrypted:"
    read todecFile
    echo "Enter the decryption algorithm:"
    read decAlg
    echo "Enter the password for decryption:"
    read passDec
    echo "Enter the filename that will be used to save as output:"
    read outDec

openssl enc -$decAlg -k $passDec -d -in $todecFile -out $outDec -P

choices
}
 
function exitTask(){
    exit
}

function choices(){
    echo " "
     echo "______________________"
     echo "| SN   | Task        |"
     echo "|____________________|"
     echo "| 1.   |  Encryption |"
     echo "| 2.   |  Decryption |"
     echo "| 3.   |    Exit     |"
     echo "|____________________|"
     echo " "

echo "Enter task name which you want to perform: "
read task
if [[ $task == "Encryption" || $task == "encryption" || $task == "1" ]]
    then
        encryption
elif [[ $task == "Decryption" || $task == "decryption" || $task == "2" ]]
    then 
        decryption
elif [[ $task == "Exit" || $task == "exit" || $task == "3" ]]
    then
        exitTask
else 
    echo "Please select the task from the above table :)"
fi
}

choices #calling main function


