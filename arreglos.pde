/* ARREGLO DE DOS DIMENSIONES, EXPLICADO CON LETRAS Y COMO GRILLA DE 10 EN 10
*/
// PARA ENTENDER LA ESTRUCTURA Y LOS NIVELES DEL ARREGLO DE DOS DIMENSIONES


//DIGAMOS QUE LA LETRA "A", REPRESENTA AL PRIMER ARREGLO, EL CUAL POSEE DOS ARREGLOS digámosle "B"
// CADA ARREGLO "B", POSEE 4 VALORES 
/*  int [A][B][C] arreglo
A->  { 
B-->  {  
C--->  { 10,20,30,40 },
C--->  { 50, 60, 70, 80}
      } <--B, 
B-->  { 
C--->  { 90,100,110,120},
C--->  { 130,140,150,160}
      }  <--B                   
      }<-A                     
*/

//A) Sólo podremos inicar hasta [1] el pimer valor de botones[][][], ya que sólo tenemos
// 2 (dos) Arreglos principales [0]{...} y [1]{...}*/
//B) Dentro estos 2 arreglos hay 2 arreglos más, contruídos o representados por [0]{...} y [1]{...}
//C) y cada casiilla de estos dos arreglos posee un valor que se inrementa de a 10 en 10
void mousePressed(){
int [][][] botones = {
  //AQUI ESTAMOS EN [0][][]//
  {
      //AQUI ESTAMOS EN [0][0][]//:
      {10,20,30,40},
      //AQUI ESTAMOS EN [0][1][]//:
      {50,60,70,80}
  },
  //AQUI ESTAMOS EN [1][][]//
  {
      //AQUI ESTAMOS EN [1][0][90,100,110,120]//:
      {90,100,110,120},
      //AQUI ESTAMOS EN [1][1][130,140,150,160]//:
      {130,140,150,160}
  }
};
println("Debe imprimir 100: " + botones[1][0][1]);
}
