export type AnsiName =
  | 'black'
  | 'red'
  | 'green'
  | 'yellow'
  | 'blue'
  | 'magenta'
  | 'cyan'
  | 'white';

export type AnsiVariant = 'base' | 'bright' | 'dim';

export type AnsiSet<T extends string = string> = Record<AnsiName, T>;
export type AnsiPalette<T extends string = string> = {
  base: AnsiSet<T>;
  bright: AnsiSet<T>;
  dim: AnsiSet<T>;
};

export const ansi: AnsiPalette<string> = {
  base: {
    black: '#171c18',
    red: '#9e6a67',
    green: '#5c7b5c',
    yellow: '#c9a860',
    blue: '#65806c',
    magenta: '#978b8f',
    cyan: '#916f54',
    white: '#aabbaa',
  },
  bright: {
    black: '#232924',
    red: '#b07a77',
    green: '#638a63',
    yellow: '#d4b573',
    blue: '#74997e',
    magenta: '#baa5ab',
    cyan: '#a37856',
    white: '#d0dfd0',
  },
  dim: {
    black: '#101712',
    red: '#8b5f5c',
    green: '#516b51',
    yellow: '#a38f5a',
    blue: '#4c594f',
    magenta: '#80787a',
    cyan: '#7d624d',
    white: '#8d9d8d',
  },
};
