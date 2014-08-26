class XmlDocument
  def initialize(indent=false)
    @indent=indent
    @level=0
  end
  
  def send(tag, options = {})
    if @indent
      return send_pretty(tag, options) {yield} if block_given?
      send_pretty(tag, options)
    else
      return send_ugly(tag, options) {yield} if block_given?
      send_ugly(tag, options)
    end
  end
  
  def send_ugly(tag, options = {})
    s = "<#{tag}"
  
    if options[:name]
      s << " name='#{options[:name]}'"
    end
    
    if options[:be]
      s << " be='#{options[:be]}'"
    end
    
    if block_given?
      s << ">"
      s << yield
      s << "</#{tag}>"
    else
      s << "/>"
    end
  end
  
  def send_pretty(tag, options = {})
    s = "  " * @level
    s << "<#{tag}"
  
    if options[:name]
      s << " name='#{options[:name]}'"
    end
    
    if options[:be]
      s << " be='#{options[:be]}'"
    end
    
    if block_given?
      s << ">\n"
      @level = @level.next
      s << yield
      @level = @level.pred
      s << "  " * @level
      s << "</#{tag}>\n"
    else
      s << "/>\n"
    end
  end
  
  def hello(options = {})
    tag = "hello"
    return send(tag, options) {yield} if block_given?
    send(tag, options)
  end
  
  def goodbye(options = {})
    tag = "goodbye"
    return send(tag, options) {yield} if block_given?
    send(tag, options)
  end
  
  def come_back(options = {})
    tag = "come_back"
    return send(tag, options) {yield} if block_given?
    send(tag, options)
  end
  
  def ok_fine(options = {})
    tag = "ok_fine"
    return send(tag, options) {yield} if block_given?
    send(tag, options)
  end
end