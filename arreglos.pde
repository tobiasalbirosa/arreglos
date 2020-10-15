/* ARREGLO DE DOS DIMENSIONES, EXPLICADO CON LETRAS Y COMO GRILLA DE 10 EN 10
 */
// PARA ENTENDER LA ESTRUCTURA Y LOS NIVELES DEL ARREGLO DE MÚLTIPLES DIMENSIONES
//DIGAMOS QUE LA LETRA "A", REPRESENTA AL PRIMER ARREGLO, EL CUAL POSEE DOS ARREGLOS MÁS digámosle "B" y "C"
// CADA "B", POSEERÁ 2 VALORES 
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
int [][][] botones = {
  //AQUI ESTAMOS EN [0][][]//
  {
    //AQUI ESTAMOS EN [0][0][]//:
    {10, 20, 30, 40}, 
    //AQUI ESTAMOS EN [0][1][]//:
    {50, 60, 70, 80}
  }, 
  //AQUI ESTAMOS EN [1][][]//
  {
    //AQUI ESTAMOS EN [1][0][90,100,110,120]//:
    {90, 100, 110, 120}, 
    //AQUI ESTAMOS EN [1][1][130,140,150,160]//:
    {130, 140, 150, 160}
  }
};
void draw() {
  int a = 0;
  int b = 0;
  int c = 0;
  if (frameCount > 12) {
    frameCount = 0;
  }
  if (mousePressed)
  {
    for (int x = 0; x <= 1; x++) {
      a = x;
      for (int y = 0; y <= 1; y++) {
        b = y;
        for (int z = 0; z <= 3; z++) {
          c = z;
          botones(a, b, c);
        }
      }
    }
  }
}
void botones(int a, int b, int c) {
  println(botones[a][b][c]);
}
