.class public Lcom/android/browser/ui/FindDialog;
.super Landroid/app/Dialog;
.source "FindDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.android.browser.ui.FindDialog"


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mEditText:Landroid/widget/EditText;

.field private mFindCancelListener:Landroid/view/View$OnClickListener;

.field private mFindListener:Landroid/view/View$OnClickListener;

.field private mFindPreviousListener:Landroid/view/View$OnClickListener;

.field private mFound:I

.field private mIth:I

.field private mMatches:Landroid/widget/TextView;

.field private mMatchesView:Landroid/view/View;

.field private mNextButton:Landroid/view/View;

.field private mPrevButton:Landroid/view/View;

.field private mWebView:Lcom/android/browser/ui/MiRenWebViewCore;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    const v0, 0x7f0b0020

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 56
    new-instance v0, Lcom/android/browser/ui/FindDialog$1;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/FindDialog$1;-><init>(Lcom/android/browser/ui/FindDialog;)V

    iput-object v0, p0, Lcom/android/browser/ui/FindDialog;->mFindListener:Landroid/view/View$OnClickListener;

    .line 64
    new-instance v0, Lcom/android/browser/ui/FindDialog$2;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/FindDialog$2;-><init>(Lcom/android/browser/ui/FindDialog;)V

    iput-object v0, p0, Lcom/android/browser/ui/FindDialog;->mFindCancelListener:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v0, Lcom/android/browser/ui/FindDialog$3;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/FindDialog$3;-><init>(Lcom/android/browser/ui/FindDialog;)V

    iput-object v0, p0, Lcom/android/browser/ui/FindDialog;->mFindPreviousListener:Landroid/view/View$OnClickListener;

    .line 106
    iput-object p1, p0, Lcom/android/browser/ui/FindDialog;->mContext:Landroid/app/Activity;

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/FindDialog;->setCanceledOnTouchOutside(Z)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ui/FindDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/browser/ui/FindDialog;->findNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/ui/FindDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/browser/ui/FindDialog;->mIth:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/browser/ui/FindDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/browser/ui/FindDialog;->mIth:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/browser/ui/FindDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/browser/ui/FindDialog;->mFound:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/browser/ui/FindDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/browser/ui/FindDialog;->setMatchesFound()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/ui/FindDialog;)Lcom/android/browser/ui/MiRenWebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/ui/FindDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/browser/ui/FindDialog;->hideSoftInput()V

    return-void
.end method

.method private disableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 98
    return-void
.end method

.method private findNext()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindDialog::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->findNext(Z)V

    .line 163
    invoke-direct {p0}, Lcom/android/browser/ui/FindDialog;->hideSoftInput()V

    .line 164
    return-void
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/browser/ui/FindDialog;->mContext:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 90
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/browser/ui/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 91
    return-void
.end method

.method private setMatchesFound()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 220
    iget v0, p0, Lcom/android/browser/ui/FindDialog;->mFound:I

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mMatches:Landroid/widget/TextView;

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_0
    iget v0, p0, Lcom/android/browser/ui/FindDialog;->mFound:I

    if-ne v0, v6, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mMatches:Landroid/widget/TextView;

    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mMatches:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/ui/FindDialog;->mContext:Landroid/app/Activity;

    const v2, 0x7f0900f7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/browser/ui/FindDialog;->mIth:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/android/browser/ui/FindDialog;->mFound:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 230
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 181
    return-void
.end method

.method public dismiss()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 141
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 143
    sget-object v1, Lcom/android/browser/util/ReflectUtil$LogFlag;->LogError:Lcom/android/browser/util/ReflectUtil$LogFlag;

    const-class v2, Landroid/webkit/WebView;

    const-string v3, "notifyFindDialogDismissed"

    move-object v0, v6

    check-cast v0, [Ljava/lang/Class;

    move-object v4, v0

    iget-object v5, p0, Lcom/android/browser/ui/FindDialog;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    check-cast v6, [Ljava/lang/Object;

    invoke-static/range {v1 .. v6}, Lcom/android/browser/util/ReflectUtil;->invokeMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 149
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/browser/ui/FindDialog;->findNext()V

    move v0, v2

    .line 155
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/browser/ui/FindDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 115
    .local v1, theWindow:Landroid/view/Window;
    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 117
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/FindDialog;->setContentView(I)V

    .line 119
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 121
    const v2, 0x7f0d0014

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/ui/FindDialog;->mEditText:Landroid/widget/EditText;

    .line 123
    const v2, 0x7f0d0013

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, button:Landroid/view/View;
    iget-object v2, p0, Lcom/android/browser/ui/FindDialog;->mFindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v0, p0, Lcom/android/browser/ui/FindDialog;->mNextButton:Landroid/view/View;

    .line 127
    const v2, 0x7f0d0012

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    iget-object v2, p0, Lcom/android/browser/ui/FindDialog;->mFindPreviousListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v0, p0, Lcom/android/browser/ui/FindDialog;->mPrevButton:Landroid/view/View;

    .line 131
    const v2, 0x7f0d0017

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcom/android/browser/ui/FindDialog;->mFindCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v2, 0x7f0d0016

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/browser/ui/FindDialog;->mMatches:Landroid/widget/TextView;

    .line 135
    const v2, 0x7f0d0015

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/ui/FindDialog;->mMatchesView:Landroid/view/View;

    .line 136
    invoke-direct {p0}, Lcom/android/browser/ui/FindDialog;->disableButtons()V

    .line 137
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 138
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 187
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindDialog::onTextChanged"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 192
    .local v6, find:Ljava/lang/CharSequence;
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 193
    invoke-direct {p0}, Lcom/android/browser/ui/FindDialog;->disableButtons()V

    .line 194
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->clearMatches()V

    .line 195
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mMatchesView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mMatchesView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 198
    sget-object v0, Lcom/android/browser/util/ReflectUtil$LogFlag;->LogError:Lcom/android/browser/util/ReflectUtil$LogFlag;

    const-class v1, Landroid/webkit/WebView;

    const-string v2, "setFindDialogHeight"

    new-array v3, v9, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v10

    iget-object v4, p0, Lcom/android/browser/ui/FindDialog;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/browser/ui/FindDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/browser/util/ReflectUtil;->invokeMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->findAll(Ljava/lang/String;)I

    move-result v7

    .line 202
    .local v7, found:I
    iput v10, p0, Lcom/android/browser/ui/FindDialog;->mIth:I

    .line 203
    iput v7, p0, Lcom/android/browser/ui/FindDialog;->mFound:I

    .line 204
    invoke-direct {p0}, Lcom/android/browser/ui/FindDialog;->setMatchesFound()V

    .line 205
    const/4 v0, 0x2

    if-ge v7, v0, :cond_3

    .line 206
    invoke-direct {p0}, Lcom/android/browser/ui/FindDialog;->disableButtons()V

    .line 207
    if-nez v7, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/android/browser/ui/FindDialog;->setMatchesFound()V

    goto :goto_0

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setWebView(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 0
    .parameter "webview"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/browser/ui/FindDialog;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    .line 102
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 168
    iget-object v1, p0, Lcom/android/browser/ui/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 169
    iget-object v1, p0, Lcom/android/browser/ui/FindDialog;->mEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/android/browser/ui/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 171
    .local v0, span:Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x12

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 172
    invoke-direct {p0}, Lcom/android/browser/ui/FindDialog;->setMatchesFound()V

    .line 173
    invoke-direct {p0}, Lcom/android/browser/ui/FindDialog;->disableButtons()V

    .line 174
    return-void
.end method
