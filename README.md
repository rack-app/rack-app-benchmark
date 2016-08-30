
## [Benchmarking](https://github.com/rack-app/rack-app-benchmark)

This is a repo that used for measure Rack::App project speed in order keep an eye on the performance in every release.

the benchmarking was taken on the following hardware specification:
* Processor: 2,7 GHz Intel Core i5
* Memory: 16 GB 1867 MHz DDR3
* Ruby: ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin15]


### Endpoint to be call type: static


#### number of declared endpoints: 100

| name                   | version                | current / fastest      | real                   |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| rack-app               | 4.0.0                  | 1.0                    | 2.2053215187043942e-05 |
| rack-app               | 5.2.0                  | 1.185                  | 2.6140331494390213e-05 |
| rack-app               | 5.0.0.rc3              | 1.387                  | 3.0592694940592784e-05 |
| ramaze                 | 2012.12.08             | 1.468                  | 3.236885466806858e-05  |
| hobbit                 | 0.6.1                  | 2.996                  | 6.607205038890137e-05  |
| brooklyn               | 0.0.1                  | 5.243                  | 0.00011562206838279088 |
| nyny                   | 3.4.3                  | 5.272                  | 0.00011626420279498706 |
| nancy                  | 0.3.0                  | 5.649                  | 0.00012458588462322884 |
| roda                   | 2.17.0                 | 11.424                 | 0.00025192757799231974 |
| scorched               | 0.25                   | 12.728                 | 0.0002807019599946191  |
| sinatra                | 1.4.7                  | 21.169                 | 0.0004668393424013356  |
| grape                  | 0.17.0                 | 25.941                 | 0.0005720832234016178  |
| rails                  | 5.0.0                  | 33.234                 | 0.0007329187002032537  |
| camping                | 2.1.532                | 39.699                 | 0.0008754866444039887  |
| cuba                   | 3.8.0                  | 54.196                 | 0.001195195165998367   |


#### number of declared endpoints: 200

| name                   | version                | current / fastest      | real                   |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| rack-app               | 4.0.0                  | 1.0                    | 2.0975966006515527e-05 |
| rack-app               | 5.0.0.rc3              | 1.331                  | 2.7910616544709345e-05 |
| ramaze                 | 2012.12.08             | 1.635                  | 3.428578134722969e-05  |
| rack-app               | 5.2.0                  | 1.715                  | 3.597621549852152e-05  |
| hobbit                 | 0.6.1                  | 5.774                  | 0.00012111241794192307 |
| nyny                   | 3.4.3                  | 6.256                  | 0.0001312243201769994  |
| brooklyn               | 0.0.1                  | 7.892                  | 0.00016553755286437721 |
| nancy                  | 0.3.0                  | 8.035                  | 0.00016853173999115112 |
| scorched               | 0.25                   | 16.472                 | 0.00034551883279343996 |
| roda                   | 2.17.0                 | 18.585                 | 0.0003898446554958448  |
| sinatra                | 1.4.7                  | 23.695                 | 0.00049703585421667    |
| grape                  | 0.17.0                 | 35.838                 | 0.0007517377566080116  |
| rails                  | 5.0.0                  | 38.478                 | 0.0008071176647907551  |
| camping                | 2.1.532                | 78.611                 | 0.001648932262207445   |
| cuba                   | 3.8.0                  | 118.18                 | 0.002478941784985623   |


#### number of declared endpoints: 500

