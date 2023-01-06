<script lang="ts">
	import Header from '../lib/components/Header.svelte';
	import '../app.css';
</script>

<svelte:head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="preconnect" href="https://fonts.googleapis.com" /><link
		rel="preconnect"
		href="https://fonts.gstatic.com"
		crossorigin="anonymous"
	/><link
		href="https://fonts.googleapis.com/css2?family=Rowdies:wght@300&display=swap"
		rel="stylesheet"
	/>
</svelte:head>

<Header />
<main class="container flex flex-auto justify-center items-center">
	<slot />
</main>
