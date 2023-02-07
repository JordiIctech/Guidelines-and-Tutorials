import org.apache.log4j.{Level, Logger}
import org.apache.spark.sql.SparkSession
import scala.Console.{GREEN, RESET}
import scala.io.{BufferedSource, Source}
import org.apache.spark.sql.DataFrame



object S3Initiation extends App{

  val AccessKeyImp: String = hidekeys.AccessKey
  val SecretKeyImp: String = hidekeys.SecretKey
  val bucketName = "jorditestbucket1"

  class spark (){

    System.setProperty("hadoop.home.dir", "C:\\hadoop3")
    val spark: SparkSession = SparkSession.builder()
      .appName("appName")
      .config("spark.master", "local[*]")
      .enableHiveSupport()
      .config("spark.hadoop.fs.s3a.access.key", AccessKeyImp)
      .config("spark.hadoop.fs.s3a.secret.key", SecretKeyImp)
      .config("spark.hadoop.fs.s3a.impl", "org.apache.hadoop.fs.s3a.S3AFileSystem")
      .config("spark.hadoop.fs.s3a.aws.credentials.provider", "org.apache.hadoop.fs.s3a.SimpleAWSCredentialsProvider")
      .getOrCreate()
    //spark.sparkContext.setLogLevel("ERROR")

    Logger.getLogger("org").setLevel(Level.OFF)
    Logger.getLogger("aka").setLevel(Level.OFF)
    //PropertyConfigurator.configure("log4j.properties")
    val logger: Logger = org.apache.log4j.Logger.getRootLogger
    //println(" spark session")
    logger.info(s"$GREEN Created Spark Session$RESET")

    val session = new spark()

  }
}
