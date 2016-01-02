require 'pretty_bytes/version'

class PrettyBytes
  def convert(num)
    if num.is_a? Numeric
      neg = num < 0
	    units = ['B', 'kB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB']

	    if neg
	      num = -num
	    end

	    if num < 1
	      return (neg ? '-' : '') + "#{num} B"
	    end

	    exponent = [(Math.log(num) / Math.log(1000)).floor, units.length - 1].min
	    num = "%g" % (num.round(2) / (1000**exponent)).round(2)
	    unit = units[exponent]

	    return (neg ? '-' : '') + "#{num} " + unit

    else
	    return 'Expected a number'
	  end
  end
end
