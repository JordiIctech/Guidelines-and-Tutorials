import scala.math._
object InitialScalaObjects {
  println("----------Start of Document----------") /* Prints First, main would print last.*/

  def main(args:Array[String]): Unit = {  /* This line must be exactly this to function.*/

    val laugh: String = "HEHEHE"
    println(f"Very funny indeed $laugh!")

    println("The Max is " + max(30, 45))  /* Prints max, which is a function of the math module.*/


    def sum(a:Int,b:Int):Unit={ /*Defined sum*/
      println("The sum solution is " + a+b)
    }
    sum(2,5)

    for (i<-1 to 3; x=4-i;j<-x to 3) println(f"Iteration $i times 10 with $j equals " + (10*i+j)) /*Compressed for loop.*/

    println("Square root unrounded: " + sqrt(23))
    var roundmethod1 = BigDecimal(sqrt(23)).setScale(2, BigDecimal.RoundingMode.HALF_UP).toDouble /*Var and val same purpose.*/

    val roundmethod2 = (rint(sqrt(23) * 100) / 100) /* rint rounds to nearest integer, removing decimals. So
                                                      adding the 2 decimals and then removing produces same result*/
    println("Method 1: " + roundmethod1)

    println("Method 2: " + roundmethod2)

  }
}
