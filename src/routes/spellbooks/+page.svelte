<script lang="ts">
	import type { PageData } from './$types';
	import SpellbookCard from '$lib/components/SpellbookCard.svelte';

	export let data: PageData;
</script>

<section class="flex flex-col flex-auto">
	<h1 class="text-6xl py-8">Spellbooks</h1>
	<div class="grid grid-cols-3 gap-8">
		{#each data.spellbooks as spellbook}
			<SpellbookCard
				header={spellbook.name}
				subheader="{spellbook.characterName} - {spellbook.class}"
				subtext={spellbook.description ?? ''}
			/>
		{/each}
	</div>
</section>
