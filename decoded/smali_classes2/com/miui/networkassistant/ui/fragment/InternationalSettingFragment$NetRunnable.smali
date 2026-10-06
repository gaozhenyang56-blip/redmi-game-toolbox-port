.class Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$NetRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetRunnable"
.end annotation


# instance fields
.field private fragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$NetRunnable;->fragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "NASettingFragment"

    :try_start_0
    invoke-static {}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->isPreviewEnv()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "query_micard_info"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "https://preview-api-flow-intl.10046.xiaomimobile.com/privacy/withdraw_agree"

    invoke-static {}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->access$500()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Lp4/i;

    invoke-direct {v4, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, v3, v4}, Leg/j;->f(Ljava/lang/String;Ljava/util/Map;Lp4/i;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, "https://api-flow-intl.10046.xiaomimobile.com/privacy/withdraw_agree"

    invoke-static {}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->access$500()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Lp4/i;

    invoke-direct {v4, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWithDrawal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$NetRunnable;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$NetRunnable;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$NetRunnable;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/miui/networkassistant/ui/bean/PolicyCode;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/bean/PolicyCode;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->access$702(Lcom/miui/networkassistant/ui/bean/PolicyCode;)Lcom/miui/networkassistant/ui/bean/PolicyCode;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$NetRunnable;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/ui/revert/RevertResultActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->access$700()Lcom/miui/networkassistant/ui/bean/PolicyCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/ui/bean/PolicyCode;->getRtnCode()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "result"

    if-nez v2, :cond_1

    :try_start_2
    const-string v2, "success"

    :goto_2
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_1
    const-string v2, "fail"

    goto :goto_2

    :goto_3
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$NetRunnable;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    const-string v2, "Exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_4
    return-void
.end method
