/*
 * The second class, or the test harness to test the first class (SuperString)
 */

public class SuperStringTestHarness {
    public static void main (String[] args) {
        String stringOne = "SPADINACARIMEALGAMETUBE";
        SuperString.printWords(stringOne);
        String stringTwo = "GLUSOZTALLPDATEEBIKELONG";
        SuperString.printWords(stringTwo);

        String test = "SPADINACARIMEALGAMETUBE";
        StringHolder substrings = SuperString.breakToSubstrings(test, 4, 'A');
        System.out.println(substrings.toString());
        
        String[] stringArray = {"cat", "dog", "elephant", "lion"};
        String longestString = SuperString.findLongestString(stringArray);
        System.out.println(longestString);
}
}
