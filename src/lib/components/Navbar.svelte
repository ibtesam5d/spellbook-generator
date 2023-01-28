<nav class="nav">
	<ul class="nav-bubble">
		<a href="/"><i class="mi mi-home" /></a>
	</ul>
	<ul class=" nav-bubble">
		<a href="/spellbooks"><i class="mi mi-book" /></a>
		<a href="/spells"><i class="mi mi-wind" /></a>
	</ul>
	<ul class="nav-bubble">
		<a href="/"><i class="mi mi-settings" /></a>
		<a href="/"><i class="mi mi-user" /></a>
		<a href="/"><i class="mi mi-log-in" /></a>
	</ul>
</nav>

<style lang="scss">
	.nav {
		width: 4rem;
		margin: 2.5rem;
		display: flex;
		flex-direction: column;
		align-items: center;
		gap: 1rem;
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
