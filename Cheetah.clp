(defrule isMammal

(initial-fact)

=>
(printout t "Does the animal have hair (yes/no)" crlf)
(assert(has_hair (read)))

)


(defrule isCarnivore

(initial-fact)

=>

(printout t "Does the animal have claws (yes/no)" crlf)
(assert(claws (read)))
(printout t "Does the animal have sharp teeth(yes/no)" crlf)
(assert(sharp_teeth (read)))
(printout t "Is the animal's eyes front facing (yes/no)" crlf)
(assert(front_eyes (read)))
(printout t "Does the animal have spots (yes/no)" crlf)
(assert(spots (read)))

)


(defrule eatsMeat

(initial-fact)

=>

(printout t "Does the animal eat meat(yes/no)" crlf)
(assert(carnivore (read)))

)


(defrule isCheetah

(has_hair yes)
(claws yes)
(sharp_teeth yes)
(front_eyes yes)
(carnivore yes)
(spots yes)
=>

(assert(isCheetah yes))
(printout t "The animal is a CHEETAH" crlf)
	
)


