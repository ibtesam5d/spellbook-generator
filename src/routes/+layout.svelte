<script lang="ts">
	import { page } from '$app/stores';
	import type { PageData } from './$types';
	import Navbar from '$lib/components/Navbar.svelte';
	import '../app.scss';

	$: noNav = $page.url.pathname === '/register' || $page.url.pathname === '/login';
	export let data: PageData;
</script>

<svelte:head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</svelte:head>

{#if !noNav}
	<Navbar {data} />
{/if}
<slot />
