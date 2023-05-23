class show{
    name;
    time;
    price;
    performer;

    constructor(n,t,p,pr){
        this.name = n;
        this.time = t;
        this.price = p;
        this.performer = pr;
        // return 10;  it'll be ignored.
        // return {a:10,b:20} // but if we'll return an obj only the object will be returned and everything else will be ignoredd
    }
    

   display(){
    console.log(this);

   }
}
let did = new show("Dance India Dance","9:00PM",1259+" ₹","multiple");
let dhoom = new show("Dhoom Machale","9:30PM",59+" ₹","Amir Khan");

// console.log(did,dhoom);
did.display();
dhoom.display(); 