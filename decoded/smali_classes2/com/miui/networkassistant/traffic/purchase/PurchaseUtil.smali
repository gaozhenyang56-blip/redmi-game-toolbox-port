.class public Lcom/miui/networkassistant/traffic/purchase/PurchaseUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final URL_PURCHASE_PACKAGE_LIST:Ljava/lang/String; = "https://api.miui.security.xiaomi.com/views/netassist/productlist.html"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static launchUrl(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120d1f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "https://api.miui.security.xiaomi.com/views/netassist/productlist.html"

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "%s?slotid=%s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v6, p1

    invoke-static/range {v2 .. v7}, Lmiui/provider/ExtraNetwork;->navigateToRichWebActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public static launchUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120d1f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v2 .. v7}, Lmiui/provider/ExtraNetwork;->navigateToRichWebActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public static launchUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/provider/ExtraNetwork;->navigateToRichWebActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method
