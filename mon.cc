#include <iostream>
#include "Punt.hpp"
#include "Cami.hpp"
#include "Mon.hpp"
#include <string>
#include <vector>

using namespace std;

typedef vector<vector<int> > Matriu;



void llegir(){
  cout << "L" << endl;
}

void escriure(){
	cout << "E" << endl;
}

bool comprovar_cami(){
	cout << "C" << endl;
}

void resetejar_mon(){
	cout << "R" << endl;
}

void menu(){
  int opcio;
  cout << "Si us plau, selecciona una de les següents opcions" << endl;
  cout << " 1. Llegir" << endl;
  cout << " 2. Escriure" << endl;
  cout << " 3. Comprovar el camí" << endl;
  cout << " 4. Resetejar el món" << endl;
  cout << " 5. Acabar el joc" << endl;
  cin >> opcio;
  if ( opcio == 1) {llegir(); menu();}
  if ( opcio == 2) {escriure(); menu();}
  if ( opcio == 3) {comprovar_cami(); menu();}
  if ( opcio == 4) {resetejar_mon(); menu();}
  if (opcio==5){
   	cout << "EXIT" << endl; 
	return;
  }
}

int main(){
  menu();
}
