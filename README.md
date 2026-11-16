# DaySpindle for Windows

Version 2.1. Developed by Ruichen Li. Released under the MIT License (see `LICENSE.txt`).

DaySpindle is a Gantt chart task manager. Plan **groups**, **tasks** and **milestones** on a day-by-day timeline. Join them with **dependency arrows**, color them by category, tag them, and drag their bars to reschedule. Everything is saved in a **workspace folder** you choose, which you can move between computers or keep in OneDrive. It works fully offline: no account, no cloud service, no network access. This folder is the whole app: copy it to a PC and run it. Nothing has to be installed.

**Needs:** Windows 10 (version 1803 or later) or Windows 11, 64-bit. Windows 11 on Arm also runs it, through emulation.


## What's in this folder

- `Start DaySpindle.cmd`: double-click to start DaySpindle. It also makes the **DaySpindle** shortcut (below).
- `DaySpindle` (a shortcut, after the first start): the app's icon. Double-click it to start DaySpindle. It's made on the PC because a shortcut holds the app's full path; `Start DaySpindle.cmd` makes it again if you move this folder.
- `DaySpindle for Windows\`: the app, `DaySpindle.exe`, and the files it needs (about 360 MB). Keep these files together, and don't move `DaySpindle.exe` out on its own.
- `dayspindle.cmd`: optional. Opens DaySpindle from Command Prompt: `cd` to this folder, then type `dayspindle`.
- `README.md`: this file. `LICENSE.txt`: the license (MIT).


## Getting started

1. **Copy this folder to the PC**, somewhere it can stay, for example `C:\Users\<your name>\DaySpindle`. You can rename the folder. Avoid `C:\Program Files` (copying there needs an administrator).
2. **Double-click `Start DaySpindle.cmd`.** It starts DaySpindle and puts a **DaySpindle** shortcut with the app's icon next to itself: double-click that from then on. The first time, Windows may say "Windows protected your PC", because the app and the script aren't signed by a publisher. Click **More info**, then **Run anyway**. Windows asks only once.
3. **Open your workspace.** Choose **Open Workspace…** and pick the folder that holds your `dayspindle-data.json`, for example the `Workspace` folder copied from your Mac, or one in OneDrive. Or choose **New Workspace…** and pick an empty folder to start fresh.

   If a folder named `Workspace` sits right next to `DaySpindle for Windows` (in this folder) on the first start, it opens by itself.
4. **Optional: make it easy to open.** Right-click the **DaySpindle** shortcut and choose **Pin to Start** or **Pin to taskbar** (on Windows 11, under **Show more options**), or drag it to your desktop.


## Workspaces: your data

- **A workspace is a folder.** Everything in it is saved in `dayspindle-data.json` in that folder, and `dayspindle-data.previous.json` keeps the file as it was when the workspace was last opened, as a backup.
- **Mac and PC open the same folders.** Copy a workspace folder between them, or keep it in a folder both can see (OneDrive, Dropbox, a USB stick), and choose **File › Open Workspace…**. Use one computer at a time.
- **Several at once:** each open workspace has its own tab along the top of the window.
- **Coming from DaySpindle 2.0 on this PC?** 2.0 kept your tasks in `%APPDATA%\DaySpindle\dayspindle-data.json`. Choose **File › Import Tasks from DaySpindle 2.0…** and pick a folder for them, for example a new `My Tasks` folder in Documents; it becomes a workspace. The 2.0 file is left as it was.
- **Settings** (open tabs, time zone, appearance): `%APPDATA%\DaySpindle\settings.json`.

DaySpindle doesn't connect to the internet, and it doesn't collect or send any data.


## What you can do

- **Groups, tasks and milestones.** A task with subtasks becomes a group by itself. A milestone inside a task marks a key moment on its bar, such as a review or a deadline.
- **Dependency arrows.** Point at an item: four small round handles appear on its sides. Drag one onto another item. Each arrow's type (Finish → Start and so on), sides, thickness and color can be changed.
- **Details on the right.** Double-click an item or an arrow to see and edit everything about it.
- **Completed and the Archive.** Mark an item as completed (**Ctrl+Shift+C**, the button in its details, or right-click). It moves to the **Archive** in the sidebar; unmark it there and it returns to exactly where it was.
- **Time zones,** like Calendar. An item with a time keeps the moment it was entered in. Choose the time zone at the bottom of the sidebar.
- **Holidays and highlighted days.** Right-click a date in the header: **Mark … as Holiday** shades that weekday like a weekend, and **Highlight Day** shades it in a color you choose. Both are saved in the workspace.
- **Click a date** in the header to tint its column; click anywhere else to clear it.
- **Moving through time:** drag the scroll bar under the timeline, use Shift + mouse wheel, or ‹ Today ›.
- **Categories and tags** with checkboxes and filters, **undo** for every change, **light and dark** appearance, and **Tips** at the bottom left of the sidebar.


## Keyboard shortcuts

| Action | Keys |
|---|---|
| New task / subtask | Ctrl+N / Ctrl+Alt+N |
| New milestone / group / category | Ctrl+Shift+M / Ctrl+Shift+G / Ctrl+Shift+N |
| Show details / show or hide the details pane | Ctrl+E (or Enter) / Ctrl+I |
| Mark as completed (to the Archive) / return from the Archive | Ctrl+Shift+C |
| Move up / down among its siblings | Alt+↑ / Alt+↓ |
| Delete the selected item or arrow | Delete |
| Undo / redo | Ctrl+Z / Ctrl+Y |
| Go to today | Ctrl+T |
| All items / clear filters | Ctrl+1 / Ctrl+K |
| New workspace / open workspace | Ctrl+Alt+Shift+N / Ctrl+O |
| Next or previous workspace tab / close the tab | Ctrl+Tab, Ctrl+Shift+Tab / Ctrl+W |
| Settings | Ctrl+, |
| Cancel a drag or an arrow being drawn | Esc |


## If something isn't right

- **The DaySpindle shortcut doesn't open the app:** run `Start DaySpindle.cmd` once; it makes the shortcut again.
- **Nothing seems to happen when you double-click `DaySpindle.exe`:** DaySpindle is probably already open (only one window runs at a time). Look in the taskbar.
- **Your antivirus removed or blocked `DaySpindle.exe`:** allow it in the antivirus, or copy the folder again. The app isn't signed by a publisher, which some antivirus programs dislike.


## Updating and removing

- **Updating:** quit DaySpindle and replace the `DaySpindle for Windows` folder with the new version's. Your workspaces are elsewhere and aren't touched.
- **Removing:** delete this folder. Your settings are in `%APPDATA%\DaySpindle` and `%LOCALAPPDATA%\DaySpindle`; delete those too if you like. Your workspace folders stay where they are.


## Developer, license and disclaimer

- **Developer:** DaySpindle is developed by Ruichen Li.
- **License:** MIT License, in `LICENSE.txt`. Anyone may use, copy, change and share DaySpindle for free, for any purpose. When you share it, or a version you've changed, keep the copyright notice "Copyright (c) 2026 Ruichen Li" and the license text with it.
- **No warranty:** DaySpindle is provided "as is", without warranty of any kind. The developer isn't liable for any loss or damage from using it, including lost tasks. Keep your own backup of anything important.
- **Third-party software:** DaySpindle for Windows is built with Electron, which includes Chromium, Node.js and other open-source software under their own licenses. Their license texts are in the `DaySpindle for Windows` folder, as `LICENSE` (Electron) and `LICENSES.chromium.html` (Chromium and the rest).
- **Trademarks:** Windows is a trademark of Microsoft Corporation. DaySpindle isn't affiliated with or endorsed by Microsoft.
