<script lang="ts">
	import type { PageData } from './$types';

	export let data: PageData;
</script>

<div class="flex flex-col">
	<h1 class="text-5xl py-8">
		{data.spell.name}
	</h1>
</div>
