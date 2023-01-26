<script lang="ts">
	import type { PageData } from './$types';

	export let data: PageData;
</script>

<section class="flex flex-col">
	<h1 class="text-5xl py-8">Spellbooks</h1>
	<div class="flex flex-col text-center">
		{#each data.spellbooks as spellbook}
			<a href="/spellbooks/{spellbook.name.replace(' ', '-').toLowerCase()}">{spellbook.name}</a>
		{/each}
	</div>
</section>
