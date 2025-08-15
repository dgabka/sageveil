import { ansi } from './ansi.js';

const { base, bright, dim } = ansi;

export const sageveil = {
  ansi: {
    base,
    bright,
    dim,
  },

  extras: {
    surface: bright.black,
    overlay: '#2b3b2e',
    cursor: base.magenta,
  },
} as const;
export type SageVeil = typeof sageveil;
