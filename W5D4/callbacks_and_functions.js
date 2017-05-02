// // Simple Timeout
//
// window.setTimeout(function() {
//   alert("HAMMERTIME");
// },5000);
//
// // Timeout Plus Closure
//
// function hammerTime(time){
//   window.setTimeout(function(){
//     alert(`${time} is hammertime!`);
//   });
// }

// Some
const cat = {
  age: 5,

  ageOneYear () {
    this.age += 1;
  }
};

const catAging = cat.ageOneYear;
catAging();
