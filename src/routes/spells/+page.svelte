<script lang="ts">
	import type { PageData } from './$types';

	export let data: PageData;
</script>

<section class="flex flex-col">
	<h1 class="text-5xl py-8">Spells</h1>
	<div class="flex flex-col text-center">
		{#each data.spells as spell}
			<a href="/spells/{spell.name.replaceAll(' ', '-').toLowerCase()}">{spell.name}</a>
		{/each}
	</div>
</section>
