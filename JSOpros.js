var questions = [ 

	{

		question: "Форма правления, при которой главой государства является монарх?",

		answer: "монархия"

	},

	{

		question: "Политический режим, при котором руководство страны стремится подчинить весь уклад жизни людей одной безраздельно господствующей идее?",

		answer: "тоталитаризм"

	},

	{

		question: "2+2?",

		answer: "4"

	},

	{

		question: "2*2?",

		answer: "4"

	},

	{

		question: "2*0",

		answer: "0"

	}

]
for(i = 0; i < questions.length; i++) {

	q = questions[i].question

	document.getElementById('question' + [i]).textContent = q

}



function testResults() {

	var correct = 0;

	var incorrect = 0;

	for(i = 0; i < questions.length; i++) {	

		var answer = questions[i].answer

		var guess = document.getElementById('answer' + [i]).value

		var questionSpot = document.getElementById('question' + [i])

		if(answer == guess) {

			questionSpot.className = 'correct'

			correct++

		} else {

			questionSpot.className = 'incorrect'

			incorrect++

		}

	}

	document.getElementById('correct').textContent = correct

	document.getElementById('incorrect').textContent = incorrect

}