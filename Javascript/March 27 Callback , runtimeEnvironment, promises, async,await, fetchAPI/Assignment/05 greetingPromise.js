function greeting(name) {
  return new Promise((resolve, reject) => {
    if (name) 
        resolve(`Hello ${name}`);
    else 
        reject("NO name provided!!");
  });
}
greeting("Mithun").then((greet) => {
  console.log(greet);
});
