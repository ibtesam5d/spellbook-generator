<script lang="ts">
	import type { PageData } from './$types';
	import SpellTable from '$lib/components/SpellTable/SpellTable.svelte';

	export let data: PageData;
</script>

<section class="flex flex-col flex-auto p-12">
	<h1 class="text-6xl py-8 mb-4">Spells</h1>
	<SpellTable data={data.spells} />
</section>
