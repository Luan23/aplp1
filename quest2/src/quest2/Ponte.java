package quest2;

import java.util.ArrayList;
import java.util.List;

public class Ponte implements Runnable {

	private List<String> fila;
	
	public Ponte() {
		this.fila = new ArrayList<>();
	}
	
	
	public void carro(String carro) {
		fila.add(carro);
	}

	@Override
	public void run() {
		while (!this.fila.isEmpty()) {
			if (this.fila.contains("A")) {
				System.out.println("Passando carro A --> B");
				this.fila.remove("A");
			} else if (this.fila.contains("B")) {
				System.out.println("Passando carro B --> A");
				this.fila.remove("B");
			}
			try {
				Thread.sleep(2000);
			} catch (InterruptedException e) {
				System.out.println(e.getMessage());
			}
		}
		System.out.println("Sem carros");
	}
	
	public	static	void main(String[] args)	{
		Ponte p	= new Ponte();
		Thread t = new Thread(p);
		t.start();
		p.carro("A");
		p.carro("B");
		p.carro("A");
	}

}
