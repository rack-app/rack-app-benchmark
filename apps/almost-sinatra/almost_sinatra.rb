%w.rack date INT TERM..map{|l|trap(l){$r.stop}rescue require l};$u=Date;$z=($u.new.year + 145).abs;

OPTIONS = {}
$n=Module.new{extend Rack;a,D,S,q=Rack::Builder.new,Object.method(:define_method),/@@ *([^\n]+)\n(((?!@@)[^\n]*\n)*)/m
%w[get post put delete].map{|m|D.(m){|u,&b|a.map(u){run->(e){[200,{"Content-Type"=>"text/html"},[a.instance_eval(&b)]]}}}}

%w[set enable disable configure helpers use register].map{|m|D.(m){|*_,&b|b.try :[]}}
# END{Rack::Handler.get("webrick").run(a,Port:$z){|s|$r=s}}
%w[params].map{|m|D.(m){q.send m}};a.use Rack::Lock;D.(:before){|&b|a.use Rack::Config,&b};before{|e|q=Rack::Request.new e;q.params.dup.map{|k,v|params[k.to_sym]=v}}
  OPTIONS[:app]= a

}
