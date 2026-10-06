.class Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$a;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$a;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-virtual {v0}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$a;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {p1}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->f0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Lcom/miui/apppredict/fragment/a;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$a;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {v0}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->d0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$a;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {v1}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->e0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Lcom/miui/optimizecenter/storage/view/EmptyView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/apppredict/fragment/a;->r(Ljava/util/List;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$a;->a:Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->g0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
