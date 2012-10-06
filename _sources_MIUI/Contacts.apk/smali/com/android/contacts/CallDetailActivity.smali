.class public Lcom/android/contacts/CallDetailActivity;
.super Lcom/android/contacts/ViewContactActivity;
.source "CallDetailActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mContainCallLogInfo:Z

    .line 29
    invoke-super {p0, p1}, Lcom/android/contacts/ViewContactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method
