.class Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;
.super Ljava/lang/Object;
.source "ManageConferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManageConferenceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionInfo"
.end annotation


# instance fields
.field public callerInfo:Lcom/android/internal/telephony/CallerInfo;

.field public connection:Lcom/android/internal/telephony/Connection;

.field final synthetic this$0:Lcom/android/phone/ManageConferenceUtils;

.field public view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/phone/ManageConferenceUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;->this$0:Lcom/android/phone/ManageConferenceUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/ManageConferenceUtils;Lcom/android/phone/ManageConferenceUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/ManageConferenceUtils$ConnectionInfo;-><init>(Lcom/android/phone/ManageConferenceUtils;)V

    return-void
.end method
