
/**
 * Write a description of class GameDisplay here.
 *
 * @author Grant Hunt
 * @version 6/15/23
 */

import java.awt.*;           //Use the Abstract Window Toolkit
import java.awt.event.*;     //Use the Abstract Window Toolkit event processing
import javax.swing.*; 
import java.util.Scanner;
import java.util.ArrayList;

public class GameDisplay implements ActionListener{
    private ArrayList<Character> list = new ArrayList<Character>();
    private int x=0;
    private JFrame frame = new JFrame("Launch");
    private JPanel panel = new JPanel();
    private JComboBox select = new JComboBox();
    private JButton start = new JButton("Start Game");
    private JButton summon = new JButton("Summon");
    private JButton attack = new JButton("Attack");
    private JButton heal = new JButton("Heal");
    private JButton remove = new JButton("Remove");

    private JFrame frame2 = new JFrame("Game");
    private  Scanner input = new Scanner(System.in);
    public GameDisplay()
    {
        //panel.setBounds(10,30,150,200);    

        panel.setBackground(Color.gray); 
        panel.setLayout(new GridLayout(0,3));
        frame.add(panel);

        fillSelect(panel);

        panel.add(start);
        start.addActionListener(this); 

        panel.add(summon);
        summon.addActionListener(this);

        attack.addActionListener(this);
        attack.setBackground(Color.gray);
        panel.add(attack);

        heal.addActionListener(this);
        heal.setBackground(Color.gray);
        panel.add(heal);

        remove.addActionListener(this);
        remove.setForeground(Color.red.darker().darker());
        panel.add(remove);

        frame.setSize(500,250);
        frame.setLayout(new GridLayout(1,0));
        frame.setTitle("Start Game");
        frame.setVisible(true);
    }

    public static void main(String[] args) {
        new GameDisplay();

    }

    public void fillSelect(JPanel x)
    {
        select.addItem("Foot Soldier (Melee)");
        select.addItem("Foot Soldier (Range)");
        select.addItem("Special");
        select.addItem("Stealth");
        select.addItem("Tank");
        select.addItem("G.O.A.T.");
        x.add(select);
    }

    public void playGame()
    {
        frame2.setSize(700,700);
        frame2.setLayout(new GridLayout(9,9));
        frame2.setTitle("Game");
        frame2.setVisible(true);
    }

    public void actionPerformed(ActionEvent event)
    {
        if (event.getSource().equals(start))
        {
            playGame();
        }
        if (event.getSource().equals(summon))
        {
            x++;
            addCharacter();
        }
        if (event.getSource().equals(attack))
        {
            String input = JOptionPane.showInputDialog(null,"Character Number?");
            int num = Integer.parseInt(input);
            String input2 = JOptionPane.showInputDialog(null,"Damage Amount?");
            int num2 = Integer.parseInt(input2);
            list.get(num-1).setHealth(list.get(num-1).getHealth()+(-num2));
            list.get(num-1).healthl.setText("Health - " + list.get(num-1).getHealth());

        }
        if (event.getSource().equals(heal))
        {
            String input = JOptionPane.showInputDialog(null,"Character Number?");
            int num = Integer.parseInt(input);
            String input2 = JOptionPane.showInputDialog(null,"Heal Amount?");
            int num2 = Integer.parseInt(input2);
            list.get(num-1).setHealth(list.get(num-1).getHealth()+(num2));
            list.get(num-1).healthl.setText("Health - " + list.get(num-1).getHealth());

        }

        if (event.getSource().equals(remove))
        {
            for(int i=0; i<list.size(); i++)
            {
                if(list.get(i).getHealth()<=0)
                {
                    Character c = list.get(i);
                    c.p.setBackground(Color.black);
                    c.p.setLayout(new GridLayout(7,0));
                    frame2.add(c.p);

                    

                    c.healthl.setText("Health - "+ c.getHealth());
                    c.healthl.setForeground(Color.red);
                    c.healthl.setFont(new Font("Verdana", Font.PLAIN, 15));
                    c.p.add(c.healthl);

                    c.damage.setText("Damage - 1x");
                    c.damage.setForeground(Color.black);
                    c.p.add(c.damage);

                    c.speed.setText("Speed - 1x");
                    c.speed.setForeground(Color.black);
                    c.p.add(c.speed);

                    c.range.setText("Range - 2");
                    c.range.setForeground(Color.black);
                    c.p.add(c.range);

                    c.hitSpeed.setText("Hit Speed - 0.5x");
                    c.hitSpeed.setForeground(Color.black);
                    c.p.add(c.hitSpeed);
                }
            }
        }}

