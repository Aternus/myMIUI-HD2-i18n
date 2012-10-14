.class public final Lcom/android/browser/common/FileNameUtils$UriAndFileName;
.super Ljava/lang/Object;
.source "FileNameUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/common/FileNameUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UriAndFileName"
.end annotation


# instance fields
.field public Filename:Ljava/lang/String;

.field public Mimetype:Ljava/lang/String;

.field public Uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
