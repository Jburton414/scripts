awk 'BEGIN {

                FS="<post "

                date = "'"`date`"'"

                #"'"`bashDate=$(date '+%m-%d-%Y@%H:%M:%S');
                #       backupRootDir=/root/delicious_backups/;
                #       deliciousXML=deliciousBackup.$bashDate.xml;`"'"

                user = "'"`echo $user`"'"; print user;

        }
        {

                otherInfo=$1
                split(otherInfo, otherInfoArray, "\"")

                #print otherInfo
                #print otherInfoArray[2] #xml version
                #print otherInfoArray[4] #encoding
                #print otherInfoArray[6] #tag
                #print otherInfoArray[8] #total
                #print otherInfoArray[10] #user

        }
        {

                printf "<!DOCTYPE html>\n"
                printf "<html>\n\n"
                printf "<head>\n\n"

                printf "<style>\n\n"
                printf "th, td{\n\ttext-align: left;\n}\n\n"
                printf "td:first-child{\nwidth:10%;\n}\n\n"
                printf "table{\n\twidth:100%;\n}\n\n"
                printf "</style>\n\n"

                printf "<title>" otherInfoArray[10] "'\'s' Delicious Backup - " date "</title>\n\n"

                printf "</head>\n\n"
                printf "<body>\n"

        }
        {

                for (i = 2; i <= NF; i++)


                        {
                                count++
                                split($i, attributeArray, "\"")

                                #print attributeArray[2] #description
                                #print attributeArray[4] #extended
                                #print attributeArray[6] #hash
                                #print attributeArray[8] #href
                                #print attributeArray[10] #private
                                #print attributeArray[12] #shared
                                #print attributeArray[14] #tag
                                #print attributeArray[16] #time


                                #{
                                #
                                # which operator ; or &&?????????
                                #
                                #       shutterCommand = "read postNum url; shutter --web=$url -o ./images/$postNum.png "
                                #       printf count attributeArray[8] | shutterCommand
                                #
                                #};

                                printf "<!-- Post Number " count " -->\n\t"
                                printf "<table>\n\t\t"
                                        printf "<tbody>\n\t\t\t"
                                                printf "<tr>\n\t\t\t\t"
                                                        printf "<th colspan='"'2'"'><a href=\"" attributeArray[8] "\">" attributeArray[2] "</a></th>\n\t\t\t"
                                                printf "</tr>\n\t\t\t"
                                                printf "<tr>\n\t\t\t\t"
                                                        printf "<td>Tags:</td>\n\t\t\t\t"
                                                        printf "<td>" attributeArray[14] "</td>\n\t\t\t"
                                                printf "</tr>\n\t\t\t"
                                                printf "<tr>\n\t\t\t\t"
                                                        printf "<td>Time:</td>\n\t\t\t\t"
                                                        printf "<td>" attributeArray[16] "</td>\n\t\t\t"
                                                printf "</tr>\n\t\t"
                                                printf "<tr>\n\t\t\t\t"
                                                        printf "<td>Private:</td>\n\t\t\t\t"
                                                        printf "<td>" attributeArray[10] "</td>\n\t\t\t"
                                                printf "</tr>\n\t\t"
                                        printf "</tbody>\n\t"
                                printf "</table>\n\n"

                        };

        }
        {

                printf "</body>\n</html>"

        }'