    public void addCharacter()
    {
        if(select.getSelectedItem().toString().equals("Tank"))
        {
            String input = JOptionPane.showInputDialog(null,"Character Name?");

            list.add(new Character("tank"));
            Character c = list.get(list.size()-1);

            c.p.setBackground(Color.RED.darker().darker());
            c.p.setLayout(new GridLayout(7,0));
            frame2.add(c.p);

            c.name1.setText("("+x+") "+input + " (TANK)");
            c.name1.setFont(new Font("Verdana", Font.PLAIN, 18));
            c.name1.setForeground(Color.white);
            c.p.add(c.name1);

            c.healthl.setText("Health - "+ c.getHealth());
            c.healthl.setForeground(Color.green);
            c.healthl.setFont(new Font("Verdana", Font.PLAIN, 15));
            c.p.add(c.healthl);

            c.damage.setText("Damage - 2x");
            c.damage.setForeground(Color.white);
            c.p.add(c.damage);

            c.speed.setText("Speed - 1x");
            c.speed.setForeground(Color.white);
            c.p.add(c.speed);

            c.range.setText("Range - 4");
            c.range.setForeground(Color.white);
            c.p.add(c.range);

            c.hitSpeed.setText("Hit Speed - 1x");
            c.hitSpeed.setForeground(Color.white);
            c.p.add(c.hitSpeed);

            //attack.addActionListener(this);
            //attack.setBackground(Color.gray);
            //p.add(attack);

            //heal.addActionListener(this);
            //heal.setBackground(Color.gray);
            //p.add(heal);

            frame2.setLayout(new GridLayout(0,4));
            frame2.setVisible(true);

        }

        if(select.getSelectedItem().toString().equals("Foot Soldier (Melee)"))
        {
            String input = JOptionPane.showInputDialog(null,"Character Name?");

            list.add(new Character("foot m"));
            Character c = list.get(list.size()-1);

            c.p.setBackground(Color.GRAY);
            c.p.setLayout(new GridLayout(7,0));
            frame2.add(c.p);

            c.name1.setText("("+x+") "+input + " (FOOT M)");
            c.name1.setFont(new Font("Verdana", Font.PLAIN, 18));
            c.name1.setForeground(Color.white);
            c.p.add(c.name1);

            c.healthl.setText("Health - "+ c.getHealth());
            c.healthl.setForeground(Color.green);
            c.healthl.setFont(new Font("Verdana", Font.PLAIN, 15));
            c.p.add(c.healthl);

            c.damage.setText("Damage - 1x");
            c.damage.setForeground(Color.white);
            c.p.add(c.damage);

            c.speed.setText("Speed - 1x");
            c.speed.setForeground(Color.white);
            c.p.add(c.speed);

            c.range.setText("Range - 2");
            c.range.setForeground(Color.white);
            c.p.add(c.range);

            c.hitSpeed.setText("Hit Speed - 0.5x");
            c.hitSpeed.setForeground(Color.white);
            c.p.add(c.hitSpeed);

            //attack.addActionListener(this);
            //attack.setBackground(Color.gray);
            //p.add(attack);

            //heal.addActionListener(this);
            //heal.setBackground(Color.gray);
            //p.add(heal);

            frame2.setLayout(new GridLayout(0,4));
            frame2.setVisible(true);

        }

        if(select.getSelectedItem().toString().equals("Foot Soldier (Range)"))
        {
            String input = JOptionPane.showInputDialog(null,"Character Name?");

            list.add(new Character("foot r"));
            Character c = list.get(list.size()-1);

            c.p.setBackground(Color.blue.darker().darker().darker());
            c.p.setLayout(new GridLayout(7,0));
            frame2.add(c.p);

            c.name1.setText("("+x+") "+input + " (FOOT R)");
            c.name1.setFont(new Font("Verdana", Font.PLAIN, 18));
            c.name1.setForeground(Color.white);
            c.p.add(c.name1);

            c.healthl.setText("Health - "+ c.getHealth());
            c.healthl.setForeground(Color.green);
            c.healthl.setFont(new Font("Verdana", Font.PLAIN, 15));
            c.p.add(c.healthl);

            c.damage.setText("Damage - 0.5x");
            c.damage.setForeground(Color.white);
            c.p.add(c.damage);

            c.speed.setText("Speed - 0.5x");
            c.speed.setForeground(Color.white);
            c.p.add(c.speed);

            c.range.setText("Range - 10");
            c.range.setForeground(Color.white);
            c.p.add(c.range);

            c.hitSpeed.setText("Hit Speed - 1x");
            c.hitSpeed.setForeground(Color.white);
            c.p.add(c.hitSpeed);

            //attack.addActionListener(this);
            //attack.setBackground(Color.gray);
            //p.add(attack);

            //heal.addActionListener(this);
            //heal.setBackground(Color.gray);
            //p.add(heal);

            frame2.setLayout(new GridLayout(0,4));
            frame2.setVisible(true);

        }

        if(select.getSelectedItem().toString().equals("Special"))
        {
            String input = JOptionPane.showInputDialog(null,"Character Name?");

            list.add(new Character("special"));
            Character c = list.get(list.size()-1);

            c.p.setBackground(Color.GREEN.darker().darker().darker().darker());
            c.p.setLayout(new GridLayout(7,0));
            frame2.add(c.p);

            c.name1.setText("("+x+") "+input + " (SPECIAL)");
            c.name1.setFont(new Font("Verdana", Font.PLAIN, 18));
            c.name1.setForeground(Color.white);
            c.p.add(c.name1);

            c.healthl.setText("Health - "+ c.getHealth());
            c.healthl.setForeground(Color.green);
            c.healthl.setFont(new Font("Verdana", Font.PLAIN, 15));
            c.p.add(c.healthl);

            c.damage.setText("Damage - 1.5x");
            c.damage.setForeground(Color.white);
            c.p.add(c.damage);

            c.speed.setText("Speed - 1x");
            c.speed.setForeground(Color.white);
            c.p.add(c.speed);

            c.range.setText("Range - 6");
            c.range.setForeground(Color.white);
            c.p.add(c.range);

            c.hitSpeed.setText("Hit Speed - 1x");
            c.hitSpeed.setForeground(Color.white);
            c.p.add(c.hitSpeed);

            //attack.addActionListener(this);
            //attack.setBackground(Color.gray);
            //p.add(attack);

            //heal.addActionListener(this);
            //heal.setBackground(Color.gray);
            //p.add(heal);

            frame2.setLayout(new GridLayout(0,4));
            frame2.setVisible(true);

        }

        if(select.getSelectedItem().toString().equals("Stealth"))
        {
            String input = JOptionPane.showInputDialog(null,"Character Name?");

            list.add(new Character("stealth"));
            Character c = list.get(list.size()-1);

            c.p.setBackground(Color.magenta.darker().darker().darker());
            c.p.setLayout(new GridLayout(7,0));
            frame2.add(c.p);

            c.name1.setText("("+x+") "+input + " (STEALTH)");
            c.name1.setFont(new Font("Verdana", Font.PLAIN, 18));
            c.name1.setForeground(Color.white);
            c.p.add(c.name1);

            c.healthl.setText("Health - "+ c.getHealth());
            c.healthl.setForeground(Color.green);
            c.healthl.setFont(new Font("Verdana", Font.PLAIN, 15));
            c.p.add(c.healthl);

            c.damage.setText("Damage - 1x");
            c.damage.setForeground(Color.white);
            c.p.add(c.damage);

            c.speed.setText("Speed - 2x");
            c.speed.setForeground(Color.white);
            c.p.add(c.speed);

            c.range.setText("Range - 4");
            c.range.setForeground(Color.white);
            c.p.add(c.range);

            c.hitSpeed.setText("Hit Speed - 2x");
            c.hitSpeed.setForeground(Color.white);
            c.p.add(c.hitSpeed);

            //attack.addActionListener(this);
            //attack.setBackground(Color.gray);
            //p.add(attack);

            //heal.addActionListener(this);
            //heal.setBackground(Color.gray);
            //p.add(heal);

            frame2.setLayout(new GridLayout(0,4));
            frame2.setVisible(true);

        }

        if(select.getSelectedItem().toString().equals("G.O.A.T."))
        {
            String input = JOptionPane.showInputDialog(null,"Character Name?");

            list.add(new Character("goat"));
            Character c = list.get(list.size()-1);

            c.p.setBackground(Color.yellow.darker());
            c.p.setLayout(new GridLayout(7,0));
            frame2.add(c.p);

            c.name1.setText("("+x+") "+input + " (G.O.A.T.)");
            c.name1.setFont(new Font("Verdana", Font.PLAIN, 18));
            c.name1.setForeground(Color.white);
            c.p.add(c.name1);

            c.healthl.setText("Health - "+ c.getHealth());
            c.healthl.setForeground(Color.green);
            c.healthl.setFont(new Font("Verdana", Font.PLAIN, 15));
            c.p.add(c.healthl);

            c.damage.setText("Damage - 2x");
            c.damage.setForeground(Color.white);
            c.p.add(c.damage);

            c.speed.setText("Speed - 2x");
            c.speed.setForeground(Color.white);
            c.p.add(c.speed);

            c.range.setText("Range - 8");
            c.range.setForeground(Color.white);
            c.p.add(c.range);

            c.hitSpeed.setText("Hit Speed - 2x");
            c.hitSpeed.setForeground(Color.white);
            c.p.add(c.hitSpeed);

            //attack.addActionListener(this);
            //attack.setBackground(Color.gray);
            //p.add(attack);

            //heal.addActionListener(this);
            //heal.setBackground(Color.gray);
            //p.add(heal);

            frame2.setLayout(new GridLayout(0,4));
            frame2.setVisible(true);

        }
    }
}

