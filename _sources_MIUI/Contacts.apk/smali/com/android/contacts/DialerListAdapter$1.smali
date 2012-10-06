.class Lcom/android/contacts/DialerListAdapter$1;
.super Ljava/lang/Object;
.source "DialerListAdapter.java"

# interfaces
.implements Landroid/widget/Filter$Delayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/DialerListAdapter;-><init>(Lcom/android/contacts/TwelveKeyDialer;Landroid/widget/EditableListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviousLength:I

.field final synthetic this$0:Lcom/android/contacts/DialerListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/DialerListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/contacts/DialerListAdapter$1;->this$0:Lcom/android/contacts/DialerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/DialerListAdapter$1;->mPreviousLength:I

    return-void
.end method


# virtual methods
.method public getPostingDelay(Ljava/lang/CharSequence;)J
    .locals 4
    .parameter "constraint"

    .prologue
    .line 649
    if-nez p1, :cond_0

    .line 650
    const-wide/16 v2, 0x0

    .line 653
    :goto_0
    return-wide v2

    .line 651
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lcom/android/contacts/DialerListAdapter$1;->mPreviousLength:I

    if-ge v2, v3, :cond_1

    const-wide/16 v2, 0x1f4

    move-wide v0, v2

    .line 652
    .local v0, delay:J
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/DialerListAdapter$1;->mPreviousLength:I

    move-wide v2, v0

    .line 653
    goto :goto_0

    .line 651
    .end local v0           #delay:J
    :cond_1
    const-wide/16 v2, 0x64

    move-wide v0, v2

    goto :goto_1
.end method
