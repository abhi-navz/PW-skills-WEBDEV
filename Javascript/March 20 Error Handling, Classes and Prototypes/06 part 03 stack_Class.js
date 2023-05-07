// implementing a stack using arrays. but the user won't know how it's implemented as #arr is private and no user has acces of it.

class stack {
  #arr;
  constructor() {
    this.#arr = [];
  }
  push(x) {
    this.#arr.push(x);
  }
  pop(x) {
    this.#arr.pop();
  }
  top() {
    if (this.#arr.length == 0) return undefined;
    return this.#arr[this.#arr.length - 1];
  }
}

const st = new stack();
st.push(30);
st.push(35);
console.log(st.top());
st.push(33);
st.push(45);
console.log(st.top());
st.pop();
console.log(st.top());