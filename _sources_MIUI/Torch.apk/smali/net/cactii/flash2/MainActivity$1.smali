.class Lnet/cactii/flash2/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/cactii/flash2/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 121
    iput-object p1, p0, Lnet/cactii/flash2/MainActivity$1;->this$0:Lnet/cactii/flash2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    const-string v3, "bright"

    .line 124
    if-eqz p2, :cond_0

    iget-object v0, p0, Lnet/cactii/flash2/MainActivity$1;->this$0:Lnet/cactii/flash2/MainActivity;

    #getter for: Lnet/cactii/flash2/MainActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lnet/cactii/flash2/MainActivity;->access$000(Lnet/cactii/flash2/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bright"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity$1;->this$0:Lnet/cactii/flash2/MainActivity;

    const/4 v1, 0x1

    #setter for: Lnet/cactii/flash2/MainActivity;->bright:Z
    invoke-static {v0, v1}, Lnet/cactii/flash2/MainActivity;->access$102(Lnet/cactii/flash2/MainActivity;Z)Z

    .line 133
    :goto_0
    return-void

    .line 126
    :cond_0
    if-eqz p2, :cond_1

    .line 127
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity$1;->this$0:Lnet/cactii/flash2/MainActivity;

    #calls: Lnet/cactii/flash2/MainActivity;->openBrightDialog()V
    invoke-static {v0}, Lnet/cactii/flash2/MainActivity;->access$200(Lnet/cactii/flash2/MainActivity;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity$1;->this$0:Lnet/cactii/flash2/MainActivity;

    #setter for: Lnet/cactii/flash2/MainActivity;->bright:Z
    invoke-static {v0, v2}, Lnet/cactii/flash2/MainActivity;->access$102(Lnet/cactii/flash2/MainActivity;Z)Z

    .line 130
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity$1;->this$0:Lnet/cactii/flash2/MainActivity;

    #getter for: Lnet/cactii/flash2/MainActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lnet/cactii/flash2/MainActivity;->access$300(Lnet/cactii/flash2/MainActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bright"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity$1;->this$0:Lnet/cactii/flash2/MainActivity;

    #getter for: Lnet/cactii/flash2/MainActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lnet/cactii/flash2/MainActivity;->access$300(Lnet/cactii/flash2/MainActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
