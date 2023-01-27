<script lang="ts">
	import type { PageData } from './$types';

	export let data: PageData;
	console.log(data);
</script>

<section class="flex flex-col">
	<h1 class="text-5xl py-8">
		{data.spellbook.name}
	</h1>
</section>
