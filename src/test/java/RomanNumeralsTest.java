
import org.junit.Test;

import static org.junit.Assert.*;

public class RomanNumeralsTest {
    RomanNumerals romanNumerals = new RomanNumerals();

    @Test
    public void testRomanToArabian() {
        int actual = romanNumerals.romanToArabian("III");
        int expected = 3;
        assertEquals(expected, actual);
    }

    @Test
    public void testRomanToArabian2() {
        int actual2 = romanNumerals.romanToArabian("LVIII");
        int expected2 = 58;
        assertEquals(expected2, actual2);
    }

    @Test
    public void testRomanToArabian3() {
        int actual3 = romanNumerals.romanToArabian("MCMXCIV");
        int expected3 = 1994;
        assertEquals(expected3, actual3);
    }

}