.class Lcom/miui/idprovider/IdProvider$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/idprovider/IdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/idprovider/IdProvider;


# direct methods
.method private constructor <init>(Lcom/miui/idprovider/IdProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/idprovider/IdProvider$b;->a:Lcom/miui/idprovider/IdProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/idprovider/IdProvider;Lcom/miui/idprovider/IdProvider$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/idprovider/IdProvider$b;-><init>(Lcom/miui/idprovider/IdProvider;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/idprovider/IdProvider$b;Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/idprovider/IdProvider$b;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    new-instance p1, Lcom/miui/idprovider/IdProvider$b$a;

    invoke-direct {p1, p0, p2}, Lcom/miui/idprovider/IdProvider$b$a;-><init>(Lcom/miui/idprovider/IdProvider$b;Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
