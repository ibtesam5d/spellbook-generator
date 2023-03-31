<script lang="ts">
	import type { PageData } from './$types';
	import { joinWithSpace, numericToOrdinal } from '$lib/utils/utils';

	export let data: PageData;
</script>

<section
	class="flex flex-col flex-auto p-12 overflow-y-auto scrollbar scrollbar-thumb-stone-500 scrollbar-track-stone-600"
>
	<div class="flex flex-col gap-4 p-4 rounded-xl mb-6">
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
	<div class="flex flex-col flex-auto gap-10 px-12">
		<div class="flex justify-start">
			<div class="flex flex-col text-start p-4 bg-stone-800 rounded-xl mr-8">
				<h3 class="text-xl mb-2"><strong>Casting Time: </strong>{data.spell.time}</h3>
				<h3 class="text-xl mb-2"><strong>Range: </strong>{data.spell.range}</h3>
				<h3 class="text-xl mb-2">
					<strong>Components: </strong>{joinWithSpace(data.spell.components)}
				</h3>
				<h3 class="text-xl"><strong>Duration: </strong>{data.spell.duration}</h3>
			</div>

			<div class="flex flex-col text-start p-4 bg-stone-800 rounded-xl">
				<h3 class="text-xl mb-2"><strong>Classes: </strong> {joinWithSpace(data.spell.list)}</h3>
				<h3 class="text-xl"><strong>Source: </strong> {data.spell.source}</h3>
			</div>
			<div class="flex grow justify-center items-center min-w-[20vw]">+ Add to Spellbook</div>
		</div>
		<div class="flex flex-col p-4 gap-8 bg-stone-800 rounded-xl">
			<p class="text-lg self-center">{data.spell.description}</p>
			{#if data.spell.descriptionList.length > 0}
				<ul class="text-start ml-10 list-disc">
					{#each data.spell.descriptionList as item}
						<li class="text-lg leading-loose">{item}</li>
					{/each}
				</ul>
			{/if}
			{#if data.spell.moreDescription}
				<p class="text-lg self-center">{data.spell.moreDescription}</p>
			{/if}
			{#if data.spell.subdescription}
				<p class="text-lg self-center">
					<strong>At Higher Levels: </strong>{data.spell.subdescription}
				</p>
			{/if}
		</div>
	</div>
</section>
