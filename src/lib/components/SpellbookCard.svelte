<script lang="ts">
	import { Icon, ArrowSmallRight } from 'svelte-hero-icons';

	export let header: string = '';
	export let subheader: string = '';
	export let subtext: string = '';

	let href = header.replaceAll(' ', '-').toLowerCase();
</script>

<div class="w-64 h-96 p-4 flex flex-col items-start justify-self-center rounded-2xl bg-stone-800">
	<img class="w-56 h-40 mb-2" src="https://picsum.photos/224/160" alt="Header" />
	<div class="w-full mb-2 flex flex-col items-center rounded-2xl">
		<h5 class="text-xl">{header}</h5>
		<span>{subheader}</span>
	</div>
	<p class="w-full line-clamp">{subtext}</p>
	<div class="flex mt-auto justify-center items-center w-full">
		<a href="/spellbooks/{href}">Open Spellbook</a>
		<Icon src={ArrowSmallRight} mini size="32" />
	</div>
</div>

<style lang="scss">
	.line-clamp {
		width: 100%;
		display: -webkit-box;
		overflow: hidden;
		text-align: center;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 3;
	}
</style>
