.class Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;
.super Ljava/lang/Object;
.source "ContactMembershipEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/ContactMembershipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergedGroupInfo"
.end annotation


# instance fields
.field public changed:Z

.field public checked:Z

.field public mGroupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;

.field public mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->checked:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->changed:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->mGroups:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ui/ContactMembershipEditor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;-><init>()V

    return-void
.end method
