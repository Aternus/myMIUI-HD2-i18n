.class final Lcom/android/thememanager/ThemeHelper$2;
.super Ljava/lang/Object;
.source "ThemeHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeHelper;->applyTheme(ZJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$flags:J

.field final synthetic val$info:Lcom/android/thememanager/ThemeInfo;

.field final synthetic val$removeAllOld:Z

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeInfo;ZJLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/android/thememanager/ThemeHelper$2;->val$info:Lcom/android/thememanager/ThemeInfo;

    iput-boolean p2, p0, Lcom/android/thememanager/ThemeHelper$2;->val$removeAllOld:Z

    iput-wide p3, p0, Lcom/android/thememanager/ThemeHelper$2;->val$flags:J

    iput-object p5, p0, Lcom/android/thememanager/ThemeHelper$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$2;->val$info:Lcom/android/thememanager/ThemeInfo;

    iget-boolean v1, p0, Lcom/android/thememanager/ThemeHelper$2;->val$removeAllOld:Z

    iget-wide v2, p0, Lcom/android/thememanager/ThemeHelper$2;->val$flags:J

    iget-object v4, p0, Lcom/android/thememanager/ThemeHelper$2;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/thememanager/ThemeInfo;->convert_async(ZJLjava/lang/Runnable;)V

    .line 1106
    return-void
.end method
