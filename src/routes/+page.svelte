<script lang="ts">
	import type { PageData } from './$types';

	export let data: PageData;
</script>

{#if data.session}
	<section class="flex flex-col flex-auto p-12">
		<h1 class="text-6xl py-8">Spellbook Generator</h1>
		<div class="mt-8 gap-16 flex flex-col items-center">
			<a href="/spellbooks/create" class="py-2 px-4 text-2xl rounded-full bg-stone-800"
				>Create a Spellbook</a
			>
			<a href="/spellbooks" class="py-2 px-4 text-2xl rounded-full bg-stone-800">Your Spellbooks</a>
			<a href="/spells" class="py-2 px-4 text-2xl rounded-full bg-stone-800">All Spells</a>
		</div>
	</section>
{:else}
	<section class="flex flex-col flex-auto items-center justify-center p-12">
		<h1 class="text-6xl py-8">Spellbook Generator</h1>
		<div class="mt-8 gap-8 flex flex-col items-center">
			<a href="/register" class="py-2 px-4 text-2xl rounded-full bg-stone-800">Sign Up</a>
			<a href="/login" class="py-2 px-4 text-2xl rounded-full bg-stone-800">Sign In</a>
		</div>
	</section>
{/if}
