<?php header("Content-type:text/xml;charset=utf-8");?>

<rss version="2.0" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:atom="http://www.w3.org/2005/Atom">

	<channel>
	
	<title>Bokkatalog</title>
	<link>http://www.itn.liu.se/</link>
  <atom:link href="http://annaflisberg.se/dev/tv/rss.php" rel="self" type="application/rss+xml" />
	<description>En bokkatalog.</description>
  <dc:language>en</dc:language>
  <dc:publisher>LiU/ITN</dc:publisher>
  <dc:creator>Teodor</dc:creator>

 <?php  

    $link = @mysql_connect($host, $username, $password) or die("Could not connect");
    mysql_select_db($name) or die("Could not select database");
    $returnstring ="";
    
    $query = "SELECT * FROM bookcatalog ORDER BY publish_date DESC";
		 
    $result = @mysql_query($query) or die("Query failed");
        
    while ($line = mysql_fetch_object($result)) {

        $title = $line->title; 
        $author = $line->author;
        $link = $line->link;
        $publish_date = $line->publish_date;
        $description = $line->description;
        
	    $title = preg_replace("/&/","&amp;", $title);
	    $link = preg_replace("/&/","&amp;", $link);
	    $link = htmlentities($link, ENT_QUOTES);
	    $description = preg_replace("/&/","&amp;", $description);
	    $publish_date = date("c",strtotime($publish_date));

        $returnstring = $returnstring . "<item>";
        $returnstring = $returnstring . "<title>$title</title>"; 
        $returnstring = $returnstring . "<link>$link</link>";
        $returnstring = $returnstring . "<description>$description</description>";
        $returnstring = $returnstring . "<dc:creator>$author</dc:creator>";
        $returnstring = $returnstring . "<dc:date>$publish_date</dc:date>";
        $returnstring = $returnstring . "</item>"; 
    }
    
    print utf8_encode($returnstring); 
    ?>

	</channel>
</rss>
