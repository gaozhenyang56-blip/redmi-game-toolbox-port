.class final Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$2;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/utils/FirewallUtils;->showMobileFirewallDialog(Landroid/app/Activity;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $pkgName:Ljava/lang/String;

.field final synthetic $slotNum:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$2;->$pkgName:Ljava/lang/String;

    iput p2, p0, Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$2;->$slotNum:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$2;->invoke()V

    sget-object v0, Loj/t;->a:Loj/t;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    sget-object v0, Lcom/miui/networkassistant/utils/FirewallUtils;->INSTANCE:Lcom/miui/networkassistant/utils/FirewallUtils;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$2;->$pkgName:Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$2;->$slotNum:I

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/networkassistant/utils/FirewallUtils;->access$setMobileRule(Lcom/miui/networkassistant/utils/FirewallUtils;Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method
