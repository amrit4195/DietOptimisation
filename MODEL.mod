/*********************************************
 * OPL 12.6.0.0 Model
 * Author: Vicky
 * Creation Date: Mar 21, 2016 at 10:37:11 AM
 *********************************************/

{string} Food = ...;

float Cost[Food] = ...; 
float Protein[Food] = ...;
float Fibre[Food] = ...;
float Ome3[Food] = ...;
float SatFat[Food] = ...; 

dvar float+ yAmount[Food]; // The amount of food to purchase in units of 100 grams 

minimize
sum(i in Food) Cost[i] * yAmount[i];

subject to {
 
// Protein constraint
sum(i in Food) Protein[i]*yAmount[i] >= 45;
   
// Fibre constraint
sum(i in Food) Fibre[i]*yAmount[i] >= 25;

// Omega3
sum(i in Food) Ome3[i]*yAmount[i] >= 0.43;

// Saturated Fat
sum(i in Food) SatFat[i]*yAmount[i] <= 12;

forall (i in Food) yAmount[i] <= 3;

}

