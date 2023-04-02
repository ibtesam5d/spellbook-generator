<script lang="ts">
	import SpellTable from '$lib/components/SpellTable/SpellTable.svelte';
	import { joinWithSlash } from '$lib/utils/utils';
	import type { PageData } from './$types';

	export let data: PageData;
	console.log(data);
</script>

<section class="flex flex-col flex-auto p-12">
	<div class="flex flex-col gap-4">
		<h1 class="text-6xl">
			{data.spellbook.spellbook_name}
		</h1>
		<h3 class="text-xl">
			{data.spellbook.character_name} the {joinWithSlash(data.spellbook.class)}
		</h3>
	</div>
	<div class="flex flex-col flex-grow flex-1 gap-4 justify-start ">
		<h2 class="text-3xl text-start">Your Spells</h2>
		<SpellTable data={data.spellbook.spells} />
	</div>
	<div class="flex flex-col gap-4 text-start h-64">
		<h2 class="text-3xl">Spell Slots</h2>
		<div class="flex-1 text-start bg-stone-800 rounded-xl" />
	</div>
</section>
