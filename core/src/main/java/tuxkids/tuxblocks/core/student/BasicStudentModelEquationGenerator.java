package tuxkids.tuxblocks.core.student;

import java.util.Random;

import tuxkids.tuxblocks.core.solve.blocks.Equation;
import tuxkids.tuxblocks.core.solve.blocks.EquationGenerator.EGenerator;
import tuxkids.tuxblocks.core.solve.blocks.NumberBlock;
import tuxkids.tuxblocks.core.solve.blocks.VariableBlock;

public class BasicStudentModelEquationGenerator {
	
	
	protected static int randomPlusOrMinus(Random rand, int bounds) {
		return rand.nextInt(bounds * 2 + 1) - bounds;
	}
	
	protected static int randomNonZero(Random rand, int bounds) {
		return rand.nextInt(bounds - 1)+1;
	}
	
	public static EGenerator firstLevelAS() {
		return new EGenerator() {
			Random random = new Random();
			@Override
			public Equation generate() {
				
				if (random.nextBoolean()) {
					return generateAddition();
				}
				return generateSubtraction();
				
			}
			private Equation generateSubtraction() {
				int firstNum = randomNonZero(random, 30);
				int secondNum = randomNonZero(random, firstNum);
				
				return new Equation.Builder().
						addLeft(new VariableBlock("x")).
						addRight(new NumberBlock(firstNum).minus(secondNum)).
						createEquation();
			}
			
			private Equation generateAddition() {
				int answer = random.nextInt(30);
				int addend = random.nextInt(31-answer);
				return new Equation.Builder().
				addLeft(new VariableBlock("x")).
				addRight(new NumberBlock(answer - addend).plus(addend)).
				createEquation();
			}
		};
	}

	/**
	 * Positive factors, x is already isolated, small numbers
	 * @return
	 */
	public static EGenerator firstLevelMD() {
		return new EGenerator() {
			Random random = new Random();
			@Override
			public Equation generate() {
				
				if (random.nextBoolean()) {
					return generateMultiplication();
				}
				return generateDivision();
				
			}
			private Equation generateDivision() {
				int answer = randomNonZero(random, 6);
				int divisor = randomNonZero(random, 5) + 1;
				
				return new Equation.Builder().
						addLeft(new VariableBlock("x")).
						addRight(new NumberBlock(answer*divisor).over(divisor)).
						createEquation();
			}
			private Equation generateMultiplication() {
				int firstFactor = random.nextInt(6);
				int secondFactor = random.nextInt(6);
				return new Equation.Builder().
				addLeft(new VariableBlock("x")).
				addRight(new NumberBlock(firstFactor).times(secondFactor)).
				createEquation();
			}
		};
	}

	public static EGenerator singleDragAS() {
		// TODO Auto-generated method stub
		return null;
	}

	public static EGenerator firstLevelMDAS() {
		return new EGenerator() {
			Random random = new Random();
			@Override
			public Equation generate() {
				
				if (random.nextBoolean()) {
					return generateFirstRoundAddition();
				}
				return generateFirstRoundSubtraction();
				
			}
			private Equation generateFirstRoundSubtraction() {
				int firstNum = randomNonZero(random, 10);
				int secondNum = randomNonZero(random, firstNum);
				int factor = randomNonZero(random, 5) + 1;
				
				return new Equation.Builder().
						addLeft(new VariableBlock("x")).
						addRight(new NumberBlock(firstNum).minus(secondNum).times(factor)).
						createEquation();
			}
			
			private Equation generateFirstRoundAddition() {
				int answer = randomNonZero(random, 10);
				int secondNum = randomNonZero(random, 10-answer);
				int factor = randomNonZero(random, 6);
				
				return new Equation.Builder().
						addLeft(new VariableBlock("x")).
						addRight(new NumberBlock(answer-secondNum).plus(secondNum).times(factor)).
						createEquation();
			}
		};
	}

}