.class public Lcom/android/mms/ui/ContextMenuDialog;
.super Ljava/lang/Object;
.source "ContextMenuDialog.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMenuAdapter:Landroid/widget/ListAdapter;

.field private mMenuOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mMenuRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuTitles:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuRunnables:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lcom/android/mms/ui/ContextMenuDialog$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ContextMenuDialog$1;-><init>(Lcom/android/mms/ui/ContextMenuDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuAdapter:Landroid/widget/ListAdapter;

    .line 87
    new-instance v0, Lcom/android/mms/ui/ContextMenuDialog$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ContextMenuDialog$2;-><init>(Lcom/android/mms/ui/ContextMenuDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 25
    iput-object p1, p0, Lcom/android/mms/ui/ContextMenuDialog;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ContextMenuDialog;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuTitles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ContextMenuDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ContextMenuDialog;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuRunnables:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addMenuItem(ILjava/lang/Runnable;)V
    .locals 1
    .parameter "title"
    .parameter "onClick"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "title"
    .parameter "onClick"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuTitles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "title"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog;->mTitle:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/mms/ui/ContextMenuDialog;->mTitle:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ContextMenuDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, b:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/mms/ui/ContextMenuDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 48
    iget-object v2, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ContextMenuDialog;->mMenuOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setContextMenuMode(Z)Landroid/app/AlertDialog$Builder;

    .line 50
    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setGravity(I)Landroid/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 52
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 53
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 54
    return-void
.end method
