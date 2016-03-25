
if [[ $(uname) == *"MINGW"* ]]
then
    # This script is intended to run in Git Bash environment. Note the form for -subj
    echo "Generating RSA key for the root CA and store it in ca.key:"
    openssl genrsa -out ca.key 2048

    echo ""
    echo "Create the self-signed root CA certificate in ca.crt:"
    # openssl req -new -x509 -days 1826 -key ca.key -out ca.crt -subj "OU=word-add-in-javascript-moduleextension/CN=localhost-ca"
    openssl req -new -x509 -days 1826 -key ca.key -out ca.crt -subj "//C=US\ST=WA\L=Redmond\O=MaxDevAddins\OU=word-add-in-javascript-moduleextension\CN=localhost-ca"
    # openssl req -new -x509 -days 1826 -key ca.key -out ca.pem -subj "//C=US\ST=WA\L=Redmond\O=MaxDevAddins\OU=word-add-in-javascript-moduleextension\CN=localhost-ca"

    echo ""
    echo "Create private key for subordinate CA:"
    openssl genrsa -out server.key 4096

    echo ""
    echo "Request a certificate for the subordinate CA:"
    # openssl req -new -key server.key -out server.csr -subj "OU=word-add-in-javascript-moduleextension/CN=localhost"
    openssl req -new -key server.key -out server.csr -subj "//C=US\ST=WA\L=Redmond\O=MaxDevAddins\OU=word-add-in-javascript-moduleextension\CN=localhost"

    echo ""
    echo "Process the subordinate CA cert request and sign it with the root CA:"
    openssl x509 -req -days 730 -in server.csr -CA ca.crt -CAkey ca.key -set_serial 01 -out server.crt
    # openssl x509 -req -days 730 -in server.csr -CA ca.pem -CAkey ca.key -set_serial 01 -out server.crt

    echo ""
    echo "NEXT STEP (required): install the root CA (ca.crt) in your Trusted Root Certification Authorities store."
    # echo "NEXT STEP (required): install the root CA (ca.pem) in your Trusted Root Certification Authorities store."
else
    echo "create certs not with Git Bash env, you'll need to set execute perms: chmod +x gen-cert.sh"
fi






# if [[ $(uname) == *"MINGW"* ]]
# then
#     # This script is intended to run in Git Bash environment. Note the form for -subj
#     echo "Create a private key:"
#     openssl genrsa -out server.enc.key 2048

#     echo ""
#     echo "Create a certificate signing request:"
#     # server.csr is used to self-sign this file.
#     openssl req -new -key server.enc.key -out server.csr

#     echo ""
#     echo "Remove encryption from server.enc.key to create server.key:"
#     openssl rsa -in server.enc.key -out server.key

#     echo ""
#     echo "Request a certificate for the subordinate CA:"
#     openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt

# else
#     echo "To create certs not with Git Bash env, you'll need to set execute perms: chmod +x gen-cert.sh"
# fi


