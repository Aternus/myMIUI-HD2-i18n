.class public Lcom/miui/notes/ui/AccountPreference;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/miui/notes/ui/AccountPreference;->mContext:Landroid/content/Context;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/ui/AccountPreference;->mDefaultAccount:Ljava/lang/String;

    .line 20
    const v0, 0x1090065

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/AccountPreference;->setWidgetLayoutResource(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Lcom/miui/notes/ui/AccountPreference;->mContext:Landroid/content/Context;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/ui/AccountPreference;->mDefaultAccount:Ljava/lang/String;

    .line 27
    const v0, 0x1090065

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/AccountPreference;->setWidgetLayoutResource(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object p1, p0, Lcom/miui/notes/ui/AccountPreference;->mContext:Landroid/content/Context;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/notes/ui/AccountPreference;->mDefaultAccount:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getValuePreview()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/notes/ui/AccountPreference;->mDefaultAccount:Ljava/lang/String;

    return-object v0
.end method

.method protected needValuePreview()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/notes/ui/AccountPreference;->mDefaultAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/notes/ui/AccountPreference;->mDefaultAccount:Ljava/lang/String;

    .line 38
    return-void
.end method
