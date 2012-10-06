.class public Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
.super Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field private final mThreadId:J


# direct methods
.method public constructor <init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V
    .locals 0
    .parameter "threadId"
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 671
    invoke-direct {p0, p3, p4}, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;-><init>(Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    .line 672
    iput-wide p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    .line 673
    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 667
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    return-wide v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    const/16 v3, 0x81

    new-instance v4, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V

    .line 690
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 691
    return-void
.end method
