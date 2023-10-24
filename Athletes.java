
/**
 * Write a description of class Athletes here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
import java.util.ArrayList;

public class Athletes
{
  private double time1;
  private double time2;
  private double time3;
  private double time4;
  private double time5;
  private String name;
  
  public Athletes()
  {
      time1 = 0;
      time2 = 0;
      time3 = 0;
      time4 = 0;
      time5 = 0;
      name = "Standard";
  }
  
  public Athletes(double time1,double time2, double time3, double time4, double time5, String name)
  {
      this.time1 = time1;
      this.time2 = time2;
      this.time3 = time3;
      this.time4 = time4;
      this.time5 = time5;
      this.name = name;
  }
  
  public String toString()
  {
      return name + "\n" + "#1 - " + time1 +"\n#2 - " +  time2 +"\n#3 - " + time3 + "\n#4 - " + time4 + "\n#5 - " + time5 ;
  }
  
  public double averageTime()
  {
      return (time1+time2+time3+time4+time5)/5.0;
  }
  
 
  //Accessor Method for each time and name of Athletes objects
  public double getTime1()
  {
      return time1;
  }
  
  public double getTime2()
  {
      return time2;
  }
  
  public double getTime3()
  {
      return time3;
  }
  
  public double getTime4()
  {
      return time4;
  }
  
  public double getTime5()
  {
      return time5;
  }
  
  public String getName()
  {
      return name;
  }
  // Mutator method for each time and name of Athlete objects
  public void setTime1(double time1)
  {
      this.time1 = time1;
  }
  
  public void setTime2(double time2)
  {
      this.time2 = time2;
  }
 
  public void setTime3(double time3)
  {
      this.time3 = time3;
  }
  
  public void setTime4(double time4)
  {
      this.time4 = time4;
  }
  
  public void setTime5(double time5)
  {
      this.time5 = time5;
  }
  
  public void setName(String name)
  {
      this.name = name;
  }
  
  
}


/*Create a small project of your choosing. It can be anything you'd like but 
  it must meet the following requirements:

- Must contain two classes (one must be used as an instance field in the other 
        similar to our CourseCatalog lab)

- Each class must contain at least two instance fields

- At least one instance field should be an ArrayList 
       (this can be in whichever class you choose)

- Include accessor and mutator methods for each instance field in both classes

- Have at least one method in each class that does some additional processing 
(printing data, transforming data, calculations, etc.)
 
Make sure that this project is completed in BlueJ and runs properly. 
 Because you are creating this project on your own and I will not know 
 how you intend for it to behave,  you must document your code 
 (include comments in your classes and methods as appropriate). 
 Turn in your entire project in a .zip file
 */
