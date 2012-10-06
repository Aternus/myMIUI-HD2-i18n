.class Lnet/cactii/flash2/WidgetOptionsActivity$1;
.super Ljava/lang/Object;
.source "WidgetOptionsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/cactii/flash2/WidgetOptionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/cactii/flash2/WidgetOptionsActivity;


# direct methods
.method constructor <init>(Lnet/cactii/flash2/WidgetOptionsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preference"

    .prologue
    .line 54
    iget-object v7, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$000(Lnet/cactii/flash2/WidgetOptionsActivity;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 56
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "widget_strobe_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I
    invoke-static {v8}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$100(Lnet/cactii/flash2/WidgetOptionsActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$000(Lnet/cactii/flash2/WidgetOptionsActivity;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "widget_strobe"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "widget_strobe_freq_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I
    invoke-static {v8}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$100(Lnet/cactii/flash2/WidgetOptionsActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x29a

    iget-object v9, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v9}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$000(Lnet/cactii/flash2/WidgetOptionsActivity;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "widget_strobe_freq"

    const/4 v11, 0x5

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    div-int/2addr v8, v9

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "widget_bright_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I
    invoke-static {v8}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$100(Lnet/cactii/flash2/WidgetOptionsActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$000(Lnet/cactii/flash2/WidgetOptionsActivity;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "widget_bright"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    iget-object v7, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    invoke-virtual {v7}, Lnet/cactii/flash2/WidgetOptionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 67
    .local v1, context:Landroid/content/Context;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030004

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 68
    .local v6, views:Landroid/widget/RemoteViews;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v3, launchIntent:Landroid/content/Intent;
    const-class v7, Lnet/cactii/flash2/TorchWidgetProvider;

    invoke-virtual {v3, v1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    const-string v7, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "custom:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I
    invoke-static {v8}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$100(Lnet/cactii/flash2/WidgetOptionsActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 72
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v7, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 79
    .local v4, pi:Landroid/app/PendingIntent;
    const v7, 0x7f090011

    invoke-virtual {v6, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 80
    iget-object v7, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$000(Lnet/cactii/flash2/WidgetOptionsActivity;)Landroid/content/SharedPreferences;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "widget_strobe_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I
    invoke-static {v9}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$100(Lnet/cactii/flash2/WidgetOptionsActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 81
    const v7, 0x7f090013

    const-string v8, "Strobe"

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 86
    :goto_0
    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 87
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    iget-object v7, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I
    invoke-static {v7}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$100(Lnet/cactii/flash2/WidgetOptionsActivity;)I

    move-result v7

    invoke-virtual {v0, v7, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 89
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v5, resultValue:Landroid/content/Intent;
    const-string v7, "appWidgetId"

    iget-object v8, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I
    invoke-static {v8}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$100(Lnet/cactii/flash2/WidgetOptionsActivity;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    iget-object v7, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v5}, Lnet/cactii/flash2/WidgetOptionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 92
    iget-object v7, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    invoke-virtual {v7}, Lnet/cactii/flash2/WidgetOptionsActivity;->finish()V

    .line 93
    const/4 v7, 0x0

    return v7

    .line 82
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v5           #resultValue:Landroid/content/Intent;
    :cond_0
    iget-object v7, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$000(Lnet/cactii/flash2/WidgetOptionsActivity;)Landroid/content/SharedPreferences;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "widget_bright_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/cactii/flash2/WidgetOptionsActivity$1;->this$0:Lnet/cactii/flash2/WidgetOptionsActivity;

    #getter for: Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I
    invoke-static {v9}, Lnet/cactii/flash2/WidgetOptionsActivity;->access$100(Lnet/cactii/flash2/WidgetOptionsActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    const v7, 0x7f090013

    const-string v8, "Bright"

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_1
    const v7, 0x7f090013

    const-string v8, "Torch"

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method
