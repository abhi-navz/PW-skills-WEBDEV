class car {
  company = "Mahindra ";
  model = "ScorpioN";
  year = 2022;

  getdescription() {
    console.log(`This is a ${this.year} ${this.company} ${this.model}`);
  }
}

const car1 = new car();
car1.getdescription();
