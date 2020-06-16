
% Manhal Jacob 

clear ; clc; close all


choice=menu('What is your goal','Loss fat','Gain lots of muscles');

prompt={'Enter your weight','Enter the number of calories to maintain weight'};

dlg_title='Input';

num_lines=1;
def={'',''};

answer=inputdlg(prompt,dlg_title,num_lines,def);

weight= str2num(answer{1});

Maintian_calories=str2num(answer{2}) ;

 if choice==1
    
def_calories=Maintian_calories-500;

protine = 0.73*weight;
fat=(0.2*def_calories)/9;
carbs= (def_calories-(protine*4)-(fat*9))/4;
fprintf(' Your micros are :\n\n Protine = %0.1f\n Fat = %0.1f\n Carbs = %0.1f\n',protine,fat,carbs )
 else
     Surpluse_calories=2665+500;

protine = 0.8*weight;
fat=(0.2*Surpluse_calories)/9;
carbs= (Surpluse_calories-(protine*4)-(fat*9))/4;

fprintf(' Your micros are :\n\n Protine = %0.1f\n Fat = %0.1f\n Carbs = %0.1f\n',protine,fat,carbs )
 end

 total_calories=(protine+carbs)*4+fat*9;
 fprintf('Total Caloiries = %0.1f\n',total_calories)
 
