/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fabricaauto;

/**
 *
 * @author migue
 */
public class Moto extends AutoMovel {

    public int freioAbs;
    public int bau;

    public Moto(String cor, String placa, String modelo) {
        super(cor, placa, modelo);
    }

    public void modelo() {
        System.out.println("============================================");
        System.out.println("moto: " + modelo);
        System.out.println("Placa: " + placa);
        System.out.println("Cor: " + cor);
        System.out.println("============================================");
    }
    public void freioAbs(){
        if (freioAbs == 0){
        freioAbs = 0 ;
            System.out.println("A moto nao tem Freio ABS");
        }else{
            System.out.println("A moto tem Freio ABS");
        }
        
    }
     public void TemAbs(int freioAbs) {
        if (freioAbs == 0 || freioAbs == 1) {
            this.freioAbs = freioAbs;
        } else {
            System.out.println("Digite 0 para ter Freio Abs ou Digite 1 pra ter Freio Abs");
        }
    }
    public void bau() {
        if (bau == 0) {
            bau = 0;
            System.out.println("A moto nao tem bau.");
        } else {
            System.out.println("A moto tem bau.");
        }
    }

    public void temBau(int bau) {
        if (bau == 0 || bau == 1) {
            this.bau = bau;
        } else {
            System.out.println("Digite 0 para nao ter bau ou Digite 1 pra ter bau");
        }
    }

    public void alarme() {
        System.out.println("O Alarme esta ligado.");
    }

}
