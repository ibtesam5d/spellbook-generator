<script lang="ts">
	$: isDropdownClicked = false;
	$: isDropdownHovered = false;
	$: isDropdownOpen = isDropdownClicked || isDropdownHovered;

	let dropdownClosedClass = 'h-16 items-center justify-center';
	let dropdownOpenClass = 'gap-4';
	let iconOpenClass = 'flex h-16 items-center justify-center';

	const handleDropdownClick = () => {
		isDropdownClicked = !isDropdownClicked;
	};
</script>

<nav class="w-16 m-10 flex flex-col items-center gap-4">
	<div class="w-16 h-16 flex items-center justify-center bg-slate-500 rounded-full">
		<a href="/"><i class="mi mi-home" /></a>
	</div>
	<div
		class="w-16 flex flex-col bg-slate-500 rounded-full {isDropdownOpen
			? dropdownOpenClass
			: dropdownClosedClass}"
	>
		<div on:click={handleDropdownClick} on:keydown={handleDropdownClick} class="flex flex-col">
			<i class="mi mi-chevron-double-down {isDropdownOpen ? iconOpenClass : ''}" />
		</div>
		{#if isDropdownOpen}
			<a href="/spellbooks"><i class="mi mi-book" /></a>
			<a href="/spells" class={iconOpenClass}><i class="mi mi-wind" /></a>
		{/if}
	</div>
	<ul class="w-16 mt-auto flex flex-col gap-4 bg-slate-500 rounded-full">
		<a href="/" class={iconOpenClass}><i class="mi mi-settings" /></a>
		<a href="/"><i class="mi mi-user" /></a>
		<a href="/" class={iconOpenClass}><i class="mi mi-log-in" /></a>
	</ul>
</nav>

<style lang="scss">
	.rotate-chevron {
		transition: transform 0.5s;
		&:click {
			transform: rotateX(180deg);
		}
	}
</style>
