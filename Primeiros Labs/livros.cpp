#include<iostream>
#include<string>
#include<vector>
#include<algorithm>
#include<cstdio>

using namespace std;

int main(){
	int N;
	cin >> N;
	
	string livros[N];
	
	int i = 0;
	
	while(i <= N){
		string nome;
		getline(cin, nome);	
		livros[i] = nome;
		i++;
	}
	
	
	for(int i = 0; i <= N; i++){
		for(int j = 0; j < i; j++){
			if(livros[i] > livros[j]){
				string aux = livros[i];
				livros[i] = livros[j];
				livros[j] = aux;
			}
		}
	
	}
	
	for(int i = 0; i <= N; i++){
		cout << livros[i] << endl;
	}
	
	return 0;
}
