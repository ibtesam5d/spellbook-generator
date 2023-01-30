<script lang="ts">
	import type { PageData } from './$types';

	export let data: PageData;
	console.log(data);
</script>

<section class="flex flex-col gap-8 flex-auto w-full">
	<div class="flex flex-col flex-1 gap-4 min-h-0">
		<div class="flex flex-col gap-4 p-4 rounded-xl">
			<h1 class="text-6xl">
				{data.spellbook.name}
			</h1>
			<h3 class="text-xl">
				{data.spellbook.characterName} the {data.spellbook.class}
			</h3>
		</div>
		<div class="flex flex-col flex-1 text-start">
			<div class="flex">
				<h3 class="flex-1 p-4 text-xl">Description</h3>
				<h3 class="flex-1 p-4 text-xl">Spell Slots</h3>
			</div>
			<div class="flex flex-1 gap-8">
				<p class="overflow-hidden flex-1 p-4 bg-slate-600/75 rounded-xl">
					{data.spellbook.description}
				</p>
				<div class="flex-1 p-4 text-start bg-slate-600/75 rounded-xl" />
			</div>
		</div>
	</div>
	<div class="flex flex-col justify-start flex-grow flex-1">
		<h2 class="text-3xl text-start">Your Spells</h2>
	</div>
</section>

<style lang="scss">
</style>
