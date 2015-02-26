cat ./aa.html | awk -F '<div class="id-app-orig-desc">' '{print $2}' | awk -F '</div>' '{print $1}' 
