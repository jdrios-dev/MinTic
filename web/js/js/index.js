// 1. Ver mensaje en consola
console.log('Hola, mundo')


// 2. Variable
const var1 = 4;
const var2 = 10;
let estoEsUnaVariable;
estoEsUnaVariable = 10;
// var estoEsOtra; // mejor no usarla NUNCA!
const resultado = var1 + var2;

// 3. que tipos de valores existen

let varInt = 1
let varString = 'Daniel'
let varBooleano = true // false
let varArray = ['manzana', 'fresa', 'manzana', 'fresa', 'manzana', 'fresa',]
let varObjeto = { "edad": 25, "nombre": 'Daniel', "estudia": true }
let varArrayDeObjetos = [
  {
    "edad": 25,
    "nombre": 'Daniel',
    "estudia": true
  },
  {
    "edad": 28,
    "nombre": 'Alexis',
    "estudia": false
  },
  {
    "edad": 27,
    "nombre": 'Brenda',
    "estudia": true
  },
]
console.log(varArrayDeObjetos);

// 4. Operaciones con variables

const suma = 6 + 3
console.log('suma', suma)
console.log('resta: ', 4 - 9)
console.log('division: ', 4 / 9)
console.log('modulo: ', 9 % 4)
console.log('Multi: ', 4 * 9)

const name = 'Daniel';
const lastname = 'Rios';

//funcion

console.log(name, lastname);

//Template literal

console.log(`${varObjeto.nombre}  ${varObjeto.estudia} -- ${varObjeto.edad}`);

// 5. como acceder a un objeto

console.log(varObjeto.nombre);
console.log(varObjeto.edad);
console.log(varObjeto.estudia);

// 6. Como acceder a un array

console.log('Array Completo: ', varArray);
console.log('Primer elemento: ', varArray[0]);
console.log('Segundo elemento: ', varArray[1]);

// 7. Acceder a un valor en un objecto dentro de un array

console.log('Array de objetos', varArrayDeObjetos);

console.log(varArrayDeObjetos[2]['nombre'])
console.log(varArrayDeObjetos[0].edad)
console.log(varArrayDeObjetos[1].estudia)