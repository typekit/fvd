
run lambda { |env| 
  [200, { "Content-Type" => "text/html" }, [File.read("index.html")]]
}