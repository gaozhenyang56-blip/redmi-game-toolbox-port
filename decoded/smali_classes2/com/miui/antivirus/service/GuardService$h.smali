.class Lcom/miui/antivirus/service/GuardService$h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/service/GuardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/service/GuardService;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/service/GuardService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService$h;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/service/GuardService;Lcom/miui/antivirus/service/GuardService$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/service/GuardService$h;-><init>(Lcom/miui/antivirus/service/GuardService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    new-instance p1, Lcom/miui/antivirus/service/GuardService$h$a;

    invoke-direct {p1, p0, p2}, Lcom/miui/antivirus/service/GuardService$h$a;-><init>(Lcom/miui/antivirus/service/GuardService$h;Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
