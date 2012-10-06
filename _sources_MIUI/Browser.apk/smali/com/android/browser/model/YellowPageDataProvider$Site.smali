.class public Lcom/android/browser/model/YellowPageDataProvider$Site;
.super Ljava/lang/Object;
.source "YellowPageDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/YellowPageDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Site"
.end annotation


# instance fields
.field public _isWapsite:Z

.field public _title:Ljava/lang/String;

.field public _url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/browser/model/YellowPageDataProvider$Site;)V
    .locals 1
    .parameter "site"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget-object v0, p1, Lcom/android/browser/model/YellowPageDataProvider$Site;->_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/model/YellowPageDataProvider$Site;->_title:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/android/browser/model/YellowPageDataProvider$Site;->_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/model/YellowPageDataProvider$Site;->_url:Ljava/lang/String;

    .line 101
    iget-boolean v0, p1, Lcom/android/browser/model/YellowPageDataProvider$Site;->_isWapsite:Z

    iput-boolean v0, p0, Lcom/android/browser/model/YellowPageDataProvider$Site;->_isWapsite:Z

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "title"
    .parameter "url"
    .parameter "isWapsite"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/browser/model/YellowPageDataProvider$Site;->_title:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/android/browser/model/YellowPageDataProvider$Site;->_url:Ljava/lang/String;

    .line 95
    iput-boolean p3, p0, Lcom/android/browser/model/YellowPageDataProvider$Site;->_isWapsite:Z

    .line 96
    return-void
.end method
