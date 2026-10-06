.class public Ldf/h$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Ldf/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lef/x;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lef/x;->n()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v1}, Ldf/h;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "before_collaborator"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ldf/h;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "after_collaborator"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "585.0.0.0.25971"

    invoke-static {p1, v2, v1}, Ldf/g;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    const-string v1, "switch"

    invoke-static {v1, v2}, Lcom/miui/analytics/AnalyticsUtil;->trackImeEvent(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Ldf/h;->J(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, v0}, Ldf/h;->r(Landroid/content/Context;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_mi_ime_opened"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v0}, Lef/x;->e0(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ldf/h$b$a;

    invoke-direct {v0, p0, p1}, Ldf/h$b$a;-><init>(Ldf/h$b;Lcom/miui/securitycenter/Application;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
