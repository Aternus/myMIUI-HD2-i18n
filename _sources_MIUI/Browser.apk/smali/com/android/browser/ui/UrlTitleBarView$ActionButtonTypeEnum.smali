.class public final enum Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;
.super Ljava/lang/Enum;
.source "UrlTitleBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/UrlTitleBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionButtonTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

.field public static final enum AddBookmark_Off:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

.field public static final enum AddBookmark_On:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

.field public static final enum DoRefresh:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

.field public static final enum StopLoading:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    const-string v1, "StopLoading"

    invoke-direct {v0, v1, v2}, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->StopLoading:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    new-instance v0, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    const-string v1, "DoRefresh"

    invoke-direct {v0, v1, v3}, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->DoRefresh:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    new-instance v0, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    const-string v1, "AddBookmark_On"

    invoke-direct {v0, v1, v4}, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->AddBookmark_On:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    new-instance v0, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    const-string v1, "AddBookmark_Off"

    invoke-direct {v0, v1, v5}, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->AddBookmark_Off:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->StopLoading:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->DoRefresh:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->AddBookmark_On:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->AddBookmark_Off:Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->$VALUES:[Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;
    .locals 1
    .parameter "name"

    .prologue
    .line 46
    const-class v0, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->$VALUES:[Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    invoke-virtual {v0}, [Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/ui/UrlTitleBarView$ActionButtonTypeEnum;

    return-object v0
.end method
