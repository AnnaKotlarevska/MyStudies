// Вариант 1
checkString = (string) => {
	if (typeof string !== 'string') {
		console.log('You use invalid data')
	} else if (string.length < 5) {
		console.log('String must be greater than five')
	} else if (string.length > 64) {
		console.log('Too long string')
	} else if (!/[a-zа-я]/.test(string)) {
		console.log('This string must contain any letter')
	} else if (!/[A-ZА-Я]/.test(string)) {
		console.log('This string must contain at least one uppercase letter')
	} else if (!/[0-9]/.test(string)) {
		console.log('This string must contain at least one digit')
	} else if (!/@/.test(string)) {
		console.log('This string must contain at least one @')
	} else if (string == '') {
		console.log('This line must be filled')
	} else {
		console.log('Success')
	}
}

checkString('gdfnD5d@')

// Вариант 2
checkString = (string) => {
	if (typeof string !== 'string') {
		console.log('You use invalid data')
	} else if (string.length < 5) {
		console.log('String must be greater than five')
	} else if (string.length > 64) {
		console.log('Too long string')
	} else if (!/[a-zа-яA-ZА-Я0-9@]/.test(string)) {
		console.log(
			'This string must contain letter, uppercase letter, digit and @'
		)
	} else if (string == '') {
		console.log('This line must be filled')
	} else {
		console.log('Success')
	}
}

// Вариант 3
checkString = (string) => {
	if (
		typeof string !== 'string' ||
		string.length < 5 ||
		string.length > 64 ||
		!/[a-zа-яA-ZА-Я0-9@]/.test(string) ||
		string == ''
	) {
		console.log(
			"This string must be greater than five and shorter 64, contain letter, uppercase letter, digit, @ and don't be empty"
		)
	} else {
		console.log('Success')
	}
}
