.class public Lcom/android/mms/ui/AttachmentEditor;
.super Landroid/widget/LinearLayout;
.source "AttachmentEditor.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method
