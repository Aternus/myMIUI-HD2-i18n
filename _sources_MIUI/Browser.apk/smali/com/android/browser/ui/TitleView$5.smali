.class Lcom/android/browser/ui/TitleView$5;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/TitleView;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/TitleView;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/TitleView;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/browser/ui/TitleView$5;->this$0:Lcom/android/browser/ui/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 201
    iget-object v2, p0, Lcom/android/browser/ui/TitleView$5;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mMode:I
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$000(Lcom/android/browser/ui/TitleView;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/browser/ui/TitleView$5;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$700(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/ui/TitleView$5;->this$0:Lcom/android/browser/ui/TitleView;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/browser/ui/TitleView;->addShortcutForUrl(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/android/browser/ui/TitleView;->access$800(Lcom/android/browser/ui/TitleView;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/android/browser/ui/TitleView$5;->this$0:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v2, v4}, Lcom/android/browser/ui/TitleView;->switchMode(I)V

    .line 214
    .end local v1           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 207
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView$5;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v2

    const-class v3, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v2, p0, Lcom/android/browser/ui/TitleView$5;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$700(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 211
    iget-object v2, p0, Lcom/android/browser/ui/TitleView$5;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    iget-object v2, p0, Lcom/android/browser/ui/TitleView$5;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v2}, Lcom/android/browser/ui/TitleView;->access$1000(Lcom/android/browser/ui/TitleView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/ui/TitleView$5;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;
    invoke-static {v3}, Lcom/android/browser/ui/TitleView;->access$700(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
