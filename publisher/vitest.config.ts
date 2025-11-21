import { defineConfig } from 'vitest';

export default defineConfig({
	test: {
		clearMocks: true,
		setupFiles: ['./tests/helpers/setup-tests.ts'],
	},
});
