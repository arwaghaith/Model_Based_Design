% FILEPATH: traffic_light_with_stick.m

% Define the time interval for each light
lightInterval = 3; % in seconds

% Create a figure window
figure;

% Define rectangle parameters
rectPosition = [50, 50, 400, 800]; % [x, y, width, height]
rectColor = 'white';

% Create the white rectangle
rectangle('Position', rectPosition, 'FaceColor', rectColor);

% Define black rectangle parameters inside the white rectangle
blackRectPosition = [210, 300, 70, 400]; % [x, y, width, height]
blackRectColor = 'black';

% Create the black rectangle inside the white rectangle
rectangle('Position', blackRectPosition, 'FaceColor', blackRectColor);

% Add a stick to the end of the black rectangle
stickPosition = [blackRectPosition(1) + blackRectPosition(3) / 2 - 5, blackRectPosition(2)-200 , 10, 200];
rectangle('Position', stickPosition, 'FaceColor', 'black');

% Define circle parameters for the traffic light
circleRadius = 30;
circleOffset = 30; % Offset from the top of the black rectangle

% Create red circle
redCircle = rectangle('Position', [245 - circleRadius, 600 - circleOffset, 2 * circleRadius, 3 * circleRadius], 'Curvature', [1, 1], 'FaceColor', 'red');

% Create yellow circle
yellowCircle = rectangle('Position', [245 - circleRadius, 490 - circleOffset, 2 * circleRadius, 3 * circleRadius], 'Curvature', [1, 1], 'FaceColor', 'yellow');

% Create green circle
greenCircle = rectangle('Position', [245 - circleRadius, 380 - circleOffset, 2 * circleRadius, 3 * circleRadius], 'Curvature', [1, 1], 'FaceColor', 'green');

% Loop to simulate the traffic light
while true
    % Light up the red circle
   set(redCircle, 'FaceColor', 'red');
    set(yellowCircle, 'FaceColor', [0.1, 0.1, 0]);
    set(greenCircle, 'FaceColor', [0, 0.1, 0]);
    pause(lightInterval);
    
    % Light up the yellow circle
    set(redCircle, 'FaceColor', [0.1, 0, 0]);
    set(yellowCircle, 'FaceColor', 'yellow');
    set(greenCircle, 'FaceColor', [0, 0.1, 0]);
    pause(lightInterval);
    
    % Light up the green circle
    set(redCircle, 'FaceColor', [0.1, 0, 0]);
    set(yellowCircle, 'FaceColor', [0.1, 0.1, 0]);
    set(greenCircle, 'FaceColor', 'green');
    pause(lightInterval);
end
