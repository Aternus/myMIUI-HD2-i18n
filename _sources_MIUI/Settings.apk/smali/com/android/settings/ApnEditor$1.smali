.class Lcom/android/settings/ApnEditor$1;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnEditor;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    #calls: Lcom/android/settings/ApnEditor;->deleteApn()V
    invoke-static {v0}, Lcom/android/settings/ApnEditor;->access$000(Lcom/android/settings/ApnEditor;)V

    .line 349
    return-void
.end method
