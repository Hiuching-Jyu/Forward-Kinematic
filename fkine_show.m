clear;
clc;
clear L;
Len_tool = 0;
degree = pi/180;
d1=0.78;
d4=1.056;
d6=0.25;
a1=0.41;
a2=1.075;
a3=0.165;

% %% Standard
L(1) = Link('d',0.78, 'a',0.41,   'alpha',-pi/2,  'qlim','[-180*degree 180*degree]'  );
L(2) = Link('d',0,    'a',1.075,  'alpha',0,      'qlim','[-60*degree 85*degree]','offset', -pi/2);
L(3) = Link('d',0,    'a',0.165,  'alpha',-pi/2,  'qlim','[-180*degree 60*degree]');
L(4) = Link('d',1.056,'a',0,      'alpha',pi/2,   'qlim','[-300*degree 300*degree]');
L(5) = Link('d',0,    'a',0,      'alpha',-pi/2,  'qlim','[-100*degree 100*degree]');
L(6) = Link('d',0.25, 'a',0,      'alpha',0,      'qlim','[-360*degree 360*degree]');


L16 = SerialLink(L,'name','ABB7600-500');
initial_pose = [0 0 0 0 0 0];
L16.display();
fkine_value = L16.fkine(initial_pose);
L16.plot(initial_pose);