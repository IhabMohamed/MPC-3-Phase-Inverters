function [Aq, Bq, Bdq] = cont2dis(Ts,Lfilter,Cfilter)
    % Input filter model
    A = [0 -1/Lfilter;1/Cfilter 0];
    B = [1/Lfilter; 0];
    Bd = [0; -1/Cfilter];
    % Discretization of the input filter model
    [Aq,Bq]=c2d(A,B,Ts);
    [~,Bdq]=c2d(A,Bd,Ts);    
end