.class Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;
.super Ljava/lang/Object;
.source "GroupsBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/GroupsBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MergedGroup"
.end annotation


# instance fields
.field public mGroupDelta:Lcom/android/contacts/model/GroupDelta;

.field public mGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupList:Ljava/util/ArrayList;

    .line 1024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupIds:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/ui/GroupsBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1021
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    return-void
.end method
