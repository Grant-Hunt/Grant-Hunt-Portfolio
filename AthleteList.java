
/**
 * AthleteList creates an array of Athlete objects and performs several functions using those objects.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
import java.util.ArrayList;
import java.io.IOException;
public class AthleteList
{
    private ArrayList<Athletes> aList;
    private Athletes a;
    private Athletes b;
    private Athletes c;
    private Athletes d;
    public AthleteList()
    {
        aList = new ArrayList<Athletes>();

        a = new Athletes(23.31,23.29,22.73,23.66,23.30,"Rickey");
        aList.add(a);

        Athletes b = new Athletes(21.91,22.17,22.11,22.15,22.29,"Grant");
        aList.add(b);

        Athletes c = new Athletes(23.05,22.37,23.13,22.78,23.50,"Ayo");
        aList.add(c);

        Athletes d = new Athletes(22.36,22.71,22.27,22.46,22.89,"Colin");
        aList.add(d);

        //The AthleteList Contructor instantiates the 4 Athletes objects using the Athletes Contructor and then adds each of the objects to aList
        // The double values entered into the contructor of Athletes represent each Athletes' 5 most recent times ran in the 200m dash
        // time1 represents the most recent and time5 represents the furthest back
        
    }

    //Accessor Methods

    public ArrayList getAList()
    {
        return aList;
    }

    public Athletes getA()
    {
        return a;
    }

    public Athletes getB()
    {
        return b;
    }

    public Athletes getC()
    {
        return c;
    }

    public Athletes getD()
    {
        return d;
    }

    // Mutators

    public void setAList(ArrayList aList)
    {
        this.aList = aList;
    }

    public void setA(Athletes a)
    {
        this.a = a;
    }

    public void setB(Athletes b)
    {
        this.b = b;
    }

    public void setC(Athletes c)
    {
        this.c = c;
    }

    public void setD(Athletes d)
    {
        this.d = d;
    }

// printAll prints each Athlete's average time and the average for all athletes.
    
    public void printAll()
    {
        System.out.println("Athlete 200 m Performance");
        System.out.println("----------------------------");
        for(int i = 0; i<aList.size();i++)
        {
            System.out.println(aList.get(i));
            System.out.println("Ave: " + aList.get(i).averageTime());
            System.out.println("----------------------------");
        }
        System.out.println("Average for All Athletes: " + allAthleteAverageTime());
        System.out.println("----------------------------");
    }

    public double allAthleteAverageTime()
    {
        double sum = 0;
        for(int i = 0; i<aList.size(); i++)
        {
            sum += aList.get(i).getTime1()+ 
            aList.get(i).getTime2()+ 
            aList.get(i).getTime3()+
            aList.get(i).getTime4()+
            aList.get(i).getTime5();
        }
        return (double)sum/(aList.size()*5);
    }

    public void addAthlete(double time1,double time2, double time3, double time4,double time5, String name)
    {
        aList.add(new Athletes(time1,time2,time3,time4,time5,name));
    }

    public void removeAthlete(int index)
    {
            aList.remove(index); 
        }
    }
          

    



