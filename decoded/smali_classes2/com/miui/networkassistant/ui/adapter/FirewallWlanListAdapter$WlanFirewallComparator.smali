.class Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter$WlanFirewallComparator;
.super Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/adapter/FirewallWlanListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WlanFirewallComparator"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter$FirewallComparator;-><init>(Landroid/content/Context;Lcom/miui/networkassistant/service/wrapper/FirewallRuleCacher;)V

    return-void
.end method


# virtual methods
.method protected getFirewallRuleCompareWeight(Lcom/miui/networkassistant/model/FirewallRuleSet;)I
    .locals 1

    iget-object p1, p1, Lcom/miui/networkassistant/model/FirewallRuleSet;->wifiRule:Lcom/miui/networkassistant/model/FirewallRule;

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
