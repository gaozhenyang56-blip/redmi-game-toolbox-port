.class public Lcom/miui/networkassistant/model/FirewallRuleSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/networkassistant/model/FirewallRuleSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final RULE_TAG:Ljava/lang/String; = "#"


# instance fields
.field public mobileRule:Lcom/miui/networkassistant/model/FirewallRule;

.field public mobileRule2:Lcom/miui/networkassistant/model/FirewallRule;

.field public wifiRule:Lcom/miui/networkassistant/model/FirewallRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/model/FirewallRuleSet$1;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/FirewallRuleSet$1;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultValue()Lcom/miui/networkassistant/model/FirewallRuleSet;
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/model/FirewallRuleSet;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/FirewallRuleSet;-><init>()V

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    iput-object v1, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule:Lcom/miui/networkassistant/model/FirewallRule;

    iput-object v1, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->wifiRule:Lcom/miui/networkassistant/model/FirewallRule;

    iput-object v1, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule2:Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRuleSet;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/miui/networkassistant/model/FirewallRuleSet;->defaultValue()Lcom/miui/networkassistant/model/FirewallRuleSet;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/miui/networkassistant/model/FirewallRule;->parse(I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule:Lcom/miui/networkassistant/model/FirewallRule;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/miui/networkassistant/model/FirewallRule;->parse(I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->wifiRule:Lcom/miui/networkassistant/model/FirewallRule;

    array-length v2, p0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/miui/networkassistant/model/FirewallRule;->parse(I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p0

    :goto_0
    iput-object p0, v0, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule2:Lcom/miui/networkassistant/model/FirewallRule;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "#"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/model/FirewallRuleSet;->wifiRule:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/model/FirewallRuleSet;->mobileRule2:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "%d%s%d%s%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/model/FirewallRuleSet;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
