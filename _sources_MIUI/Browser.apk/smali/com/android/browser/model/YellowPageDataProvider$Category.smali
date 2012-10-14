.class public Lcom/android/browser/model/YellowPageDataProvider$Category;
.super Ljava/lang/Object;
.source "YellowPageDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/YellowPageDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# instance fields
.field public _sites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/YellowPageDataProvider$Site;",
            ">;"
        }
    .end annotation
.end field

.field public _title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/browser/model/YellowPageDataProvider$Category;)V
    .locals 2
    .parameter "cat"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iget-object v0, p1, Lcom/android/browser/model/YellowPageDataProvider$Category;->_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/model/YellowPageDataProvider$Category;->_title:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/browser/model/YellowPageDataProvider$Category;->_sites:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/browser/model/YellowPageDataProvider$Category;->_sites:Ljava/util/ArrayList;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "catName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/YellowPageDataProvider$Site;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, sitesLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/YellowPageDataProvider$Site;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/browser/model/YellowPageDataProvider$Category;->_title:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/browser/model/YellowPageDataProvider$Category;->_sites:Ljava/util/ArrayList;

    .line 118
    return-void
.end method
