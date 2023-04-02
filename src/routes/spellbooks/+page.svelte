<script lang="ts">
	import type { PageData } from './$types';
	import SpellbookCard from '$lib/components/SpellbookCard.svelte';
	import { joinWithSpace } from '$lib/utils/utils';

	export let data: PageData;
</script>

<section class="flex flex-col flex-auto p-12">
	<h1 class="text-6xl py-8">Spellbooks</h1>
	<div class="grid grid-cols-3 gap-8">
		{#each data.spellbooks as spellbook}
			<SpellbookCard
				header={spellbook.spellbook_name}
				subheader="{spellbook.character_name} - {joinWithSpace(spellbook.class)}"
				subtext={spellbook.spellbook_description ?? ''}
			/>
		{/each}
	</div>
</section>
