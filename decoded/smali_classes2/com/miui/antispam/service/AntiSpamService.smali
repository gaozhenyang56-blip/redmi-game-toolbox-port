.class public Lcom/miui/antispam/service/AntiSpamService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/antispam/service/AntiSpamService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/service/AntiSpamService;->a:Ljava/lang/String;

    const-string v0, "timingUpdate"

    sput-object v0, Lcom/miui/antispam/service/AntiSpamService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/miui/antispam/service/AntiSpamService;->a:Ljava/lang/String;

    const-string v1, "service create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/miui/antispam/service/AntiSpamService;->a:Ljava/lang/String;

    const-string v1, "service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-super {p0, v0, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    sget-object v1, Lcom/miui/antispam/service/AntiSpamService;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lk2/a;

    invoke-direct {v1, p0, v0}, Lk2/a;-><init>(Landroid/content/Context;Lcom/miui/antispam/service/a$a;)V

    invoke-virtual {v1}, Lk2/a;->h()V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
