.class Lcom/android/contacts/ui/GroupsBrowserActivity$4;
.super Ljava/lang/Object;
.source "GroupsBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/GroupsBrowserActivity;->buildAddGroupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$4;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$4;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #calls: Lcom/android/contacts/ui/GroupsBrowserActivity;->discardEditing()V
    invoke-static {v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$600(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    .line 421
    return-void
.end method
