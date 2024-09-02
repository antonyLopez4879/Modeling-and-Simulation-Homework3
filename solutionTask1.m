% ODE45: function - time of simulation(s) - initial conditions
x1   = 0;
x2   = 0;
x1_d = 0;
x2_d = 0;
time = 10;

% return the vector x based on ODE45
[t,x] = ode45(@systemFunction,[0 time], [x1 x2 x1_d x2_d]);

%----------------------- Plotting ----------------------
clf
figure(1)
subplot(2,1,1)
sgtitle(" Desplazamiento de Masas"); 
plot(t,x(:,1)) % First state: x1
grid on
xlabel("Time");ylabel("[m]");legend('x1')

subplot(2,1,2)
plot(t,x(:,2)) % Second state: x2
grid on
xlabel("Time");ylabel("[m]");legend('x2')



