import java.util.*;
public class PrimeFactors {
	public static List<Integer> generate(int number) {
		List<Integer> primes = new ArrayList<Integer>();
		int divisor = 2;
		while (number > 1) {
			while (number%divisor == 0) {
				primes.add(divisor);
				number/=divisor;
			}
			divisor++;
		}
		return primes;
	}
}
