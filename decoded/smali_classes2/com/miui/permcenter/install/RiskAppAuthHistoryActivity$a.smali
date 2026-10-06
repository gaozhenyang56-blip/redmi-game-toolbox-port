.class Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;->onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Lxb/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic q:Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a;->q:Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity;

    invoke-direct {p0, p2}, Lw4/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a;->J()Lxb/c;

    move-result-object v0

    return-object v0
.end method

.method public J()Lxb/c;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "risk_app_install_list"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lxb/c;

    invoke-direct {v1}, Lxb/c;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    new-instance v4, Lxb/d;

    invoke-direct {v4}, Lxb/d;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "risk_app_name"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lxb/d;->d(Ljava/lang/String;)V

    const-string v3, "risk_app_version"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lxb/d;->f(Ljava/lang/String;)V

    const-string v3, "risk_pkg_name"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lxb/d;->d(Ljava/lang/String;)V

    const-string v3, "risk_app_auth_time"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lxb/d;->e(J)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "RiskAppAuthHistory"

    const-string v5, "parse data error: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a$a;-><init>(Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    invoke-virtual {v1, v2}, Lxb/c;->b(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lmb/a;->l(I)V

    return-object v1
.end method
