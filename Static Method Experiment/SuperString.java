/*
 * Assignment 10 - Class 1 - SuperString
 * Author: Areaf
 * Date: 31 March, 2023
 */

 // Creating a class and having a static method inside
 public class SuperString {
    public static void printWords(String strToCheck) { // Method 1
        String[] words = {"Car", "Spa", "Game", "Long", "Tall", "Date", "Meal", "Bike", "Glue", "Tube"}; // An array
        for (String word : words) { // if "words" is an array of Strings containing {"apple", "banana", "orange"}, then the loop would first assign "apple" to the variable "word", execute the block of code inside the loop for that iteration, then assign "banana" to "word", execute the block again
            if (strToCheck.contains(word)) {
                System.out.println(word.toString());
            }
        } 
    }

    // The second method that takes 3 arguments and breaks them into substrings
    public static StringHolder breakToSubstrings(String str, int length, char ch) {
        StringHolder holder = new StringHolder();
        int theIndex = str.indexOf(ch); // Checking the index where the 3rd parameter can be found in the 1st argument and storing it in a variable
        while (theIndex >= 0) {
            if (theIndex + length <= str.length()) { // Ensuring the length supplied is valid and the value from the index (int) to te length (2nd int) is not longer than the length of the entire string
                holder.addToList(str.substring(theIndex, theIndex+length)); // The length here controls how much longer after the index should be extracted by the substring method.
            }
            theIndex = str.indexOf(ch, theIndex+1); // Finding the next occurence of the char in the main str from the index+1, I don't want it to repeat
        }
        return holder;
    }


    // The third method takes an array of strings and returns the longest string in the array. If the input array is empty, the method returns an empty string.

    public static String findLongestString(String[] arrayInput) {
        String longest = "";
        for (String str : arrayInput) {
            if (str.length() > longest.length()) {
                longest = str;
            }
        }
        return longest;
    }
 }