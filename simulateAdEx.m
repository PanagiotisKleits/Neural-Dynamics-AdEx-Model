function membPoten = simulateAdEx(params)


membPoten = [params.vt; zeros(params.simDur/params.dt , 1)];
v = params.vt;
w = 0;
vpeak = 0; 

% Η προσομοίωση
for timei = 1:params.simDur/params.dt-1

    Iin = params.input; 

    v = v + params.dt*(-params.gl*(v-params.El) + params.gl*params.delT*exp((v-params.vt)/params.delT) + Iin - w)/params.C;

    w = w + params.dt*(params.a*(membPoten(timei)-params.El) - w)/params.tauW;

    if v>=vpeak
        v = params.vreset;
        w = w + params.b;
    else
        membPoten(timei+1) = v;
    end
end

end