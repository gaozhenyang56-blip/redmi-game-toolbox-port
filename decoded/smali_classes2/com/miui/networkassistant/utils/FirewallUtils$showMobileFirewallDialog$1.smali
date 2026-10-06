.class final Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$1;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/utils/FirewallUtils;->showMobileFirewallDialog(Landroid/app/Activity;Lak/a;)V
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
.field final synthetic $action:Lak/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/a<",
            "Loj/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lak/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/a<",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$1;->$action:Lak/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$1;->invoke()Loj/t;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Loj/t;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/utils/FirewallUtils$showMobileFirewallDialog$1;->$action:Lak/a;

    invoke-interface {v0}, Lak/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loj/t;

    return-object v0
.end method
