<script lang="ts">
	export let header: string = '';
	export let subheader: string = '';
	export let subtext: string = '';
</script>

<div class="card">
	<img src="https://picsum.photos/224/160" alt="Header" />
	<div class="card__headergroup">
		<h5 class="card__primarylabel">{header}</h5>
		<span class="card__subheader">{subheader}</span>
	</div>
	<p class="card__subtext">{subtext}</p>
	<button>
		<a href="/spellbooks/{header.replaceAll(' ', '-').toLowerCase()}">Open Spellbook</a>
		<i class="mi-sm mi-arrow-right" />
	</button>
</div>

<style lang="scss">
	.card {
		width: 16rem;
		height: 24rem;
		display: flex;
		flex-direction: column;
		align-items: flex-start;
		justify-self: center;
		border-radius: 1rem;
		padding: 1rem;

		@apply bg-stone-800;

		img {
			width: 14rem;
			height: 10rem;
			margin-bottom: 0.5rem;
		}

		&__headergroup {
			padding: 0 0.5rem;
			display: flex;
			flex-direction: column;
			align-items: flex-start;
			border-radius: 1rem;
		}

		&__primarylabel {
			font-size: 1.25rem;
		}

		&__subtext {
			margin: 0.5rem;
			display: -webkit-box;
			overflow: hidden;
			text-align: initial;
			-webkit-box-orient: vertical;
			-webkit-line-clamp: 3;
		}

		button {
			margin-top: auto;
			width: fit-content;
			padding: 0.25rem 1rem;
			border-radius: 1rem;
			align-self: center;

			@apply bg-stone-800;

			i {
				padding-left: 0.5rem;
			}
		}
	}
</style>
