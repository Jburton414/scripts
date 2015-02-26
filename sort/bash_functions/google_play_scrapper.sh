url=$(echo http://play.google.com/store/apps/details?id=`pm list packages | head -n1 | cut -d':' -f2`) && wget $url
