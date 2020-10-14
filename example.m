% main program to generate the orbit of the Earth around the Sun

% Set the gravitional constant times the mass of the Planet to its value in AU^3/day^2.
GM(1) = (0.01720209895)^2; %Sun  see http://www.astro.gla.ac.uk/honours/labs/solar_system/astro_constants.html
GM(2) = (0.01720209895)^2 / 328900.56; %Earth
GM(3) = (0.01720209895)^2 / 1047.3486; %Jupiter
GM(4) = (0.01720209895)^2 / 6023600;   %Mercury
GM(5) = (0.01720209895)^2 / 408523.71; %Venus
GM(6) = (0.01720209895)^2 / 3098708;   %Mars
GM(7) = (0.01720209895)^2 / 3497.898;  %Saturn
GM(8) = (0.01720209895)^2 / 22902.98;  %Uranus
GM(9) = (0.01720209895)^2 / 19412.24;  %Neptune
GM(10) = (0.01720209895)^2 / 1.35E+8;   %Pluto


% set up the initial positions and velocities of the Planets in units of AU and AU/day:
X(1)  = -7.139147132286038E-03; %Sun pos
X(2)  = -2.792019830280757E-03;
X(3)  = 2.061825715444439E-04;
X(4)  = 5.374261407019511E-06; %Sun vel
X(5)  = -7.410966744915032E-06;
X(6)  = -9.422889366172143E-08;
X(7)  = -1.756895992827094E-01; %earth pos
X(8)  =  9.659716383076408E-01;
X(9)  =  2.050240276128469E-04;
X(10)  = -1.722463621150023E-02; %earth vel
X(11)  = -3.020684839068507E-03;
X(12)  = -7.003389133678563E-08;
X(13)  =  3.996321061854482E+00; %Jupiter pos
X(14)  =  2.932561395077597E+00;
X(15)  = -1.016168538891713E-01;
X(16) = -4.558376951270891E-03; %Jupiter vel
X(17) =  6.439863037190386E-03;
X(18) =  7.537602020981289E-05;
X(19) = -1.478672244638272E-01; %Mercury
X(20) = -4.466929789292386E-01;
X(21) = -2.313937957609384E-02;
X(22) = 2.117424560897132E-02;
X(23) = -7.105386129334715E-03;
X(24) = -2.522925839071367E-03;
X(25) = -7.257693636180024E-01; %Venus
X(26) = -2.529582241027935E-02;
X(27) = 4.137802926360784E-02;
X(28) = 5.189070603710855E-04;
X(29) = -2.031355259140432E-02;
X(30) = -3.072686213955652E-04; 
X(31) = 1.383221919016160E+00; %Mars
X(32) = -2.380173798221198E-02;
X(33) = -3.441183423403736E-02;
X(34) = 7.533013371827453E-04;
X(35) = 1.517888772321322E-02;
X(36) = 2.996588795985249E-04;
X(37) = 6.401419358016128E+00; %Saturn
X(38) = 6.565251044149031E+00;
X(39) = -3.689193114780021E-01;
X(40) = -4.285164691031420E-03;
X(41) = 3.884579027399763E-03;
X(42) = 1.025160070027559E-04;
X(43) = 1.442338139077396E+01; %Uranus
X(44) = -1.373844068506993E+01;
X(45) = -2.379183646594716E-01;
X(46) = 2.683858202912563E-03;
X(47) = 2.665014303463342E-03;
X(48) = -2.484074428686341E-05;
X(49) = 1.680362759335924E+01; %Neptune
X(50) = -2.499545058407568E+01;
X(51) = 1.274830225150769E-01;
X(52) = 2.584591139476231E-03;
X(53) = 1.768941466361779E-03;
X(54) = -9.629321017268494E-05;
X(55) = -9.883997403158554E+00; %Pluto
X(56) = -2.796079709157872E+01;
X(57) = 5.851015763341566E+00;
X(58) = 3.041348968174605E-03;
X(59) = -1.539624238595452E-03;
X(60) = -7.156810248518975E-04;

% call the solving routine, running it from time 0 to 365 days
[path, t] = solsym(X,0,96500,GM);

% plot the orbit, with equal axes
for i = 1:10
plot3(path(:,6*i-5),path(:,6*i-4),path(:,6*i-3));
hold on 
end
grid