| name                   | version                | current / fastest      | real                   |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| rack-app               | 4.0.0                  | 1.0                    | 1.738689960911794e-05  |
| rack-app               | 5.0.0.rc3              | 1.392                  | 2.4196517306967076e-05 |
| rack-app               | 5.2.0                  | 1.556                  | 2.704817050835023e-05  |
| ramaze                 | 2012.12.08             | 2.096                  | 3.645151584836119e-05  |
| nyny                   | 3.4.3                  | 10.221                 | 0.00017771126960870065 |
| hobbit                 | 0.6.1                  | 16.745                 | 0.0002911501538008381  |
| nancy                  | 0.3.0                  | 18.346                 | 0.00031898255199195805 |
| brooklyn               | 0.0.1                  | 22.078                 | 0.00038385965437629454 |
| scorched               | 0.25                   | 28.713                 | 0.0004992247390328191  |
| sinatra                | 1.4.7                  | 37.46                  | 0.0006513089845888649  |
| rails                  | 5.0.0                  | 45.446                 | 0.000790164584410372   |
| roda                   | 2.17.0                 | 53.5                   | 0.0009301925824984316  |
| grape                  | 0.17.0                 | 103.116                | 0.001792874348000587   |
| camping                | 2.1.532                | 242.614                | 0.004218309565819746   |
| cuba                   | 3.8.0                  | 358.594                | 0.006234845724818463   |


#### number of declared endpoints: 1000

| name                   | version                | current / fastest      | real                   |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| rack-app               | 4.0.0                  | 1.0                    | 2.2711558593436497e-05 |
| rack-app               | 5.2.0                  | 1.043                  | 2.3692931514233133e-05 |
| rack-app               | 5.0.0.rc3              | 1.08                   | 2.45259745553345e-05   |
| ramaze                 | 2012.12.08             | 1.417                  | 3.218915100539277e-05  |
| nyny                   | 3.4.3                  | 15.192                 | 0.0003450254736002548  |
| nancy                  | 0.3.0                  | 25.357                 | 0.0005758868963690489  |
| hobbit                 | 0.6.1                  | 25.653                 | 0.0005826261710142791  |
| brooklyn               | 0.0.1                  | 28.274                 | 0.0006421569535974391  |
| rails                  | 5.0.0                  | 38.647                 | 0.000877726650587282   |
| scorched               | 0.25                   | 44.991                 | 0.0010218214225954556  |
| sinatra                | 1.4.7                  | 52.212                 | 0.0011858243922470654  |
| roda                   | 2.17.0                 | 81.4                   | 0.001848730839497972   |
| grape                  | 0.17.0                 | 212.189                | 0.00481913809601665    |
| camping                | 2.1.532                | 376.125                | 0.00854238839158827    |
| cuba                   | 3.8.0                  | 548.372                | 0.012454374452400363   |

### Endpoint to be call type: dynamic


#### number of declared endpoints: 100

| name                   | version                | current / fastest      | real                   |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| ramaze                 | 2012.12.08             | 1.0                    | 3.5534458540494416e-05 |
| rack-app               | 4.0.0                  | 1.048                  | 3.7236363370898984e-05 |
| rack-app               | 5.0.0.rc3              | 1.155                  | 4.103595770251681e-05  |
| rack-app               | 5.2.0                  | 2.496                  | 8.869974099798014e-05  |
| hobbit                 | 0.6.1                  | 3.337                  | 0.00011857437202706835 |
| brooklyn               | 0.0.1                  | 3.445                  | 0.0001224283379153493  |
| nancy                  | 0.3.0                  | 3.666                  | 0.00013025841524358072 |
| nyny                   | 3.4.3                  | 3.78                   | 0.00013432033741847768 |
| roda                   | 2.17.0                 | 6.3                    | 0.00022386371748871548 |
| scorched               | 0.25                   | 8.406                  | 0.000298717098613243   |
| grape                  | 0.17.0                 | 15.478                 | 0.0005500056585995111  |
| sinatra                | 1.4.7                  | 16.998                 | 0.0006040298487991155  |
| rails                  | 5.0.0                  | 22.165                 | 0.0007876135203987838  |
| camping                | 2.1.532                | 22.789                 | 0.0008098106166115665  |
| cuba                   | 3.8.0                  | 34.493                 | 0.0012257058174116335  |


#### number of declared endpoints: 200

