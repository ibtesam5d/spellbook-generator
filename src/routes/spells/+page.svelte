<script lang="ts">
	import type { PageData } from './$types';

	export let data: PageData;
</script>

<div>
	{#each data.spells as spell (spell.name)}
		<div>{spell.name}</div>
	{/each}
</div>
