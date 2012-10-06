.class Lcom/android/thememanager/ThemeResourceDetailActivity$3;
.super Ljava/lang/Object;
.source "ThemeResourceDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeResourceDetailActivity;->giveTipForLockscreenPaper()V
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
    .line 364
    iput-object p1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$3;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$3;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    iget-object v1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$3;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    #getter for: Lcom/android/thememanager/ThemeResourceDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/thememanager/ThemeResourceDetailActivity;->access$100(Lcom/android/thememanager/ThemeResourceDetailActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/thememanager/ThemeResourceDetailActivity;->cutAndSetWallpapers(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/thememanager/ThemeResourceDetailActivity;->access$200(Lcom/android/thememanager/ThemeResourceDetailActivity;Ljava/lang/String;Z)V

    .line 367
    return-void
.end method