| name                   | version                | current / fastest      | real                   |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| rack-app               | 4.0.0                  | 1.0                    | 3.152994681149831e-05  |
| ramaze                 | 2012.12.08             | 1.113                  | 3.5078892319387155e-05 |
| rack-app               | 5.2.0                  | 1.29                   | 4.067434348689818e-05  |
| rack-app               | 5.0.0.rc3              | 1.339                  | 4.220830150544945e-05  |
| nyny                   | 3.4.3                  | 4.919                  | 0.00015509883558843945 |
| brooklyn               | 0.0.1                  | 5.449                  | 0.00017179677412786055 |
| hobbit                 | 0.6.1                  | 5.689                  | 0.00017937546616886898 |
| nancy                  | 0.3.0                  | 5.696                  | 0.00017960034941787853 |
| scorched               | 0.25                   | 11.3                   | 0.00035629215762016586 |
| roda                   | 2.17.0                 | 12.245                 | 0.00038608330249553823 |
| sinatra                | 1.4.7                  | 12.708                 | 0.00040069518480451166 |
| grape                  | 0.17.0                 | 24.371                 | 0.0007684042081935362  |
| rails                  | 5.0.0                  | 27.469                 | 0.0008661077597877535  |
| camping                | 2.1.532                | 51.656                 | 0.0016287099403795968  |
| cuba                   | 3.8.0                  | 77.74                  | 0.0024511273603885753  |


#### number of declared endpoints: 500

| name                   | version                | current / fastest      | real                   |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| rack-app               | 4.0.0                  | 1.0                    | 3.1318097026084826e-05 |
| rack-app               | 5.2.0                  | 1.17                   | 3.6627349501940925e-05 |
| rack-app               | 5.0.0.rc3              | 1.211                  | 3.7923576366465205e-05 |
| ramaze                 | 2012.12.08             | 1.243                  | 3.894224197817624e-05  |
| nyny                   | 3.4.3                  | 6.447                  | 0.00020191715918479387 |
| nancy                  | 0.3.0                  | 11.142                 | 0.0003489315150072616  |
| brooklyn               | 0.0.1                  | 12.395                 | 0.00038818678800014734 |
| hobbit                 | 0.6.1                  | 12.411                 | 0.00038869086538909813 |
| scorched               | 0.25                   | 17.011                 | 0.0005327441786183138  |
| sinatra                | 1.4.7                  | 22.357                 | 0.0007001654178137472  |
| rails                  | 5.0.0                  | 26.541                 | 0.0008312010978115233  |
| roda                   | 2.17.0                 | 30.019                 | 0.0009401267124921744  |
| grape                  | 0.17.0                 | 56.843                 | 0.0017802212750072754  |
| camping                | 2.1.532                | 133.537                | 0.004182109376439315   |
| cuba                   | 3.8.0                  | 200.403                | 0.006276247910410145   |


#### number of declared endpoints: 1000

| name                   | version                | current / fastest      | real                   |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| rack-app               | 4.0.0                  | 1.0                    | 3.118829259183075e-05  |
| rack-app               | 5.0.0.rc3              | 1.115                  | 3.4787587419237734e-05 |
| rack-app               | 5.2.0                  | 1.212                  | 3.778890748799381e-05  |
| ramaze                 | 2012.12.08             | 1.315                  | 4.1024045684023824e-05 |
| nyny                   | 3.4.3                  | 11.292                 | 0.0003521682374179301  |
| nancy                  | 0.3.0                  | 20.36                  | 0.0006350057255941985  |
| brooklyn               | 0.0.1                  | 20.975                 | 0.0006541606131707966  |
| hobbit                 | 0.6.1                  | 22.976                 | 0.0007165704883867612  |
| rails                  | 5.0.0                  | 28.912                 | 0.0009017235749866629  |
| scorched               | 0.25                   | 35.751                 | 0.0011150118893943162  |
| sinatra                | 1.4.7                  | 39.745                 | 0.001239571293396779   |
| roda                   | 2.17.0                 | 58.764                 | 0.0018327447975026053  |
| grape                  | 0.17.0                 | 152.193                | 0.004746652859402427   |
| camping                | 2.1.532                | 273.593                | 0.008532899961783953   |
| cuba                   | 3.8.0                  | 403.34                 | 0.012579489549412428   |
