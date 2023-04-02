declare global {
	declare namespace App {
		// interface PageData {}
		// interface Error {}
		// interface Locals {}
		// interface Platform {}
		interface Locals {
			validate: import('@lucia-auth/sveltekit').Validate;
			validateUser: import('@lucia-auth/sveltekit').ValidateUser;
			setSession: import('@lucia-auth/sveltekit').SetSession;
		}
	}

	declare namespace Lucia {
		type Auth = import('$lib/server/lucia').Auth;
		type UserAttributes = {
			username: string;
		};
	}

	declare namespace App {
		interface Locals {
			auth: import('lucia-auth').AuthRequest;
		}
	}
}

export {};
