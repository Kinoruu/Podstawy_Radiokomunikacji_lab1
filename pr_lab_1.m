load census;
load franke
xx = [0.5:0.2:2.5];
x= [0.5, 0.7, 0.9, 1.1, 1.3, 1.5, 1.7, 1.9, 2.1, 2.3, 2.5];
y1 = [18.6088, 13.5527, 11.3816, 9.2696, 7.5821, 5.8549, 5.0803, 3.6684, 2.5056, -0.0155, -1.2373];
y2 = [18.4071 13.1668 10.7406 8.7812 7.0080 5.1812 4.3431 3.2602 1.7930 -0.8257 -1.9074];
y3 = [18.1552 12.6867 10.3046 8.4233 6.5655 4.8548 3.8348 2.8709 1.3617 -1.3872 -2.3314];
y4 = [18.0112 12.4512 10.0865 8.1824 6.3326 4.7049 3.6402 2.6395 1.1300 -1.5576 -2.4790];
y5 = [17.6242 11.9333 9.5756 7.6895 5.8339 4.2649 3.2723 2.1272 0.5503 -2.0155 -2.8570];
x2= [0.5 0.7 0.9 1.1 1.3 1.5 1.7 1.9 2.1 2.3];
y21 = [-7.8743 -11.1469 -10.7934 -14.7869 -15.7501 -15.2539 -16.2424 -17.3240 -20.3626 -20.2140];
y22 = [-7.4715 -12.3442 -11.4198 -15.1256 -15.4175 -16.0896 -16.3251 -17.9784 -21.4194 -19.0694];
y23 = [-7.4929 -12.4171 -11.3492 -14.9974 -15.6690 -16.4152 -16.6590 -19.0398 -22.3798 -18.7757];
y24 = [-7.5536 -12.6580 -11.5697 -15.0873 -15.4348 -16.6244 -16.7948 -19.2643 -22.3648 -18.9799];
y25 = [-7.9077 -13.0021 -11.5916 -15.5174 -15.3640 -16.6115 -17.0904 -19.7640 -22.5771 -19.5728];
 
plot(x,y1,'--bo','MarkerFaceColor','b','MarkerSize',3);
grid
grid minor
%xticks([0.5 0.7 0.9 1.1 1.3 1.5 1.7 1.9 2.1 2.3 2.5]);
hold on
plot(x,y2,'--mo','MarkerFaceColor','m','MarkerSize',3);
plot(x,y3,'--ko','MarkerFaceColor','k','MarkerSize',3);
plot(x,y4,'--co','MarkerFaceColor','c','MarkerSize',3);
plot(x,y5,'--ro','MarkerFaceColor','r','MarkerSize',3);

title('T³umienie Friisa w funkcji odleg³oœci dla dopasowania polaryzacyjnego')
xlabel('Odleg³oœæ [m]');
ylabel('T³umienie [dB]');
legend('podnoœna -150','podnoœna -20','podnoœna 20','podnoœna 70','podnoœna 130')
hold off

figure

plot(x2,y21,'--bo','MarkerFaceColor','b','MarkerSize',3);
grid
grid minor
%xticks([0.5 0.7 0.9 1.1 1.3 1.5 1.7 1.9 2.1 2.3 2.5]);
hold on
plot(x2,y22,'--mo','MarkerFaceColor','m','MarkerSize',3);
plot(x2,y23,'--ko','MarkerFaceColor','k','MarkerSize',3);
plot(x2,y24,'--co','MarkerFaceColor','c','MarkerSize',3);
plot(x2,y25,'--ro','MarkerFaceColor','r','MarkerSize',3);

title('T³umienie Friisa w funkcji odleg³oœci dla niedopasowania polaryzacyjnego')
xlabel('Odleg³oœæ [m]');
ylabel('T³umienie [dB]');
legend('podnoœna -150','podnoœna -20','podnoœna 20','podnoœna 70','podnoœna 130')
hold off

figure
f = fit(xx,y1,'poly2')
plot(f,xx,y1)