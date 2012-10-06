.class public Lcom/android/thememanager/ComponentSettings;
.super Landroid/preference/PreferenceActivity;
.source "ComponentSettings.java"

# interfaces
.implements Lcom/miui/android/resourcebrowser/IntentConstants;


# static fields
.field private static final mComponentCategoryTitles:[I

.field private static final mComponentFlags:[[J


# instance fields
.field private mBackupButton:Landroid/widget/Button;

.field private mComponentCategory:[Landroid/preference/PreferenceCategory;

.field private mComponents:[[Lcom/android/thememanager/ThemeComponentPreference;

.field private mFooterView:Landroid/view/View;

.field private mRootScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x2

    .line 17
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/thememanager/ComponentSettings;->mComponentCategoryTitles:[I

    .line 22
    new-array v0, v1, [[J

    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [J

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/thememanager/ComponentSettings;->mComponentFlags:[[J

    return-void

    .line 17
    :array_0
    .array-data 0x4
        0xdt 0x0t 0x7t 0x7ft
        0xet 0x0t 0x7t 0x7ft
        0xft 0x0t 0x7t 0x7ft
    .end array-data

    .line 22
    :array_1
    .array-data 0x8
        0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x8
        0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x8
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/ComponentSettings;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method private createPreferenceScreen()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const-string v9, "META_DATA"

    .line 65
    invoke-virtual {p0}, Lcom/android/thememanager/ComponentSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mRootScreen:Landroid/preference/PreferenceScreen;

    .line 66
    iget-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mRootScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/thememanager/ComponentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 68
    sget-object v0, Lcom/android/thememanager/ComponentSettings;->mComponentFlags:[[J

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mComponentCategory:[Landroid/preference/PreferenceCategory;

    .line 69
    sget-object v0, Lcom/android/thememanager/ComponentSettings;->mComponentFlags:[[J

    array-length v0, v0

    new-array v0, v0, [[Lcom/android/thememanager/ThemeComponentPreference;

    iput-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mComponents:[[Lcom/android/thememanager/ThemeComponentPreference;

    move v1, v8

    .line 70
    :goto_0
    sget-object v0, Lcom/android/thememanager/ComponentSettings;->mComponentFlags:[[J

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mComponentCategory:[Landroid/preference/PreferenceCategory;

    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 72
    iget-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mComponentCategory:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, v1

    sget-object v2, Lcom/android/thememanager/ComponentSettings;->mComponentCategoryTitles:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 73
    iget-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mRootScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/thememanager/ComponentSettings;->mComponentCategory:[Landroid/preference/PreferenceCategory;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 75
    iget-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mComponents:[[Lcom/android/thememanager/ThemeComponentPreference;

    sget-object v2, Lcom/android/thememanager/ComponentSettings;->mComponentFlags:[[J

    aget-object v2, v2, v1

    array-length v2, v2

    new-array v2, v2, [Lcom/android/thememanager/ThemeComponentPreference;

    aput-object v2, v0, v1

    move v2, v8

    .line 76
    :goto_1
    sget-object v0, Lcom/android/thememanager/ComponentSettings;->mComponentFlags:[[J

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 77
    sget-object v0, Lcom/android/thememanager/ComponentSettings;->mComponentFlags:[[J

    aget-object v0, v0, v1

    aget-wide v3, v0, v2

    .line 78
    new-instance v5, Lcom/android/thememanager/ThemeComponentPreference;

    invoke-direct {v5, p0}, Lcom/android/thememanager/ThemeComponentPreference;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v5, v3, v4}, Lcom/android/thememanager/ThemeComponentPreference;->setComponentFlag(J)V

    .line 81
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/android/thememanager/ThemeResourceTabActivity;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/thememanager/ComponentSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v7, "META_DATA"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 83
    const-string v7, "com.android.thememanager.extra_theme_apply_flags"

    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 84
    const-string v3, "META_DATA"

    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v5, v6}, Lcom/android/thememanager/ThemeComponentPreference;->setIntent(Landroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mComponents:[[Lcom/android/thememanager/ThemeComponentPreference;

    aget-object v0, v0, v1

    aput-object v5, v0, v2

    .line 88
    iget-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mComponentCategory:[Landroid/preference/PreferenceCategory;

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 76
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 70
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Lcom/android/thememanager/ComponentSettings$2;

    invoke-direct {v0, p0, p0}, Lcom/android/thememanager/ComponentSettings$2;-><init>(Lcom/android/thememanager/ComponentSettings;Landroid/content/Context;)V

    .line 98
    iget-object v1, p0, Lcom/android/thememanager/ComponentSettings;->mRootScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 99
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 116
    const/high16 v0, 0x10a

    const v1, 0x10a0037

    invoke-virtual {p0, v0, v1}, Lcom/android/thememanager/ComponentSettings;->overridePendingTransition(II)V

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/android/thememanager/ComponentSettings;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/android/thememanager/ComponentSettings;->createPreferenceScreen()V

    .line 54
    invoke-virtual {p0}, Lcom/android/thememanager/ComponentSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mFooterView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mFooterView:Landroid/view/View;

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mBackupButton:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mBackupButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/thememanager/ComponentSettings$1;

    invoke-direct {v1, p0}, Lcom/android/thememanager/ComponentSettings$1;-><init>(Lcom/android/thememanager/ComponentSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/thememanager/ComponentSettings;->mBackupButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 103
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 105
    iget-object v3, p0, Lcom/android/thememanager/ComponentSettings;->mComponents:[[Lcom/android/thememanager/ThemeComponentPreference;

    array-length v3, v3

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 106
    iget-object v3, p0, Lcom/android/thememanager/ComponentSettings;->mComponents:[[Lcom/android/thememanager/ThemeComponentPreference;

    aget-object v3, v3, v1

    array-length v3, v3

    sub-int v2, v3, v4

    .local v2, j:I
    :goto_1
    if-ltz v2, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/thememanager/ComponentSettings;->mComponents:[[Lcom/android/thememanager/ThemeComponentPreference;

    aget-object v3, v3, v1

    aget-object v0, v3, v2

    .line 108
    .local v0, component:Lcom/android/thememanager/ThemeComponentPreference;
    invoke-virtual {v0}, Lcom/android/thememanager/ThemeComponentPreference;->notifyDataChanged()V

    .line 106
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 105
    .end local v0           #component:Lcom/android/thememanager/ThemeComponentPreference;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 111
    .end local v2           #j:I
    :cond_1
    return-void
.end method
