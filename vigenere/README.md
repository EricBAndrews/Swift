# vigenere

Implements a simple ROT0 vigenere cipher.

## Encrypt

Prompts for a key and plaintext, and prints the encrypted text to the terminal. All input is forced to be lowercase, and non-letter characters are left untouched. Spaces, punctuation, etc. will appear verbatim in the ciphertext, and encryption picks up where it left off after (e.g. `attackatdawn` and `attack at dawn` with the key lemon will both encrypt to `lxfopv ef rnhr`; `attack at dawn` will not result in the output of `lxfopv mh oeib`)

## Decrypt

Prompts for a key and ciphertext, and prints the decrypted text to the terminal. Behaves identically to Encrypt with regards to input format and handling anomalous character.