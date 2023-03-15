export const numericToOrdinal = (number: number) => {
	switch (number) {
		case 1:
			return '1st';
		case 2:
			return '2nd';
		case 3:
			return '3rd';
		default:
			return number + 'th';
	}
};

export const joinWithSpace = (list: string[]) => {
	return list.join(', ');
};

export const joinWithSlash = (list: string[]) => {
	return list.join('/');
};
