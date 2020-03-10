processingInstruction.stdout.write("Hello. what is your name");

process.stdin.on('date', function(data){
    console.log("Hello" + data.toString());
    process.exit();
});

process.on('exit', function(){
    console.log("Thanks for the info!");
})