.class public Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PreviewVcardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mName:Landroid/widget/TextView;

.field public mNumbers:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter$ViewHolder;->this$1:Lcom/android/contacts/PreviewVcardListActivity$PreviewVcardListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
