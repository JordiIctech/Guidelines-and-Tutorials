import com.amazonaws.auth.{AWSStaticCredentialsProvider, BasicAWSCredentials}
import com.amazonaws.regions.Regions
import com.amazonaws.services.s3.model.GetObjectRequest
import com.amazonaws.services.s3.{AmazonS3, AmazonS3ClientBuilder}
import java.io.File

object S3Download extends App{
/*
  val AccessKeyImp = hidekeys.AccessKey
  val SecretKeyImp = hidekeys.SecretKey
  val bucketName = "jorditestbucket1"

  val spark: SparkSession = SparkSession.builder()
    .master("local[1]")
    .appName("SparkByExamples.com")
    .getOrCreate()
  // Replace Key with your AWS account key (You can find this on IAM
  spark.sparkContext
    .hadoopConfiguration.set("fs.s3a.access.key", s"$AccessKeyImp")
  // Replace Key with your AWS secret key (You can find this on IAM
  spark.sparkContext
    .hadoopConfiguration.set("fs.s3a.secret.key", s"$SecretKeyImp")
  spark.sparkContext
    .hadoopConfiguration.set("fs.s3a.endpoint", "s3.amazonaws.com")

  var df = spark.read.format("csv").option("header", "true").load("s3://jorditestbucket1/TestFile1.csv")
  df.show(false)
  df.printSchema()
*/
  
  //do not actually upload your keys to Github, these are not my actual keys
  val AccessKeyImp = hidekeys.AccessKey
  val SecretKeyImp = hidekeys.SecretKey
  val bucketName = "jorditestbucket1"

  val creds:BasicAWSCredentials = new BasicAWSCredentials(AccessKeyImp, SecretKeyImp);
  val client:AmazonS3 = AmazonS3ClientBuilder.standard().withCredentials(new AWSStaticCredentialsProvider(creds)).withRegion(Regions.US_EAST_1).build()

  client.getObject(new GetObjectRequest(bucketName, "TestFile1.csv"),
    (new File("C:\\inputs\\inputproject3\\TestFile1.csv")))

  client.getObject(new GetObjectRequest(bucketName, "TestFile2.JSON"),
    (new File("C:\\inputs\\inputproject3\\TestFile2.JSON")))

}
