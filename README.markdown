# Haversine Benchmarks

Read about it: http://tjsingleton.name/2010/06/haversine-formula-in-ruby/.

`gem install RubyInline`

## Benchmark Results

<pre>
Rehearsal ------------------------------------------
Ruby    10.290000   0.080000  10.370000 ( 11.123243)
Inline   0.620000   0.010000   0.630000 (  0.662579)
-------------------------------- total: 11.000000sec

             user     system      total        real
Ruby    10.280000   0.090000  10.370000 ( 11.247408)
Inline   0.620000   0.000000   0.620000 (  0.679327)
</pre>
