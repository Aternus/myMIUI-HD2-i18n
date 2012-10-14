.class public Lcom/android/fileexplorer/TextInputDialog;
.super Landroid/app/AlertDialog;
.source "TextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFolderName:Landroid/widget/EditText;

.field private mInputText:Ljava/lang/String;

.field private mListener:Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;

.field private mMsg:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;)V
    .locals 0
    .parameter "context"
    .parameter "title"
    .parameter "msg"
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/android/fileexplorer/TextInputDialog;->mTitle:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/android/fileexplorer/TextInputDialog;->mMsg:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/android/fileexplorer/TextInputDialog;->mListener:Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;

    .line 30
    iput-object p4, p0, Lcom/android/fileexplorer/TextInputDialog;->mInputText:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/android/fileexplorer/TextInputDialog;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/fileexplorer/TextInputDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/TextInputDialog;->mInputText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/fileexplorer/TextInputDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/TextInputDialog;->mInputText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/fileexplorer/TextInputDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/fileexplorer/TextInputDialog;)Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/TextInputDialog;->mListener:Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/android/fileexplorer/TextInputDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030008

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/TextInputDialog;->mView:Landroid/view/View;

    .line 41
    iget-object v1, p0, Lcom/android/fileexplorer/TextInputDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/TextInputDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Lcom/android/fileexplorer/TextInputDialog;->mMsg:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/TextInputDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p0, Lcom/android/fileexplorer/TextInputDialog;->mView:Landroid/view/View;

    const v3, 0x7f080050

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/fileexplorer/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    .line 45
    iget-object v1, p0, Lcom/android/fileexplorer/TextInputDialog;->mFolderName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/fileexplorer/TextInputDialog;->mInputText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/android/fileexplorer/TextInputDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/TextInputDialog;->setView(Landroid/view/View;)V

    .line 48
    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/fileexplorer/TextInputDialog;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/fileexplorer/TextInputDialog$1;

    invoke-direct {v4, p0}, Lcom/android/fileexplorer/TextInputDialog$1;-><init>(Lcom/android/fileexplorer/TextInputDialog;)V

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/fileexplorer/TextInputDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 60
    const/4 v3, -0x2

    iget-object v1, p0, Lcom/android/fileexplorer/TextInputDialog;->mContext:Landroid/content/Context;

    const/high16 v4, 0x104

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v2

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    move-object v1, v0

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/fileexplorer/TextInputDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method
