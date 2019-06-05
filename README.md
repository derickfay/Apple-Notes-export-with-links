# Apple Notes export with links
Export from Apple Notes on macOS and iOS while preserving URLs 

Update (2019-06-04): Copying from Notes and pasting in Ulysses keeps embedded notes now (on Mojave) so the MacOS part of this is no longer necessary.

I had created a long Apple note with a bunch of embedded links.  So many in fact that I wanted to break the document up into a bunch of sub-documents.  I figured I would just copy and paste into Ulysses, and split there.  No luck: the text that was pasted came in as plain text, with just the titles of the links and no URLs.  On both macOS and iOS.

I looked around in Notes' AppleScript but the URLs for my links didn't appear in the html source for the note or in any of the attachments (at least not in a way that was exposed to AppleScript).

After some trial and error, I realized that, in macOS, if I copied and pasted into an rtf document (in TextEdit or Nisus), the links would remain active. So I wrote this AppleScript (which relies on a bunch of simulated keyboard presses) to copy the active note to a new document in TextEdit.  The resulting document can be saved and dragged into Ulysses, and Ulysses will convert the rtf to Markdown.

[Notes2rtf](https://github.com/derickfay/Apple-Notes-export-with-links/blob/master/Notes2rtf.applescript)

This didn't work in iOS, at least not with the only rich text editors I had, Scrivener and Word. Fortunately I had just been catching up on the Canvas podcast and remembered the recommendation to use the content graph and quick look to see what a share sheet was outputting.  Alas, it was plain text. But when I selected text in Notes and copied it, rather than using the share sheet or the share popup on a selection, it was rich text. From there it was a matter of piping it out to Workflow's *make Markdown from rich text* action, then back to the clipboard.

![get clipboard->make Markdown from rich text->set clipboard](https://github.com/derickfay/Apple-Notes-export-with-links/blob/master/IMG_6248.png)
