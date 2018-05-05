package project;

import java.io.*;
import java.util.Arrays;
import java.util.Collections;

/**
 * Created by Zosit on 5/4/2018.
 * Takes a csv file, and orders it alphabetically.
 */

public class WordOrder {

    private String targetInput;


    public WordOrder(String targetInput){
        this.targetInput = targetInput;
    }


    public void SortToTargetFile(String targetOutput) {
        try {
            FileWriter writer = new FileWriter(targetOutput, false);
            FileReader reader = new FileReader(targetInput);
            BufferedReader bufferedReader = new BufferedReader(reader);

            String inputLine = bufferedReader.readLine();

            bufferedReader.close();

            if(inputLine != null) {
                inputLine = inputLine.replace("\n", "").replace("\r", "");

                String wordArray[] = inputLine.split(",");
                for (int i = 0; i < wordArray.length; i++) {
                    wordArray[i] = wordArray[i].trim();
                }

                Arrays.sort(wordArray, Collections.reverseOrder());


                for (String word: wordArray) {

                    if (word.equals(wordArray[0])) {
                        writer.write(word);
                    } else {
                        writer.write("," + word);
                    }
                }

                writer.write(String.format("%n"));
            }
            writer.close();

        } catch (IOException exception) {
            exception.printStackTrace();
        }
    }
}
