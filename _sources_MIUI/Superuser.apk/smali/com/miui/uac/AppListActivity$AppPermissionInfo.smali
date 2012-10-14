.class Lcom/miui/uac/AppListActivity$AppPermissionInfo;
.super Ljava/lang/Object;
.source "AppListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/uac/AppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppPermissionInfo"
.end annotation


# instance fields
.field mPackageLabel:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/uac/AppListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/uac/AppListActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter "packageName"
    .parameter "packageLabel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p4, permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->this$0:Lcom/miui/uac/AppListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p2, p0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPackageName:Ljava/lang/String;

    .line 400
    iput-object p3, p0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPackageLabel:Ljava/lang/String;

    .line 401
    iput-object p4, p0, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    .line 402
    return-void
.end method
