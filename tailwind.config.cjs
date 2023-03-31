/** @type {import('tailwindcss').Config} */
module.exports = {
	content: ['./src/**/*{html,js,svelte,ts}'],
	theme: {
		fontFamily: {
			sans: ['Roboto', 'sans-serif']
		},
		screens: {
			sm: '640px',
			md: '768px',
			lg: '1024px',
			xl: '1280px',
			'2xl': '1536px'
		},
		extend: {}
	},
	plugins: [require('tailwind-scrollbar')],
	darkMode: 'class'
};
