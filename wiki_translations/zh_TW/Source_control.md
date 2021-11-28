---
title: 原始碼版本控制
toc: true
---
SupertTuxKart 的原始碼使用 Git，而資料檔案使用 SVN。如果您沒有，請先安裝它們。您可以在頁面底部找到安裝它們的說明。

## 遊戲核心

核心程式碼倉庫存放在我們的 [GitHub 頁面](https://github.com/supertuxkart/stk-code)上。範例再製指令：

{%popup_code
git clone https://github.com/supertuxkart/stk-code.git stk-code%}

下載大小約為 350 MB。

資料檔案存放在 SourceForge，並使用 SVN。範例再製指令：

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets%}

下載大小約為 700 MB。

這兩個倉庫應下載到同一個資料夾內，讓資料夾 `stk-code` 和 `stk-assets` 彼此可見。

## 媒體倉庫

**玩遊戲不需要**下載媒體倉庫。其包含了資源的原始檔案（.blend 檔案、無損音樂與音效檔等等），專供藝術家使用。下載大小約為 3.2 GB。

媒體倉庫存放在 SourceForge，並使用 SVN。範例再製指令：

{%popup_code
svn checkout https://svn.code.sf.net/p/supertuxkart/code/media/trunk stk-media-repo%}

另見[媒體倉庫頁面](Media_Repo)。

## 指南

以下是一些針對有 Git/SVN 寫入權限的開發者的指南：

* 加入我們的 IRC 或 Telegram 頻道（參見 [社群](Community)）。開發者通常會在那裡張貼他們的工作內容，減少發生衝突的可能性。此外，已知重要的程式錯誤也在那裡討論。
* 也可能值得訂閱 supertuxkart-commit 郵件清單（參見[社群](Community)）。所有 commit 的訊息都會自動傳送到此地址，因此您總是會知道正在發生的狀況，或您的工作會不會干擾其他人。
* 開發版本應總是編譯成功。雖然不可能在所有平台上進行測試，但請盡力編寫跨平臺程式碼。其他開發者和測試者通常會快速指出（並修復）任何問題。
* 經常 commit。頻繁 commit 具有作為備份的優勢，從而降低耗時的合併衝突可能性。
* 嘗試在一個 commit 中包含單個功能的所有變動（亦即不要單獨 commit 每個檔案），並試著不要將多個功能混合在一個大的 commit 中。

## 安裝 Git

### Linux
`sudo apt install git` 或類似指令，取決於您的散佈版。

### Windows
安裝 [Git for Windows](https://github.com/git-for-windows/git/releases/latest)。如果您需要圖形介面的 Git，您可以選擇任何適合您的。否則，如果您不知道該選擇哪個，您可以在安裝 Git for Windows 後安裝 [TortoiseGit](https://tortoisegit.org/download)。

## 安裝 SVN

### Linux
`sudo apt install subversion` 或類似指令，取決於您的散佈版。

### Windows
您可以在多個 SVN 客戶端之間進行選擇，並使用任何適合您的，但如果您不知道選擇那個客戶端，您可以安裝 [TortoiseSVN](https://tortoisesvn.net/downloads.html)。
