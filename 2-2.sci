s=11,7;
fi=3*%pi/4;
function dr=f(tetha, r)
    dr=r/sqrt(3);
endfunction

r0 = 11,7/2,7;
tetha0=-%pi;

tetha=0:0.01:2*%pi;

r=ode(r0,tetha0,tetha,f);

function xt=f2(t)
    xt=tan(fi)*t;
endfunction

t=0:1:2500;

polarplot(tetha,r,style=color('green'));
plot2d(t,f2(t), style=color('red'));
