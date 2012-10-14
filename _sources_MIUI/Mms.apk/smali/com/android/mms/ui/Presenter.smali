.class public abstract Lcom/android/mms/ui/Presenter;
.super Ljava/lang/Object;
.source "Presenter.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mModel:Lcom/android/mms/model/Model;

.field protected mView:Lcom/android/mms/ui/ViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    .line 37
    iput-object p3, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    .line 38
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    invoke-virtual {v0, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getModel()Lcom/android/mms/model/Model;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    return-object v0
.end method

.method public getView()Lcom/android/mms/ui/ViewInterface;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    return-object v0
.end method

.method public abstract present()V
.end method

.method public setView(Lcom/android/mms/ui/ViewInterface;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    .line 47
    return-void
.end method
