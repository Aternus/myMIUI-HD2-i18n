.class public Lcom/android/contacts/ContactEntryAdapter$Entry;
.super Ljava/lang/Object;
.source "ContactEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactEntryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public contactId:J

.field public data:Ljava/lang/String;

.field public id:J

.field public label:Ljava/lang/String;

.field public maxLines:I

.field public mimetype:Ljava/lang/String;

.field public type:I

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    return-void
.end method
