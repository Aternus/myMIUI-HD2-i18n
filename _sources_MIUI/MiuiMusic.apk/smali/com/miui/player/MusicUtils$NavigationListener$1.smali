.class Lcom/miui/player/MusicUtils$NavigationListener$1;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/MusicUtils$NavigationListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/MusicUtils$NavigationListener;

.field final synthetic val$id:I

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/miui/player/MusicUtils$NavigationListener;Landroid/content/SharedPreferences;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/miui/player/MusicUtils$NavigationListener$1;->this$0:Lcom/miui/player/MusicUtils$NavigationListener;

    iput-object p2, p0, Lcom/miui/player/MusicUtils$NavigationListener$1;->val$sp:Landroid/content/SharedPreferences;

    iput p3, p0, Lcom/miui/player/MusicUtils$NavigationListener$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/miui/player/MusicUtils$NavigationListener$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_first_to_online"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1465
    iget-object v0, p0, Lcom/miui/player/MusicUtils$NavigationListener$1;->this$0:Lcom/miui/player/MusicUtils$NavigationListener;

    iget v1, p0, Lcom/miui/player/MusicUtils$NavigationListener$1;->val$id:I

    invoke-virtual {v0, v1}, Lcom/miui/player/MusicUtils$NavigationListener;->changeTab(I)V

    .line 1466
    return-void
.end method
