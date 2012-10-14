.class public Lcom/miui/player/ui/CreatorDialog;
.super Ljava/lang/Object;
.source "CreatorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;,
        Lcom/miui/player/ui/CreatorDialog$PlaylistBuilder;,
        Lcom/miui/player/ui/CreatorDialog$DialogBuilder;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBuilder:Lcom/miui/player/ui/CreatorDialog$DialogBuilder;

.field private mConfirmClicked:Landroid/content/DialogInterface$OnClickListener;

.field private mInput:Landroid/widget/EditText;

.field private final mListener:Lcom/miui/player/MusicUtils$OnDialogCallback;

.field private final mRequestCode:I

.field private mSaveButton:Landroid/widget/Button;

.field private final mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;Lcom/miui/player/ui/CreatorDialog$DialogBuilder;I)V
    .locals 1
    .parameter "a"
    .parameter "l"
    .parameter "creater"
    .parameter "requestCode"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/miui/player/ui/CreatorDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/CreatorDialog$1;-><init>(Lcom/miui/player/ui/CreatorDialog;)V

    iput-object v0, p0, Lcom/miui/player/ui/CreatorDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 94
    new-instance v0, Lcom/miui/player/ui/CreatorDialog$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/CreatorDialog$2;-><init>(Lcom/miui/player/ui/CreatorDialog;)V

    iput-object v0, p0, Lcom/miui/player/ui/CreatorDialog;->mConfirmClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 49
    iput-object p1, p0, Lcom/miui/player/ui/CreatorDialog;->mActivity:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lcom/miui/player/ui/CreatorDialog;->mListener:Lcom/miui/player/MusicUtils$OnDialogCallback;

    .line 51
    iput p4, p0, Lcom/miui/player/ui/CreatorDialog;->mRequestCode:I

    .line 52
    iput-object p3, p0, Lcom/miui/player/ui/CreatorDialog;->mBuilder:Lcom/miui/player/ui/CreatorDialog$DialogBuilder;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/CreatorDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/CreatorDialog;->mInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/ui/CreatorDialog;)Lcom/miui/player/ui/CreatorDialog$DialogBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/CreatorDialog;->mBuilder:Lcom/miui/player/ui/CreatorDialog$DialogBuilder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/CreatorDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/CreatorDialog;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/CreatorDialog;)Lcom/miui/player/MusicUtils$OnDialogCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/CreatorDialog;->mListener:Lcom/miui/player/MusicUtils$OnDialogCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/CreatorDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/miui/player/ui/CreatorDialog;->mRequestCode:I

    return v0
.end method

.method public static makeEqualizerConfigCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;ILjava/lang/String;)Lcom/miui/player/ui/CreatorDialog;
    .locals 2
    .parameter "a"
    .parameter "l"
    .parameter "requestCode"
    .parameter "data"

    .prologue
    .line 233
    new-instance v0, Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;

    invoke-direct {v0, p0, p3}, Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    .local v0, creator:Lcom/miui/player/ui/CreatorDialog$DialogBuilder;
    new-instance v1, Lcom/miui/player/ui/CreatorDialog;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/miui/player/ui/CreatorDialog;-><init>(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;Lcom/miui/player/ui/CreatorDialog$DialogBuilder;I)V

    return-object v1
.end method

.method public static makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;I)Lcom/miui/player/ui/CreatorDialog;
    .locals 2
    .parameter "a"
    .parameter "l"
    .parameter "requestCode"

    .prologue
    .line 228
    new-instance v0, Lcom/miui/player/ui/CreatorDialog$PlaylistBuilder;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/CreatorDialog$PlaylistBuilder;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, creator:Lcom/miui/player/ui/CreatorDialog$DialogBuilder;
    new-instance v1, Lcom/miui/player/ui/CreatorDialog;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/miui/player/ui/CreatorDialog;-><init>(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;Lcom/miui/player/ui/CreatorDialog$DialogBuilder;I)V

    return-object v1
.end method


# virtual methods
.method public show()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 56
    iget-object v4, p0, Lcom/miui/player/ui/CreatorDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 57
    .local v3, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030002

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 58
    .local v2, entryView:Landroid/view/View;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/miui/player/ui/CreatorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/player/ui/CreatorDialog;->mBuilder:Lcom/miui/player/ui/CreatorDialog$DialogBuilder;

    invoke-interface {v5}, Lcom/miui/player/ui/CreatorDialog$DialogBuilder;->getPrompt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080043

    iget-object v6, p0, Lcom/miui/player/ui/CreatorDialog;->mConfirmClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/player/ui/CreatorDialog;->mBuilder:Lcom/miui/player/ui/CreatorDialog$DialogBuilder;

    invoke-interface {v5, v7}, Lcom/miui/player/ui/CreatorDialog$DialogBuilder;->getConfirm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/player/ui/CreatorDialog;->mConfirmClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 66
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 67
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setVolumeControlStream(I)V

    .line 69
    iget-object v4, p0, Lcom/miui/player/ui/CreatorDialog;->mBuilder:Lcom/miui/player/ui/CreatorDialog$DialogBuilder;

    invoke-interface {v4}, Lcom/miui/player/ui/CreatorDialog$DialogBuilder;->getSuggestionName()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, defaultname:Ljava/lang/String;
    const v4, 0x7f0c0004

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/miui/player/ui/CreatorDialog;->mInput:Landroid/widget/EditText;

    .line 71
    iget-object v4, p0, Lcom/miui/player/ui/CreatorDialog;->mInput:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v4, p0, Lcom/miui/player/ui/CreatorDialog;->mInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 73
    iget-object v4, p0, Lcom/miui/player/ui/CreatorDialog;->mInput:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/miui/player/ui/CreatorDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/CreatorDialog;->mSaveButton:Landroid/widget/Button;

    .line 76
    return-void
.end method
