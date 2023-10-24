
/**
 * Write a description of class CharacterGroup here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
import java.util.ArrayList;
import java.util.Scanner;
public class CharacterGroup
{
    private ArrayList<Character> chars;
    
    public CharacterGroup()
    {
        chars = new ArrayList<Character>();
        
    }
    
    public void addCharacter()
    {
        Scanner input = new Scanner(System.in);
        chars.add(new Character(input.next()));
    }
}
