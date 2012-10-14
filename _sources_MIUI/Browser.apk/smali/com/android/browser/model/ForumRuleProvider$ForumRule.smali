.class public Lcom/android/browser/model/ForumRuleProvider$ForumRule;
.super Ljava/lang/Object;
.source "ForumRuleProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/ForumRuleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumRule"
.end annotation


# instance fields
.field public articleDetailRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleDetailRule;

.field public articleListRule:Lcom/android/browser/model/ForumRuleProvider$ForumArticleListRule;

.field public commonRule:Lcom/android/browser/model/ForumRuleProvider$ForumCommonRule;

.field public forumListRule:Lcom/android/browser/model/ForumRuleProvider$ForumListRule;

.field public forumListRuleStyle2:Lcom/android/browser/model/ForumRuleProvider$ForumListRule;

.field public generator:Ljava/lang/String;

.field public generatorType:I

.field public loggingRule:Lcom/android/browser/model/ForumRuleProvider$ForumLoggingRule;

.field public postingRule:Lcom/android/browser/model/ForumRuleProvider$ForumPostingRule;

.field public searchRule:Lcom/android/browser/model/ForumRuleProvider$ForumSearchRule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
