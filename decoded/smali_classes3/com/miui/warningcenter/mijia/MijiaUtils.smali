.class public Lcom/miui/warningcenter/mijia/MijiaUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_MIJIA_PAGE:Ljava/lang/String; = "#Intent;action=miui.intent.action.WARNINGCENTER_MIJIA;end"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelLinkageData(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lof/i$d;

    invoke-direct {v0}, Lof/i$d;-><init>()V

    iput-object p0, v0, Lof/i$d;->a:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lof/i$d;->h:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0, v0}, Lof/i;->l(Landroid/content/Context;Lof/i$d;)V

    return-void
.end method

.method public static getPreviousAccount()Ljava/lang/String;
    .locals 2

    const-string v0, "key_warning_center_mijia_previous_account"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreviousServer()Ljava/lang/String;
    .locals 2

    const-string v0, "key_warning_center_mijia_previous_server"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isFirstUseMijiaWarning()Z
    .locals 2

    const-string v0, "key_warning_center_first_use_mijia_warning"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMijiaWarningOpen()Z
    .locals 2

    const-string v0, "key_warning_center_mijia_open"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static sendLinkageData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lof/i$d;

    invoke-direct {v0}, Lof/i$d;-><init>()V

    iput-object p1, v0, Lof/i$d;->b:Ljava/lang/String;

    iput-object p0, v0, Lof/i$d;->a:Ljava/lang/String;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f121c3d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lof/i$d;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lof/i$d;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v0, Lof/i$d;->f:J

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    const-string p1, "MiuiWarningCenter"

    const/4 v1, 0x6

    invoke-static {p0, p1, p2, v1}, Lq4/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    iput p0, v0, Lof/i$d;->g:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lof/i$d;->h:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0, v0}, Lof/i;->l(Landroid/content/Context;Lof/i$d;)V

    return-void
.end method

.method public static setFirstUseMijiaWarning(Z)V
    .locals 1

    const-string v0, "key_warning_center_first_use_mijia_warning"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setMijiaWarningOpen(Z)V
    .locals 1

    const-string v0, "key_warning_center_mijia_open"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setPreviousAccount(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_warning_center_mijia_previous_account"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPreviousServer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_warning_center_mijia_previous_server"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showFirstUseMijiaNoti(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lw4/b$b;

    invoke-direct {v0, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121c3d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121c3c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    const v1, 0x7f08093f

    invoke-virtual {v0, v1}, Lw4/b$b;->q(I)Lw4/b$b;

    const v1, 0x7f080f25

    invoke-virtual {v0, v1}, Lw4/b$b;->v(I)Lw4/b$b;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/warningcenter/mijia/WarningCenterMijiaActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    const v1, 0x7f1207d2

    invoke-virtual {v0, v1}, Lw4/b$b;->r(I)Lw4/b$b;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120f27

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1, p0}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Lw4/b$b;->l(I)Lw4/b$b;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lw4/b$b;->i(Z)Lw4/b$b;

    invoke-virtual {v0, p0}, Lw4/b$b;->j(Z)Lw4/b$b;

    invoke-virtual {v0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    const-string p0, "com.miui.securitycenter_com.miui.securitycenter_1001"

    const-string v0, "#Intent;action=miui.intent.action.WARNINGCENTER_MIJIA;end"

    const/16 v1, 0x3e9

    invoke-static {p0, v0, v1}, Lcom/miui/warningcenter/mijia/MijiaUtils;->sendLinkageData(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
