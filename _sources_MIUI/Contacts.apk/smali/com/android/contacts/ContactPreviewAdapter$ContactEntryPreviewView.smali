.class public Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
.super Ljava/lang/Object;
.source "ContactPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactEntryPreviewView"
.end annotation


# instance fields
.field public mChecked:Z

.field public mData:Ljava/lang/String;

.field public mExtra:Ljava/lang/String;

.field public mIcon:I

.field public mIntent:Landroid/content/Intent;

.field public mSecondaryIntent:Landroid/content/Intent;

.field public mimetype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    return-void
.end method
