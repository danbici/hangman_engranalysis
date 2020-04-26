% Welcome to Hangman
% Choose your letters carefully or you'll lose quickly!

% Authors:
% Mohamad Asaf
% Daniel  Bici
% Dalton  Hamilton
% Brian   O'Connell



function Hangman
% This is the main function to run the program

fprintf("Welcome to hangman\n");
fprintf("\n");

% Define some variables
%
Used_letters = [];

% Randomly generate a word to pick based upon a test case
%
generate_case = randi(5);

% chooses a word to play with
%
switch generate_case
    case 1
        word = 'matrices';
    case 2
        word = 'eigenvector';
    case 3
        word = 'identity';
    case 4
        word = 'transpose';
    case 5
        word = 'determinant';
end

% find the length of the word
%
word_length = strlength(word)

for i=1:word_length
    if(isletter)
        word[i] = 




% Call the noose function to draw it
%
DrawNoose()

% Go into a loop as long as you can guess a letter
%
%while 1
    

%    word_a = 
    
% call the word checker function
%
%word_checker(word, vargin(1))
%
%end


end


function word_checker(word_a, letter_a)
% This function checks if the letter provided matches the word
% That has been randomly generated
% letter_a : the letter provided by the user
% word_a: the word generated

% check if the letter is in the word
%

% Ask the user to input a letter:
%
fprintf("Input a letter:\n")

if isempty(strfind(word_a, letter_a))
    Used_words = append(used_words, letter_a);
  
    % CALL THE HANGMAN BODYPART FUNCTION HERE
    % !!!!
    AmountWrong = AmountWrong + 1;
    
    % call the hangman bodypart function
    %
    DrawHangingMan(AmountWrong)
    
    
    if AmountWrong == 6
        quit;
    end
    
else
    % CALL THE FUNCTION THAT DISPLAYS YOU GOT THE LETTER!
    %!!!!
    %guessed
    
end

end


% call the noose function to draw the noose
%
function DrawNoose()

rectangle('Position', [5 5 5 5],'linewidth',5,'edgecolor','k');

S1= line([9,9],[9,5]);
S1.Color = 'k'; 
S1.LineWidth = 4;

S2= line([7.5,9],[9,9]);
S2.Color = 'k'; 
S2.LineWidth = 4;

S2= line([7.5,7.5],[8,9]);
S2.Color = 'k'; 
S2.LineWidth = 4;

end



function DrawHangingMan(AmountWrong)

hold on

if (AmountWrong == 1)
hold on
%Draws head
x=7.5;
y=7.75;
r=0.25;
theta = 0:pi/100:2*pi;
a= r*cos(theta)+x;
b=r*sin(theta)+y;
Head = plot(a,b);
Head.LineWidth = 4;
Head.Color = 'b';
end

if (AmountWrong == 2)

%Draws Body
hold on
Body= line([7.5,7.5],[7.5,6]);
Body.Color = 'b'; 
Body.LineWidth = 4;
end

if (AmountWrong == 3)
%Draws Left Leg
hold on
LeftLeg = line([7.5,7],[6,5.5]);
LeftLeg.Color = 'b'; 
LeftLeg.LineWidth = 4;
end

if (AmountWrong == 4)
%Draws Right Leg
hold on
LeftLeg = line([7.5,8],[6,5.5]);
LeftLeg.Color = 'b'; 
LeftLeg.LineWidth = 4;
end

if (AmountWrong == 5)
%Draws Right Arm
hold on
RightArm = line([7.5,7],[7,7.5]);
RightArm.Color = 'b'; 
RightArm.LineWidth = 4;
end

if (AmountWrong == 6)
%Draws Left Arm
hold on
LeftArm = line([7.5,8],[7,7.5]);
LeftArm.Color = 'b'; 
LeftArm.LineWidth = 4;

end

end
