class MyFirstRuby
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'

  page = Nokogiri::HTML(open("http://www.jianshu.com/"))

  f=File.new(File.join("Test.html"), "w+")


  links = page.css("title")

  f.puts("<html>
<body><head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
</head> ")
  for i in 0..links.length
    puts "###"+page.css("li")[i].text
    f.puts("<title>"+page.css("li")[i].text+"</title>")
  end
  f.puts("</body>
</html>")

end