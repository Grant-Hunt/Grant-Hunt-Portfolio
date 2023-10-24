
/**
 * Write a description of class numbersorting here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class numbersorting
{
    int[] array = new int[10];

    public numbersorting()
    {
        array[0]=10;
        array[1]=9;
        array[2]=8;
        array[3]=7;
        array[4]=6;
        array[5]=5;
        array[6]=4;
        array[7]=3;
        array[8]=2;
        array[9]=1;

    }

    public void arraySorter()
    {  
        boolean y = false;
        int b = 0;
        int tracker = 0;

        while(y==false)
        {   System.out.println("-----"+tracker);
            for(int i = 0; i<array.length; i++)
            {
                System.out.println(array[i]);
            }
            for(int j = 0; j<array.length-1;j++)
            {
                if(array[j]>array[j+1])
                {
                    int x = array[j+1];
                    array[j+1]=array[j];
                    array[j]=x;
                }
            }

            for(int c = 0; c<array.length-1;c++)
            {
                if(array[c]<array[c+1])
                {
                    b++;
                }
                
            }
            if(b==9)
            {
                y=true;
            }
            else
            {
              b=0;  
            }
            tracker++;
        }

    }
    
    public void arraySorter2()
    {
        int tracker = 0;
        for(int k =0; k<array.length;k++)
        {
              System.out.println("-----"+tracker);
            for(int i = 0; i<array.length; i++)
            {
                System.out.println(array[i]);
            }
            for(int j = 0; j<array.length-1;j++)
            {
                if(array[j]>array[j+1])
                {
                    int x = array[j+1];
                    array[j+1]=array[j];
                    array[j]=x;
                }
            }
            tracker++;

        }
    }
}
