.class Lcom/android/contacts/DialerListAdapter$2;
.super Ljava/lang/Object;
.source "DialerListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/DialerListAdapter;->handleDialerClick(Ljava/lang/String;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/DialerListAdapter;

.field final synthetic val$contactId:J

.field final synthetic val$isCallRecord:Z

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/DialerListAdapter;Ljava/lang/String;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/contacts/DialerListAdapter$2;->this$0:Lcom/android/contacts/DialerListAdapter;

    iput-object p2, p0, Lcom/android/contacts/DialerListAdapter$2;->val$number:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/contacts/DialerListAdapter$2;->val$contactId:J

    iput-boolean p5, p0, Lcom/android/contacts/DialerListAdapter$2;->val$isCallRecord:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 793
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p2

    .line 794
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$2;->this$0:Lcom/android/contacts/DialerListAdapter;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    #setter for: Lcom/android/contacts/DialerListAdapter;->mItemClickAction:I
    invoke-static {v0, v1}, Lcom/android/contacts/DialerListAdapter;->access$802(Lcom/android/contacts/DialerListAdapter;I)I

    .line 796
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$2;->this$0:Lcom/android/contacts/DialerListAdapter;

    #getter for: Lcom/android/contacts/DialerListAdapter;->mActivity:Lcom/android/contacts/TwelveKeyDialer;
    invoke-static {v0}, Lcom/android/contacts/DialerListAdapter;->access$200(Lcom/android/contacts/DialerListAdapter;)Lcom/android/contacts/TwelveKeyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialer_click_setting"

    iget-object v2, p0, Lcom/android/contacts/DialerListAdapter$2;->this$0:Lcom/android/contacts/DialerListAdapter;

    #getter for: Lcom/android/contacts/DialerListAdapter;->mItemClickAction:I
    invoke-static {v2}, Lcom/android/contacts/DialerListAdapter;->access$800(Lcom/android/contacts/DialerListAdapter;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 797
    iget-object v0, p0, Lcom/android/contacts/DialerListAdapter$2;->this$0:Lcom/android/contacts/DialerListAdapter;

    iget-object v1, p0, Lcom/android/contacts/DialerListAdapter$2;->val$number:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/contacts/DialerListAdapter$2;->val$contactId:J

    iget-boolean v4, p0, Lcom/android/contacts/DialerListAdapter$2;->val$isCallRecord:Z

    #calls: Lcom/android/contacts/DialerListAdapter;->handleDialerClick(Ljava/lang/String;JZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/DialerListAdapter;->access$900(Lcom/android/contacts/DialerListAdapter;Ljava/lang/String;JZ)V

    .line 798
    return-void

    .line 794
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
