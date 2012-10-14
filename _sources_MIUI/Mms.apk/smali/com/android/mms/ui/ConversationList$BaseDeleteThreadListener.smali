.class public abstract Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseDeleteThreadListener"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDeleteLockedMessages:Z

.field protected final mHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method public constructor <init>(Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V
    .locals 0
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 659
    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->mContext:Landroid/content/Context;

    .line 660
    return-void
.end method


# virtual methods
.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->mDeleteLockedMessages:Z

    .line 664
    return-void
.end method
