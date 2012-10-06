.class Lcom/android/contacts/TwelveKeyDialer$7;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/TwelveKeyDialer;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$7;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$7;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {}, Lcom/android/contacts/TwelveKeyDialer$FilterState;->values()[Lcom/android/contacts/TwelveKeyDialer$FilterState;

    move-result-object v1

    aget-object v1, v1, p2

    #setter for: Lcom/android/contacts/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/TwelveKeyDialer$FilterState;
    invoke-static {v0, v1}, Lcom/android/contacts/TwelveKeyDialer;->access$902(Lcom/android/contacts/TwelveKeyDialer;Lcom/android/contacts/TwelveKeyDialer$FilterState;)Lcom/android/contacts/TwelveKeyDialer$FilterState;

    .line 1573
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$7;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$500(Lcom/android/contacts/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 1574
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$7;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/TwelveKeyDialer;->startQuery()V

    .line 1575
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1576
    return-void
.end method
