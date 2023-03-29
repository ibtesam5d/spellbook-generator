<nav class="w-16 h-screen m-8 flex flex-col items-center gap-4">
	<ul class="nav-bubble">
		<a href="/"><i class="mi-lg mi-home" /></a>
	</ul>
	<ul class=" nav-bubble">
		<a href="/spellbooks"><i class="mi-lg mi-book" /></a>
		<a href="/spells"><i class="mi-lg mi-wind" /></a>
	</ul>
	<ul class="nav-bubble">
		<a href="/"><i class="mi-lg mi-settings" /></a>
		<a href="/"><i class="mi-lg mi-user" /></a>
		<a href="/"><i class="mi-lg mi-log-in" /></a>
	</ul>
</nav>

<style lang="scss">
	.h-screen {
		height: calc(100vh - 4rem);
	}

	.nav-bubble {
		width: 4rem;
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		border-radius: 9999px;
		@apply bg-slate-500;

		&:last-of-type {
			margin-top: auto;
		}
	}

	.nav-bubble a {
		height: 4rem;
		width: 4rem;
		display: flex;
		align-items: center;
		justify-content: center;
		border-radius: 9999px;
	}
</style>
