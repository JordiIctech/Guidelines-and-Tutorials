object UsefulFunctions {
  println("----------Start of Document----------") /* Prints First, main would print last.*/
  import scala.collection.mutable.ArrayBuffer
    def main(args:Array[String]):Unit={

      def functionExamp(a:Int,b:Int):Int={
        if(b == 0)
          0
        else
          a+functionExamp(a,b-1)
      }

      var result= functionExamp(15,2) // You could call this function before you define it if they are in object area.
      println(result)


      val a = ArrayBuffer[Int]() // Defines the array without having to put anything in it.
      a +=1
      a ++=Array(6,7,8)

      println(a)


      import scala.collection.mutable.ListBuffer

      var fruits = new ListBuffer[String]()  // Defines a list without having to put anything in it.
      fruits += "Apple"
      fruits ++= List("strawberry","kiwi","banana") // To define elements in a list, List must be stated beforehand.
      fruits --= List("Apple","kiwi")
      val fruitslists = fruits // Sends one list into another list. Can write fuits.toList but not needed.

      println(fruitslists)


      val originalList1 = List(7,8,4,3,2)
      val newList1 = originalList1.filter(_>3) // Filters out all below 3.

      println(newList1)

      val ls = List("Mary", "had", "a", "little", "lamb")  // Create a list and find index for a value.
      println(ls.indexOf("little")) // Could also say startwith to get first item that starts with a value.

      println(ls(0))  // Prints value in index.


      val a2 = (1,4, "Bob", "Jack")  // This is a tuple and can only be addressed with a2._2
      println(a2._2) // Calls a tuple.


      val mapping = Map("Vishal"-> "Kumar","Vijay" -> "Verma") // Similar to dictionaries in python
      mapping.keys.foreach{i=>println(i+" "+mapping(i))} // Creates a foreach loop, gets a key and values.
      println(mapping.contains("Vishal")) // Check if a value exits. Format is Value -> Key

      var changels = List("Me","You", "I", "Myself", "Them", "Us") // Make variable list to be able to change
      println(changels)

      changels = changels.updated(2,"Myself")  // ("Index", "New Value")
      println(changels)

      changels = changels.map { case "Myself" => "Me"; case x => x } // Everytime there is a value replace with another.
      println(changels)    // Every Myself being replaced with Me. The xs are needed too.
    }

  }
