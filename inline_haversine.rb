require "inline"

class HaversineInline
  inline :C do |builder|
    builder.include '<cmath>'
    builder.add_compile_flags '-x c++', '-lstdc++'
    builder.add_static "RADIAN_PER_DEGREE", Math::PI / 180.0, 'double'
    builder.add_static "EARTH_RADIUS", 3963.19, 'double'

    builder.c_singleton %Q[
      double distance(double lat1, double lng1, double lat2, double lng2) {

      double lat1_radians = lat1 * RADIAN_PER_DEGREE;
      double lat2_radians = lat2 * RADIAN_PER_DEGREE;

      double distance_lat = (lat2-lat1) * RADIAN_PER_DEGREE;
      double distance_lng = (lng2-lng1) * RADIAN_PER_DEGREE;

      double a = pow(sin(distance_lat/2.0), 2.0) + cos(lat1_radians) * cos(lat2_radians) * pow(sin(distance_lng/2.0), 2.0);
      double c = 2.0 * atan2(sqrt(a), sqrt(1.0-a));

      double distance = EARTH_RADIUS * c;
      return distance;
    }]
  end
end