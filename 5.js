function checkElement(text, character){
    var arr = text.split('');
    var jumlah = 0;
    arr.forEach((val)=>{
        if(val === character){
            jumlah++;
        }
    })

    return jumlah;
}

console.log(checkElement("arkademy", "a"))