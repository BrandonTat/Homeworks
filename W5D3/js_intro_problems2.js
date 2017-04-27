// Phase I - Callbacks

function titleize(names, callback){
  let title_names = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  callback(title_names);
}

titleize(["Mary", "Brian", "Leo"], (names) => {
  names.forEach(name => console.log(name));
});

// Phase II - Constructors, Prototypes, and 'this'

function Elephant(name, height, tricks){
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function(){
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function(){
  this.height = this.height + 12;
};

Elephant.prototype.addTrick = function(trick){
  this.tricks.push(trick);
};

Elephant.prototype.play = function(){
  let randomTrick = this.tricks[Math.floor(Math.random()*this.tricks.length)];
  console.log(`${this.name} is ${randomTrick}`);
};

let dumbo = new Elephant('Dumbo', 360, ['fly', 'jump', 'stand']);

// Tests to make sure Elephant constructor and prototypes is working
// dumbo.trumpet();
//
// console.log(`old height = ${dumbo.height}`);
// dumbo.grow();
// console.log(`new height = ${dumbo.height}`);
//
// console.log(dumbo.tricks);
// dumbo.addTrick('dance');
// console.log(dumbo.tricks);
//
// dumbo.play();

// Phase III - Function Invocation

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah, dumbo];

Elephant.prototype.paradeHelper = function(elephant){
  console.log(`${elephant.name} is trotting by!`);
};

// Phase IV - Closures

function dinerBreakfase(){
  let order = "I'd like cheesy scrambled eggs please.";
  console.log(order);

  return function(food){
    order = `${order.slice(0, order.length - 8)} and ${food} please.`;
    console.log(order);
  };
}
