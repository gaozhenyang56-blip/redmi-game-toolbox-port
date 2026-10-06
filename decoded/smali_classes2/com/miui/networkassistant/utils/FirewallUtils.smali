.class public final Lcom/miui/networkassistant/utils/FirewallUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/miui/networkassistant/utils/FirewallUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_SHOW_DIALOG:Ljava/lang/String; = "na_show_mobile_firewall_dialog"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/utils/FirewallUtils;

    invoke-direct {v0}, Lcom/miui/networkassistant/utils/FirewallUtils;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/utils/FirewallUtils;->INSTANCE:Lcom/miui/networkassistant/utils/FirewallUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lak/a;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/utils/FirewallUtils;->showDialog$lambda$1(Lak/a;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final synthetic access$setMobileRule(Lcom/miui/networkassistant/utils/FirewallUtils;Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/utils/FirewallUtils;->setMobileRule(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/networkassistant/utils/FirewallUtils;->setMobileRule$lambda$2(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/utils/FirewallUtils;->showDialog$lambda$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final setMobileRule(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/utils/c;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/miui/networkassistant/utils/c;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    invoke-static {v0}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->runOnPool(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final setMobileRule$lambda$2(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pkgName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lmiui/provider/ExtraNetwork;->setMobileRestrict(Landroid/content/Context;Ljava/lang/String;ZI)Z

    if-eqz p2, :cond_0

    const-string p0, "com.miui.securitycenter"

    invoke-static {p0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0, p1}, Lx4/f1;->g(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final showDialog(Landroid/app/Activity;Lak/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lak/a<",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120885

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120882

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120883

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120884

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/miui/networkassistant/utils/a;

    invoke-direct {v1}, Lcom/miui/networkassistant/utils/a;-><init>()V

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/networkassistant/utils/b;

    invoke-direct {v0, p2}, Lcom/miui/networkassistant/utils/b;-><init>(Lak/a;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final showDialog$lambda$0(Landroid/content/DialogInterface;I)V
    .locals 0

    instance-of p1, p0, Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    check-cast p0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const-string p1, "na_show_mobile_firewall_dialog"

    invoke-static {p1, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private static final showDialog$lambda$1(Lak/a;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "$action"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lak/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final showMobileFirewallDialog(Landroid/app/Activity;Lak/a;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lak/a<",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "na_show_mobile_firewall_dialog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lak/a;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/utils/FirewallUtils;->INSTANCE:Lcom/miui/networkassistant/utils/FirewallUtils;

    new-instance v1, Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$1;

    invoke-direct {v1, p1}, Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$1;-><init>(Lak/a;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/utils/FirewallUtils;->showDialog(Landroid/app/Activity;Lak/a;)V

    return-void
.end method

.method public static final showMobileFirewallDialog(Landroid/app/Activity;Ljava/lang/String;ZI)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "na_show_mobile_firewall_dialog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/miui/networkassistant/utils/FirewallUtils;->INSTANCE:Lcom/miui/networkassistant/utils/FirewallUtils;

    new-instance v0, Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$2;

    invoke-direct {v0, p1, p3}, Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$2;-><init>(Ljava/lang/String;I)V

    invoke-direct {p2, p0, v0}, Lcom/miui/networkassistant/utils/FirewallUtils;->showDialog(Landroid/app/Activity;Lak/a;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/networkassistant/utils/FirewallUtils;->INSTANCE:Lcom/miui/networkassistant/utils/FirewallUtils;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/networkassistant/utils/FirewallUtils;->setMobileRule(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method
