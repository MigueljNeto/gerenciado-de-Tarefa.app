/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fabricaauto;

/**
 *
 * @author migue
 */
public class Carro extends AutoMovel {

    public int tetoSolar;
    public int aberto;

    public Carro(String cor, String placa, String modelo) {
        super(cor, placa, modelo);
    }

    public void modelo() {
        System.out.println("============================================");
        System.out.println("Carro:" + modelo);
        System.out.println("Placa:" + placa);
        System.out.println("Cor:" + cor);
        System.out.println("============================================");
    }

    public void abrirFechar() {
        if (aberto == 0) {
            aberto = 1;
            System.out.println("Porta do carro esta aberta.");
        } else {
            aberto = 0;
            System.out.println("Porta do carro esta fechada.");
        }
    }
    
    public void abrirFecharTetoSolar() {
        if (tetoSolar == 1) {
            System.out.println("O teto solar esta aberto");
        } else {
            System.out.println("Este carro nao tem teto solar");
        }
    }

    public void setTetoSolar(int tetoSolar) {
        if (tetoSolar == 0 || tetoSolar == 1) {
            this.tetoSolar = tetoSolar;
        } else {
            System.out.println("Digite 0 para nao ter teto solar ou Digite 1 pra ter teto solar");
        }
    }

}
