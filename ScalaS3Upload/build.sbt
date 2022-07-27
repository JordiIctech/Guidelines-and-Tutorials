ThisBuild / version := "0.1.0-SNAPSHOT"

ThisBuild / scalaVersion := "2.13.8"

lazy val root = (project in file("."))
  .settings(
    name := "S3Upload"
  )

libraryDependencies ++= Seq(
  "com.amazonaws" % "aws-java-sdk" % "1.12.239"
)