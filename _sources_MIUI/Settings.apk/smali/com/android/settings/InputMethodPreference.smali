.class public Lcom/android/settings/InputMethodPreference;
.super Landroid/preference/ListPreference;
.source "InputMethodPreference.java"


# instance fields
.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/InputMethodPreference;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/InputMethodPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 25
    return-void
.end method

.method private getCurrentInputMethod()Landroid/view/inputmethod/InputMethodInfo;
    .locals 6

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/InputMethodPreference;->getCurrentInputMethodId()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, lastInputMethodId:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/InputMethodPreference;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 54
    .local v3, immis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    .line 55
    .local v0, currentImeInfo:Landroid/view/inputmethod/InputMethodInfo;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 56
    .local v2, imeInfo:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    move-object v0, v2

    .line 62
    .end local v2           #imeInfo:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    return-object v0
.end method

.method private getCurrentInputMethodId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/settings/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "defaultReturnValue"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/InputMethodPreference;->getCurrentInputMethodId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    invoke-direct {p0}, Lcom/android/settings/InputMethodPreference;->getCurrentInputMethod()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 70
    .local v0, currentImeInfo:Landroid/view/inputmethod/InputMethodInfo;
    iget-object v1, p0, Lcom/android/settings/InputMethodPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    const/4 v1, 0x1

    return v1
.end method

.method public refresh()V
    .locals 7

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/InputMethodPreference;->getCurrentInputMethod()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 29
    .local v0, currentImeInfo:Landroid/view/inputmethod/InputMethodInfo;
    iget-object v5, p0, Lcom/android/settings/InputMethodPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v5, p0, Lcom/android/settings/InputMethodPreference;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 32
    .local v3, imiList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 33
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/CharSequence;

    .line 35
    .local v4, values:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 36
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v6, p0, Lcom/android/settings/InputMethodPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v1, v2

    .line 37
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/InputMethodPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0, v4}, Lcom/android/settings/InputMethodPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
