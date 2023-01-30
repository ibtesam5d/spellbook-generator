<script lang="ts">
	import type { PageData } from './$types';
	import { numericToOrdinal } from '$lib/utils/utils';

	export let data: PageData;
</script>

<section class="flex flex-col flex-auto gap-8 max-w-prose">
	<div class="flex flex-col gap-4 p-4 rounded-xl">
		<h1 class="text-6xl">
			{data.spell.name}
		</h1>
		<h3 class="text-xl">
			{#if data.spell.level === 0}
				{data.spell.school} cantrip
			{:else}
				{numericToOrdinal(data.spell.level)}-level {data.spell.school}
			{/if}
		</h3>
	</div>
	<div class="flex flex-col flex-auto gap-8 ">
		<div class="flex justify-evenly p-4 bg-slate-600/75 rounded-xl">
			<div class="flex flex-col text-center">
				<h3 class="text-xl">Casting Time:</h3>
				<h3 class="text-xl">Range:</h3>
				<h3 class="text-xl">Components:</h3>
				<h3 class="text-xl">Duration:</h3>
			</div>
			<div class="flex flex-col text-cente">
				<h3 class="text-xl">{data.spell.time}</h3>
				<h3 class="text-xl">{data.spell.range}</h3>
				<h3 class="text-xl">{data.spell.components}</h3>
				<h3 class="text-xl">{data.spell.duration}</h3>
			</div>
		</div>
		<div class="flex flex-col p-4 gap-8 bg-slate-600/75 rounded-xl">
			<p class="text-lg self-center">{data.spell.description}</p>
			{#if data.spell.subdescription}
				<p class="text-lg self-center">
					<strong>At Higher Levels: </strong>{data.spell.subdescription}
				</p>
			{/if}
		</div>
		<div class="mt-auto p-4 bg-slate-600/75 rounded-xl">
			<h3 class="text-xl"><strong>Classes: </strong> {data.spell.list}</h3>
			<h3 class="text-xl"><strong>Source: </strong> {data.spell.source}</h3>
		</div>
	</div>
</section>
