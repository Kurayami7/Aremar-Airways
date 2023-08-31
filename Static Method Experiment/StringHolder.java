import java.util.ArrayList;

// Class 3

public class StringHolder {
    private ArrayList<String> list; // A declaration of an instance variable in a Java class. An ArrayList is a class in Java that provides an implementation of a dynamic array

    // Constructor
    public StringHolder() {
        list = new ArrayList<String>(); // Initializing the list instance variable from line 6
    }

    // This is a method that takes in a string to add to the dynamic list above
    public void addToList(String str) {
        list.add(str);
    }

    // A method to return a string version of the list of substrings. By default, if an object's class does not override the toString() method, the method inherited from the Object class is used, which returns a string that consists of the class name, an "@" symbol, and the object's hash code in hexadecimal format, which is not helpful
    public String toString() {
        return list.toString();
    }
}
