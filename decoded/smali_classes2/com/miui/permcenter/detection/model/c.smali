.class public Lcom/miui/permcenter/detection/model/c;
.super Lcom/miui/permcenter/detection/model/b;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/model/b;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/detection/model/c;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/permcenter/detection/model/c;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/permcenter/detection/model/c;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/permcenter/detection/model/b;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/permcenter/detection/model/c;->f:Ljava/lang/String;

    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/miui/permcenter/detection/model/c;
    .locals 7

    new-instance v6, Lcom/miui/permcenter/detection/model/c;

    const v0, 0x7f121a3b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1219f5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f12059e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "assets://img/ziqidongguanli.png"

    const-string v5, "miui.intent.action.OP_AUTO_START"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/permcenter/detection/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static d(Landroid/content/Context;)Lcom/miui/permcenter/detection/model/c;
    .locals 7

    new-instance v6, Lcom/miui/permcenter/detection/model/c;

    const v0, 0x7f12008b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f120536

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120537

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "drawable://2131232886"

    const-string v5, "miui.intent.action.GARBAGE_CLEANUP"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/permcenter/detection/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static e(Landroid/content/Context;)Lcom/miui/permcenter/detection/model/c;
    .locals 7

    new-instance v6, Lcom/miui/permcenter/detection/model/c;

    const v0, 0x7f120fa2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1219f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f12059e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "assets://img/xiezai.png"

    const-string v5, "miui.intent.action.GARBAGE_UNINSTALL_APPS"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/permcenter/detection/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "miui.intent.action.GARBAGE_UNINSTALL_APPS"

    iget-object v1, p0, Lcom/miui/permcenter/detection/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "miui.intent.action.GARBAGE_CLEANUP"

    iget-object v1, p0, Lcom/miui/permcenter/detection/model/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/detection/model/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/permcenter/detection/model/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
