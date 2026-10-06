.class Lw6/i$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw6/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lw6/i$a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lw6/i;->o(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-class v0, Landroid/content/Intent;

    const-string v1, "GameSizeCompatManager"

    const-string v2, "ACTION_USER_SWITCHED"

    invoke-static {v1, v0, v2}, Lbh/e;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p2

    new-instance v0, Lw6/h;

    invoke-direct {v0, p1}, Lw6/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lef/z;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
