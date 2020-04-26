% Welcome to Hangman
% Choose your letters carefully or you'll lose quickly!

% Authors:
% Mohamad Asaf
% Daniel  Bici
% Dalton  Hamilton
% Brian   O'Connell


function board_gui
% This function takes no arguments and creates a hangman gui
% That will interact with various functions

   %  Create a figure for the board and turn it off to load the UI
   f = figure('Visible','off','Position',[400,500,450,285]);
   
   %  Push button to Start a New game. This will end the current game
   %  But will NOT solve the game for you.
   %
   hnew_game = uicontrol('Style','pushbutton','String','New Game',...
           'Position',[315,220,70,25]);
   
   % Push button to Solve game. This will produce the word for you
   %
   hsolve = uicontrol('Style','pushbutton','String','Solve Game',...
           'Position',[315,180,70,25]);
   
   % Text  to enter the letter to play the game    
   %
   htext_box = uicontrol('Style','text','String','Enter a letter',...
           'Position',[315,100,70,15]);
   
   % Text box to enter the letter
   %
   hletter = uicontrol('Style','edit','Position',[315, 80,70, 15]);

   % This will get the user input letter and pass it
   %
   guessed_letter = get(hletter,'String');

   
   %Create the hangman guillotine
   %
   % CURRENTLY PRODUCES A GRAPH
   %ha = axes('Units','Pixels','Position',[50,60,200,185]); 
   %align([hnew_game,hsolve,htext_box,hletter],'Right','None');
   
   
   % Make the UI visible
   f.Visible = 'on';

end