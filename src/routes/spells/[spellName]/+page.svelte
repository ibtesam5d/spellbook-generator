<script lang="ts">
	import { onMount } from 'svelte';
	import type { PageData } from './$types';

	export let data: PageData;

	onMount(() => {
		console.log(data.spell.name);
	});
</script>

<div>{data.spell.name}</div>
