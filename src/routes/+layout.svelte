<script lang="ts">
	import { page } from '$app/stores';
	import type { PageData } from './$types';
	import Navbar from '$lib/components/Navbar.svelte';
	import '../app.scss';

	export let data: PageData;
	$: noNav = $page.url.pathname === '/register' || $page.url.pathname === '/login';
</script>

<svelte:head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</svelte:head>

{#if !noNav && data.session}
	<Navbar {data} />
{/if}
<slot />
