import com.amazonaws.auth.{AWSStaticCredentialsProvider, BasicAWSCredentials}
import com.amazonaws.regions.Regions
import com.amazonaws.services.s3.model.GetObjectRequest
import com.amazonaws.services.s3.{AmazonS3, AmazonS3ClientBuilder}
import java.io.File

object S3Upload extends App {
  //do not actually upload your keys to Github, these are not my actual keys
  val AccessKeyImp = hidekeys.AccessKey
  val SecretKeyImp = hidekeys.SecretKey
  val bucketName = "jorditestbucket1"

  val creds:BasicAWSCredentials = new BasicAWSCredentials(AccessKeyImp, SecretKeyImp);
  val client:AmazonS3 = AmazonS3ClientBuilder.standard().withCredentials(new AWSStaticCredentialsProvider(creds)).withRegion(Regions.US_EAST_1).build()

  client.putObject(bucketName,"TestFile1.csv",new File("C:\\inputs\\inputproject2final\\time_series_covid_19_confirmed_US.csv"))
  println(client.getUrl(bucketName,"TestFile1.csv"))
  client.getObject(new GetObjectRequest(bucketName, "TestFile1.csv"),
    (new File("TestFile1.csv")))


  client.putObject(bucketName,"TestFile2.JSON",new File("C:\\outputJson\\DailyNewDeathsByCountry.JSON"))
  println(client.getUrl(bucketName,"TestFile2.JSON"))
  client.getObject(new GetObjectRequest(bucketName, "TestFile2.JSON"),
    (new File("TestFile2.JSON")))

}
