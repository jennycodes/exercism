class Gigasecond
  VERSION = 1
  def self.from(start_date)
    msg = 'Must be entered in (Time.utc(1986, 7, 20, 0, 0, 0) format.'
    raise ArgumentError, msg unless start_date.instance_of?(Time)
    start_date + 10**9
  end
end
