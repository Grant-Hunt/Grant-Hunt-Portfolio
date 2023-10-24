
/**
 * Goal: Character class creates Jlabel variables and changes labels based on parameter input.
 * Language: Java
 * 
 * 
 */
import java.util.Scanner;
import java.awt.*;           //Use the Abstract Window Toolkit
import java.awt.event.*;     //Use the Abstract Window Toolkit event processing
import javax.swing.*; 
import java.util.Scanner;
import java.util.ArrayList;
public class Character
{
  public double health;
  public JLabel name1;
  public JLabel healthl;
  public JLabel damage;
  public JLabel speed;
  public JLabel range; 
  public JLabel hitSpeed;
  public JPanel p;
           
 
  public Character(String name)
  {
   name1 = new JLabel();
   healthl = new JLabel();
   damage  = new JLabel();
   speed = new JLabel();
   range = new JLabel();
   hitSpeed = new JLabel();
   p = new JPanel();
   if(name.equals("foot m"))
   {
       this.health = 6;
   }
   
    if(name.equals("foot r"))
   {
       this.health = 3;
   }
   
    if(name.equals("special"))
   {
       this.health = 8;
   }
   
    if(name.equals("stealth"))
   {
       this.health = 5;
   }
   
    if(name.equals("tank"))
   {
       this.health =10;
   }
   
    if(name.equals("goat"))
   {
       this.health = 10;
   }
   
  }
  
 
  
  public double getHealth()
  {
      return health;
  }
  
  public void setHealth(double health)
  {
      this.health = health;
  }
  
 
}
