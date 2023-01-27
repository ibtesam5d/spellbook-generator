<script lang="ts">
	import type { PageData } from './$types';
	import { numericToOrdinal } from '$lib/utils/utils';

	export let data: PageData;
</script>

<section class="flex flex-col flex-auto w-full">
	<h1 class="text-5xl py-6">
		{data.spell.name}
	</h1>
	<div class="flex flex-col flex-auto w-full justify-center">
		<div class="py-6">
			<h3 class="text-xl">
				{#if data.spell.level === 0}
					{data.spell.school} cantrip
				{:else}
					{numericToOrdinal(data.spell.level)}-level {data.spell.school}
				{/if}
			</h3>
			<h3 class="text-xl">Source: {data.spell.source}</h3>
		</div>
		<div class="py-6">
			<h3 class="text-xl"><strong>Casting Time:</strong> {data.spell.time}</h3>
			<h3 class="text-xl"><strong>Range:</strong> {data.spell.range}</h3>
			<h3 class="text-xl"><strong>Components:</strong> {data.spell.components}</h3>
			<h3 class="text-xl"><strong>Duration:</strong> {data.spell.duration}</h3>
		</div>
		<div class="flex flex-col flex-1 py-6 gap-8">
			<p class="text-lg max-w-prose self-center">{data.spell.description}</p>
			{#if data.spell.subdescription}
				<p class="text-lg max-w-prose self-center">
					<strong>At Higher Levels: </strong>{data.spell.subdescription}
				</p>
			{/if}
		</div>
		<div class="py-6">
			<h3 class="text-xl"><strong>Classes: </strong> {data.spell.list}</h3>
		</div>
	</div>
</section>
