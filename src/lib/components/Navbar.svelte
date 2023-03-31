<script lang="ts">
	import {
		Icon,
		Home,
		BookOpen,
		Sparkles,
		Cog8Tooth,
		UserCircle,
		ArrowRightOnRectangle
	} from 'svelte-hero-icons';
</script>

<nav class="w-16 h-[calc(100vh-4rem)] m-8 flex flex-col items-center gap-4">
	<ul class="rounded-full bg-yellow-600">
		<a href="/" class="w-16 h-16 flex flex-col items-center justify-center"
			><Icon src={Home} mini size="40" /></a
		>
	</ul>
	<ul class="rounded-full bg-yellow-600">
		<a href="/spellbooks" class="w-16 h-16 flex flex-col items-center justify-center"
			><Icon src={BookOpen} mini size="40" /></a
		>
		<a href="/spells" class="w-16 h-16 flex flex-col items-center justify-center"
			><Icon src={Sparkles} mini size="40" /></a
		>
	</ul>
	<ul class="mt-auto bg-yellow-600 rounded-full">
		<a href="/" class="w-16 h-16 flex flex-col items-center justify-center"
			><Icon src={Cog8Tooth} mini size="40" /></a
		>
		<a href="/" class="w-16 h-16 flex flex-col items-center justify-center"
			><Icon src={UserCircle} mini size="40" /></a
		>
		<a href="/" class="w-16 h-16 flex flex-col items-center justify-center"
			><Icon src={ArrowRightOnRectangle} mini size="40" /></a
		>
	</ul>
</nav>
