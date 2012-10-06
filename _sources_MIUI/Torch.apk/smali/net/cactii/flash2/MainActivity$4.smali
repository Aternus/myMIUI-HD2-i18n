.class Lnet/cactii/flash2/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/cactii/flash2/MainActivity;->openBrightDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/cactii/flash2/MainActivity;


# direct methods
.method constructor <init>(Lnet/cactii/flash2/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lnet/cactii/flash2/MainActivity$4;->this$0:Lnet/cactii/flash2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 235
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity$4;->this$0:Lnet/cactii/flash2/MainActivity;

    #setter for: Lnet/cactii/flash2/MainActivity;->bright:Z
    invoke-static {v0, v2}, Lnet/cactii/flash2/MainActivity;->access$102(Lnet/cactii/flash2/MainActivity;Z)Z

    .line 236
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity$4;->this$0:Lnet/cactii/flash2/MainActivity;

    #getter for: Lnet/cactii/flash2/MainActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lnet/cactii/flash2/MainActivity;->access$300(Lnet/cactii/flash2/MainActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bright"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 237
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity$4;->this$0:Lnet/cactii/flash2/MainActivity;

    #getter for: Lnet/cactii/flash2/MainActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lnet/cactii/flash2/MainActivity;->access$300(Lnet/cactii/flash2/MainActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    return-void
.end method
