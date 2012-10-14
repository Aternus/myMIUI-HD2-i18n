.class public abstract Lcom/android/contacts/model/ContactsSource;
.super Ljava/lang/Object;
.source "ContactsSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/ContactsSource$StringInflater;,
        Lcom/android/contacts/model/ContactsSource$EditField;,
        Lcom/android/contacts/model/ContactsSource$EditType;,
        Lcom/android/contacts/model/ContactsSource$DataKind;
    }
.end annotation


# static fields
.field private static sWeightComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/model/ContactsSource$DataKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountType:Ljava/lang/String;

.field public iconRes:I

.field private mInflatedLevel:I

.field private mKinds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/ContactsSource$DataKind;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeKinds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/model/ContactsSource$DataKind;",
            ">;"
        }
    .end annotation
.end field

.field public readOnly:Z

.field public resPackageName:Ljava/lang/String;

.field public summaryResPackageName:Ljava/lang/String;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/android/contacts/model/ContactsSource$1;

    invoke-direct {v0}, Lcom/android/contacts/model/ContactsSource$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/ContactsSource;->sWeightComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/ContactsSource;->accountType:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/ContactsSource;->mKinds:Ljava/util/ArrayList;

    .line 74
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/ContactsSource;->mMimeKinds:Ljava/util/HashMap;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/model/ContactsSource;->mInflatedLevel:I

    .line 344
    return-void
.end method


# virtual methods
.method public addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 2
    .parameter "kind"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/contacts/model/ContactsSource;->resPackageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->resPackageName:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/android/contacts/model/ContactsSource;->mKinds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/android/contacts/model/ContactsSource;->mMimeKinds:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-object p1
.end method

.method public declared-synchronized ensureInflated(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/ContactsSource;->isInflated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ContactsSource;->inflate(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDataKinds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/ContactsSource$DataKind;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/model/ContactsSource;->mKinds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 120
    iget v1, p0, Lcom/android/contacts/model/ContactsSource;->titleRes:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/model/ContactsSource;->summaryResPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 122
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/contacts/model/ContactsSource;->summaryResPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/contacts/model/ContactsSource;->titleRes:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 126
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 123
    :cond_0
    iget v1, p0, Lcom/android/contacts/model/ContactsSource;->titleRes:I

    if-eq v1, v2, :cond_1

    .line 124
    iget v1, p0, Lcom/android/contacts/model/ContactsSource;->titleRes:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/model/ContactsSource;->accountType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/contacts/model/ContactsSource;->mMimeKinds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/ContactsSource$DataKind;

    return-object p0
.end method

.method public getSortedDataKinds()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/ContactsSource$DataKind;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/contacts/model/ContactsSource;->mKinds:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/contacts/model/ContactsSource;->sWeightComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 161
    iget-object v0, p0, Lcom/android/contacts/model/ContactsSource;->mKinds:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected abstract inflate(Landroid/content/Context;I)V
.end method

.method public declared-synchronized invalidateCache()V
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/model/ContactsSource;->mKinds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object v0, p0, Lcom/android/contacts/model/ContactsSource;->mMimeKinds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ContactsSource;->setInflatedLevel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInflated(I)Z
    .locals 1
    .parameter "inflateLevel"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/contacts/model/ContactsSource;->mInflatedLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInflatedLevel(I)V
    .locals 0
    .parameter "inflateLevel"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/contacts/model/ContactsSource;->mInflatedLevel:I

    .line 90
    return-void
.end method
