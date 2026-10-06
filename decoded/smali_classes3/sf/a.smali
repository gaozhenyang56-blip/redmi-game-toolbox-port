.class public Lsf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lsf/a;->a:Landroid/content/res/Resources;

    return-void
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lsf/a;->a:Landroid/content/res/Resources;

    const v3, 0x7f120dc8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120db5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08083b

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "clean_master_international"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    invoke-static {}, Lx4/t;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f120dc6

    goto :goto_0

    :cond_0
    const v3, 0x7f120dc5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120db3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080913

    const-string v6, "#Intent;action=miui.intent.action.ANTI_VIRUS;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "security_scan_international"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f120dd5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120dbf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0808a4

    const-string v6, "#Intent;action=miui.intent.action.POWER_MANAGER;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "power_manager_international"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/k0;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f120dcb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120db9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08088a

    const-string v6, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "network_assistant_international"

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120dc7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080821

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "deep_clean_international"

    :goto_1
    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/k0;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1214a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1214a5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0808b2

    const-string v6, "#Intent;action=miui.intent.action.PRIVACY_SETTINGS;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "anti_spam_international"

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f120dd4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120dbd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080890

    const-string v6, "#Intent;action=miui.intent.action.OPTIMIZE_MANAGE;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "booster_speed"

    :goto_2
    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1201fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120db4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0807e2

    const-string v5, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "permissions_international"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lsf/a;->a:Landroid/content/res/Resources;

    const v3, 0x7f120dc8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120db5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08083b

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "clean_master_international"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    invoke-static {}, Lx4/t;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f120dc6

    goto :goto_0

    :cond_0
    const v3, 0x7f120dc5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120db3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080913

    const-string v6, "#Intent;action=miui.intent.action.ANTI_VIRUS;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "security_scan_international"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f120dd5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120dbf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0808a4

    const-string v6, "#Intent;action=miui.intent.action.POWER_MANAGER;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "power_manager_international"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f120dd3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120dbd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080890

    const-string v6, "#Intent;action=miui.intent.action.OPTIMIZE_MANAGE;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "booster_speed"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/k0;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    invoke-static {}, Ldb/c;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f1214a6

    goto :goto_1

    :cond_1
    const v3, 0x7f12141e

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1214a5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0808b2

    const-string v6, "#Intent;action=miui.intent.action.PRIVACY_SETTINGS;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "privacy_protect"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1201fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120db4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0807e2

    const-string v5, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "permissions_international"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static c(Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lsf/a;->a:Landroid/content/res/Resources;

    const v3, 0x7f120dc8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120db5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08083b

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f120dc5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120db3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080913

    const-string v6, "#Intent;action=miui.intent.action.ANTI_VIRUS;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f120dd5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120dbf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0808a4

    const-string v6, "#Intent;action=miui.intent.action.POWER_MANAGER;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_0

    invoke-static {}, Lx4/k0;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/miui/common/card/GridFunctionData;

    const v1, 0x7f120dcb

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f120db9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08088a

    const-string v5, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/miui/common/card/GridFunctionData;

    const v1, 0x7f120dd3

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f120dbd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080890

    const-string v5, "#Intent;action=miui.intent.action.OPTIMIZE_MANAGE;end"

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/k0;->m()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/miui/common/card/GridFunctionData;

    invoke-static {}, Ldb/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1214a6

    goto :goto_1

    :cond_1
    const v1, 0x7f12141e

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f1214a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0808b2

    const-string v5, "#Intent;action=miui.intent.action.PRIVACY_SETTINGS;end"

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lk6/b;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/miui/common/card/GridFunctionData;

    const v1, 0x7f1204ad

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f1204ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080831

    const-string v5, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p0, Lcom/miui/common/card/GridFunctionData;

    const v1, 0x7f1201fb

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f120db4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0807e2

    const-string v4, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static d()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lx4/k0;->k()Z

    move-result v0

    invoke-static {}, Lx4/k0;->n()Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lx4/k0;->b()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    new-instance v3, Lcom/miui/common/card/GridFunctionData;

    sget-object v5, Lsf/a;->a:Landroid/content/res/Resources;

    const v6, 0x7f1204a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080821

    const-string v7, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN;end"

    invoke-direct {v3, v5, v4, v6, v7}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v5, "deep_clean_international"

    invoke-virtual {v3, v5}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v3, Lcom/miui/common/card/GridFunctionData;

    sget-object v5, Lsf/a;->a:Landroid/content/res/Resources;

    const v6, 0x7f1204a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0807df

    const-string v8, "#Intent;action=com.miui.securitycenter.action.TRANSITION;end"

    invoke-direct {v3, v6, v4, v7, v8}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v6, "app_lock_international"

    invoke-virtual {v3, v6}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204c1

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080828

    const-string v7, "#Intent;action=miui.intent.action.XSPACE_SETTING;end"

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "dual_apps_international"

    invoke-virtual {v0, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v3

    invoke-static {v0, v3}, Lcom/miui/appmanager/AppManageUtils;->h0(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f121423

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0808ae

    const-string v7, "#Intent;action=miui.intent.action.MANAGE_PRIVACY_APPS;end"

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "privacy_apps"

    invoke-virtual {v0, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v1, 0x7f1204ba

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0808c1

    const-string v6, "#Intent;action=miui.intent.action.PRIVATE_SPACE_SETTING;end"

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "second_space_international"

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v1, 0x7f12088a

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08082f

    const-string v6, "#Intent;action=com.miui.securitycenter.action.FIRST_AID_KIT;end"

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "first_aid_kit_international"

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/k0;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v1, 0x7f1214a6

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0808b2

    const-string v6, "#Intent;action=miui.intent.action.PRIVACY_SETTINGS;end"

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "phone_manage_privacy_setting"

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lk6/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v1, 0x7f1204ad

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080831

    const-string v6, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "phone_manage_gameboost"

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v1, 0x7f1201d8

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080889

    const-string v5, "#Intent;action=miui.intent.action.NETWORKASSISTANT_FIREWALL;end"

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "network_control"

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static e()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lx4/k0;->k()Z

    move-result v0

    invoke-static {}, Lx4/k0;->n()Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v4, Lsf/a;->a:Landroid/content/res/Resources;

    const v5, 0x7f1204c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080828

    const-string v6, "#Intent;action=miui.intent.action.XSPACE_SETTING;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "phone_manage_dual_app"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v1, Lsf/a;->a:Landroid/content/res/Resources;

    const v4, 0x7f1204ba

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0808c1

    const-string v5, "#Intent;action=miui.intent.action.PRIVATE_SPACE_SETTING;end"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "second_space_international"

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lj8/s;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v1, Lsf/a;->a:Landroid/content/res/Resources;

    const v4, 0x7f121b94

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f08090a

    const-string v5, "#Intent;action=com.miui.gamebooster.action.VIDEOBOX_SETTINGS_ALL;end"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "video_box"

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    sget-object v1, Lsf/a;->a:Landroid/content/res/Resources;

    const v4, 0x7f1201d8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080889

    const-string v6, "#Intent;action=miui.intent.action.NETWORKASSISTANT_FIREWALL;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "network_control"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v4, 0x7f12088a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08082f

    const-string v6, "#Intent;action=com.miui.securitycenter.action.FIRST_AID_KIT;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "phone_manage_first_aid_kit"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v4, 0x7f1204a2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0807df

    const-string v6, "#Intent;action=com.miui.securitycenter.action.TRANSITION;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "app_lock_international"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v4, 0x7f1204a6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080821

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "deep_clean_international"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v4, "com.tencent.mobileqq"

    invoke-static {v0, v4}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v4, 0x7f1204a4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0808b4

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_QQ;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "phone_manage_qq_clean"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v4, "com.tencent.mm"

    invoke-static {v0, v4}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v4, 0x7f1204a9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08091a

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "phone_manage_wechat_clean"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lx4/z1;->v()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v4, 0x7f121212

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0808dd

    const-string v6, "#Intent;action=miui.powercenter.intent.action.BOOT_SHUTDOWN_ONTIME;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "boot_shutdown_ontime"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v4, 0x7f121a3b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0807e8

    const-string v6, "#Intent;action=miui.intent.action.OP_AUTO_START;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "op_auto_start"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v4, 0x7f120318

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0807e9

    const-string v6, "#Intent;component=com.miui.securitycenter/com.miui.powercenter.autotask.AutoTaskManageActivity;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "auto_task"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/k0;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v4, 0x7f120dcb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08088a

    const-string v6, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "network_assistant_international"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lk6/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v4, 0x7f1204ad

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080831

    const-string v6, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "phone_manage_gameboost"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {}, Lx4/k0;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v4, 0x7f120dc4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0807d9

    const-string v6, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "phone_manage_antispam"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v4, 0x7f12163b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0808c4

    const-string v6, "#Intent;action=miui.intent.action.ZMAN_SECURITY_SHARE_SETTING;end"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "security_share"

    invoke-virtual {v0, v4}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/common/card/GridFunctionData;

    const v4, 0x7f121712

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f080919

    const-string v5, "#Intent;action=miui.intent.action.WARNINGCENTER_MAIN;end"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "phone_manage_warnning_center"

    invoke-virtual {v0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static f()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lsf/a;->a:Landroid/content/res/Resources;

    const v3, 0x7f1201fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0807e2

    const-string v6, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_app_manage"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0807df

    const-string v6, "#Intent;action=com.miui.securitycenter.action.TRANSITION;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_applock"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/k0;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f080828

    const-string v6, "#Intent;action=miui.intent.action.XSPACE_SETTING;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_dual_app"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {}, Lx4/z1;->y()I

    move-result v3

    invoke-static {v1, v3}, Lcom/miui/appmanager/AppManageUtils;->h0(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f121423

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0808ae

    const-string v5, "#Intent;action=miui.intent.action.MANAGE_PRIVACY_APPS;end"

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "privacy_apps"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static g()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lsf/a;->a:Landroid/content/res/Resources;

    const v3, 0x7f1204a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f080821

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_deep_clean"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const-string v3, "com.tencent.mm"

    invoke-static {v1, v3}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f08091a

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_wechat_clean"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const-string v3, "com.tencent.mobileqq"

    invoke-static {v1, v3}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0808b4

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_QQ;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_qq_clean"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f120dd3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080890

    const-string v5, "#Intent;action=miui.intent.action.OPTIMIZE_MANAGE;end"

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "phone_manage_optimizemanage"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static h()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lsf/a;->a:Landroid/content/res/Resources;

    const v3, 0x7f1204a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f080821

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_deep_clean"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f08090b

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_VIDEO_MANAGE;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_video_manage"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const-string v3, "com.facebook.katana"

    invoke-static {v1, v3}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f08082c

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_FACEBOOK;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_facebook_clean"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const-string v3, "com.whatsapp"

    invoke-static {v1, v3}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f08091b

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_WHATSAPP;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_whatsapp_clean"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f12049e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0807db

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_APK_MANAGE;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_optimizemanage"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f12049f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0807e1

    const-string v6, "#Intent;action=miui.intent.action.GARBAGE_APP_DATA_MANAGE;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_appdata_clean"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080830

    const-string v5, "#Intent;action=miui.intent.action.GARBAGE_IMAGE_MANAGE;end"

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "phone_manage_gallery_clean"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lsf/a;->a:Landroid/content/res/Resources;

    const v3, 0x7f1212e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0808a5

    const-string v6, "#Intent;action=com.miui.powercenter.POWER_SAVE;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_power_save"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lpg/i;->F(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/miui/common/card/GridFunctionData;

    const v1, 0x7f121277

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0808a8

    const-string v5, "#Intent;action=com.miui.powercenter.SUPERPOWER_SAVE_NEW;end"

    invoke-direct {p0, v1, v4, v3, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "phone_manage_supersave"

    invoke-virtual {p0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p0, Lcom/miui/common/card/GridFunctionData;

    const v1, 0x7f12130b

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0808a7

    const-string v3, "#Intent;action=com.miui.securitycenter.action.POWER_SETTINGS;end"

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "phone_manage_power_save_setting"

    invoke-virtual {p0, v1}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static j()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lx4/k0;->m()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v3, Lsf/a;->a:Landroid/content/res/Resources;

    const v4, 0x7f1214a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0808b2

    const-string v5, "#Intent;action=miui.intent.action.PRIVACY_SETTINGS;end"

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_privacy_setting"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {}, Lx4/z1;->y()I

    move-result v3

    invoke-static {v1, v3}, Lcom/miui/appmanager/AppManageUtils;->h0(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v3, Lsf/a;->a:Landroid/content/res/Resources;

    const v4, 0x7f121423

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0808ae

    const-string v5, "#Intent;action=miui.intent.action.MANAGE_PRIVACY_APPS;end"

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "privacy_apps"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v3, Lsf/a;->a:Landroid/content/res/Resources;

    const v4, 0x7f1204a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0807df

    const-string v5, "#Intent;action=com.miui.securitycenter.action.TRANSITION;end"

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "phone_manage_app_lock"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static k()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lsf/a;->a:Landroid/content/res/Resources;

    const v3, 0x7f12088a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f08082f

    const-string v6, "#Intent;action=com.miui.securitycenter.action.FIRST_AID_KIT;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_first_aid_kit"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f08087b

    const-string v6, "#Intent;action=miui.intent.action.HB_MAIN_ACTIVITY;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_luckey_money"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/k0;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0808c1

    const-string v6, "#Intent;action=miui.intent.action.PRIVATE_SPACE_SETTING;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_second_space"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lk6/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f080831

    const-string v6, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_gameboost"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f121932

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0808e5

    const-string v6, "#Intent;component=com.android.settings/.SubSettings;S.%3Asettings%3Ashow_fragment=com.android.settings.emergency.ui.SosSettings;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_sos"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/z1;->v()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f121a24

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f08082e

    const-string v6, "#Intent;component=com.miui.cloudservice/com.miui.cloudservice.ui.MiCloudFindDeviceStatusActivity;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_find_device"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f120dc4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0807d9

    const-string v6, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_antispam"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f121712

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080919

    const-string v5, "#Intent;action=miui.intent.action.WARNINGCENTER_MAIN;end"

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "phone_manage_warnning_center"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static l()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    sget-object v2, Lsf/a;->a:Landroid/content/res/Resources;

    const v3, 0x7f120dcb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f08088a

    const-string v6, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_network_assistant"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lk6/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f080831

    const-string v6, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_gameboost"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lx4/k0;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0808c1

    const-string v6, "#Intent;action=miui.intent.action.PRIVATE_SPACE_SETTING;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_second_space"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lx4/k0;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f1204c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f080828

    const-string v6, "#Intent;action=miui.intent.action.XSPACE_SETTING;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_dual_app"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f12088a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f08082f

    const-string v6, "#Intent;action=com.miui.securitycenter.action.FIRST_AID_KIT;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_first_aid_kit"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f120dc4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0807d9

    const-string v6, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "phone_manage_antispam"

    invoke-virtual {v1, v3}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_3

    const-string v1, "ID"

    invoke-static {v1}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/miui/common/card/GridFunctionData;

    const v3, 0x7f121707

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080829

    const-string v5, "#Intent;action=miui.intent.action.EARTHQUAKE_WARNING_MAIN_ID;end"

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "phone_manage_earthquick_id"

    invoke-virtual {v1, v2}, Lcom/miui/common/card/GridFunctionData;->setStatKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method
