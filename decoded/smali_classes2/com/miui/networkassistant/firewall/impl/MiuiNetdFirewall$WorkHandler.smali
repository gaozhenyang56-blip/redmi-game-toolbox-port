.class public Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkHandler"
.end annotation


# static fields
.field private static final DEFAULT_STATE:I = -0xa

.field static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field static final EXTRA_RULE:Ljava/lang/String; = "rule"

.field static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field static final WHAT_SET_CURRENT_NETWORK_STATE:I = 0xb

.field static final WHAT_SET_MIUI_FIREWALL_RULE:I = 0xc


# instance fields
.field private mIsOldDevice:Z

.field private mIsRecord:Z

.field final synthetic this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->mIsOldDevice:Z

    iput-boolean p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->mIsRecord:Z

    return-void
.end method

.method private doSetFirewallRule(Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "rule"

    const/16 v1, -0xa

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "type"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eq v5, v1, :cond_1

    if-eq v6, v1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-static {p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->access$400(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Lmiui/security/SecurityManager;

    move-result-object v2

    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-static {p1, v3}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->access$500(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;Ljava/lang/String;)I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->trySetMiuiFirewallRule(Lmiui/security/SecurityManager;Ljava/lang/String;III)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, p1, v0

    const/4 v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "setMiuiFirewallRule failed\uff01pkgName: %s , rule: %s , type: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetdFirewall"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private trySetMiuiFirewallRule(Lmiui/security/SecurityManager;Ljava/lang/String;III)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-class v4, Ljava/lang/String;

    iget-object v0, v1, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-static {v0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->access$600(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Landroid/content/Context;

    move-result-object v0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static {v0, v3, v5, v6, v7}, Lcom/miui/permcenter/q;->u(Landroid/content/Context;Ljava/lang/String;III)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    iget-boolean v0, v1, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->mIsOldDevice:Z

    const-string v9, "NetdFirewall"

    const-string v10, "setMiuiFirewallRule"

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :try_start_0
    new-array v15, v0, [Ljava/lang/Class;

    aput-object v4, v15, v12

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v14

    aput-object v16, v15, v11

    aput-object v16, v15, v13

    invoke-virtual {v8, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v14

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v11

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v13

    invoke-virtual {v15, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v5, "setMiuiFirewallRule Exception OldDevice:false"

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "new setMiuiFirewallRule"

    invoke-static {v0, v5}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordThrowable(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    :try_start_1
    new-array v0, v13, [Ljava/lang/Class;

    aput-object v4, v0, v12

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v14

    aput-object v4, v0, v11

    invoke-virtual {v8, v10, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v3, v4, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v14

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v11

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v14, v1, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->mIsOldDevice:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "setMiuiFirewallRule Exception OldDevice:true"

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v1, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->mIsRecord:Z

    if-nez v2, :cond_1

    const-string v2, "old setMiuiFirewallRule"

    invoke-static {v0, v2}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordThrowable(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-boolean v14, v1, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->mIsRecord:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->doSetFirewallRule(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-static {v0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->access$400(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Lmiui/security/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$WorkHandler;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-static {v0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->access$400(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Lmiui/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/SecurityManager;->setCurrentNetworkState(I)Z

    invoke-static {p1}, Lcom/miui/permcenter/q;->t(I)V

    :cond_2
    :goto_0
    return-void
.end method
