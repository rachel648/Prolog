% Symptoms for conditions
symptom(flu, fever).
symptom(flu, cough).
symptom(flu, sore_throat).
symptom(flu, fatigue).
symptom(flu, body_aches).

symptom(cold, sneezing).
symptom(cold, runny_nose).
symptom(cold, sore_throat).
symptom(cold, mild_cough).
symptom(cold, fatigue).

symptom(malaria, fever).
symptom(malaria, chills).
symptom(malaria, sweating).
symptom(malaria, headache).
symptom(malaria, nausea).

symptom(typhoid, fever).
symptom(typhoid, abdominal_pain).
symptom(typhoid, diarrhea).
symptom(typhoid, weakness).
symptom(typhoid, loss_of_appetite).

symptom(pneumonia, fever).
symptom(pneumonia, cough).
symptom(pneumonia, shortness_of_breath).
symptom(pneumonia, chest_pain).
symptom(pneumonia, fatigue).

% Diagnoses for conditions (does patient present all the symptoms in the list of rules?)
diagnosis(flu, Symptoms) :-
    subset([fever, cough, sore_throat], Symptoms).

diagnosis(cold, Symptoms) :-
    subset([sneezing, runny_nose, sore_throat], Symptoms).

diagnosis(malaria, Symptoms) :-
    subset([fever, chills, sweating, headache], Symptoms).

diagnosis(typhoid, Symptoms) :-
    subset([fever, abdominal_pain, diarrhea, loss_of_appetite], Symptoms).

diagnosis(pneumonia, Symptoms) :-
    subset([fever, cough, shortness_of_breath], Symptoms).

% Forward chaining to diagnose a condition
forward_chaining(Symptoms, Diagnosis) :-
    diagnosis(Diagnosis, Symptoms).

% Backward chaining to confirm whether the symptoms match a given condition
backward_chaining(Condition, Symptoms) :-
    diagnosis(Condition, Symptoms).
