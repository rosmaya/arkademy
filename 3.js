function segitiga(jumlah){
    
    for(var i=1; i<=jumlah; i++){
        var t = "";
        for(var j=1; j<=i; j++){
            t += j+", ";
        } 
        console.log(t);
    }
}

segitiga(7)