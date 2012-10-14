.class Lcom/android/thememanager/ThemeResourceDetailActivity$2;
.super Ljava/lang/Object;
.source "ThemeResourceDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeResourceDetailActivity;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeResourceDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    #getter for: Lcom/android/thememanager/ThemeResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->access$000(Lcom/android/thememanager/ThemeResourceDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 305
    return-void
.end method
