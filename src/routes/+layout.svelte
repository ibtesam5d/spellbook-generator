<script lang="ts">
	import Navbar from '$lib/components/Navbar.svelte';
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

<Navbar />
<main class="flex flex-col flex-auto items-center p-6">
	<slot />
</main>
