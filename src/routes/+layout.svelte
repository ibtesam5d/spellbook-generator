<script lang="ts">
	import Navbar from '$lib/components/Navbar.svelte';
	import '../app.scss';
</script>

<svelte:head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</svelte:head>

<Navbar />
<slot />
