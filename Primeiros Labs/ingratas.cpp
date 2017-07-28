#include<iostream>
#include<string>

using namespace std;

int main() {
	
	int cont = 0;
	string palavra;
	
	while(cont < 3){
	
		cin >> palavra;
		bool ingrata = true;
		
		for(unsigned int i = 0; i <= palavra.length(); i++){
			
			if(palavra[i] == 'a' || palavra[i] == 'e' || palavra[i] == 'i' || palavra[i] == 'o' || palavra[i] == 'u'){
					ingrata = false;
				
			}
		
		}
		
		if(ingrata){
			cout << palavra << endl;
			cont++;
			
		}
		
	
	}

	
}
