.class Lcom/android/launcher2/DeleteZone$2;
.super Ljava/lang/Object;
.source "DeleteZone.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeleteZone;->startUninstallDialog(Lcom/android/launcher2/ShortcutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeleteZone;

.field final synthetic val$info:Lcom/android/launcher2/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeleteZone;Lcom/android/launcher2/ShortcutInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/launcher2/DeleteZone$2;->this$0:Lcom/android/launcher2/DeleteZone;

    iput-object p2, p0, Lcom/android/launcher2/DeleteZone$2;->val$info:Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone$2;->this$0:Lcom/android/launcher2/DeleteZone;

    #getter for: Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v0}, Lcom/android/launcher2/DeleteZone;->access$000(Lcom/android/launcher2/DeleteZone;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DeleteZone$2;->val$info:Lcom/android/launcher2/ShortcutInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->addItem(Lcom/android/launcher2/ItemInfo;Z)V

    .line 227
    return-void
.end method