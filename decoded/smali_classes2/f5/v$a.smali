.class Lf5/v$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf5/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf5/v;


# direct methods
.method constructor <init>(Lf5/v;)V
    .locals 0

    iput-object p1, p0, Lf5/v$a;->a:Lf5/v;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lf5/v$a;)V
    .locals 0

    invoke-direct {p0}, Lf5/v$a;->c()V

    return-void
.end method

.method public static synthetic b(Lf5/v$a;)V
    .locals 0

    invoke-direct {p0}, Lf5/v$a;->d()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    iget-object v0, p0, Lf5/v$a;->a:Lf5/v;

    invoke-static {v0}, Lf5/v;->b(Lf5/v;)V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    iget-object v0, p0, Lf5/v$a;->a:Lf5/v;

    invoke-static {v0}, Lf5/v;->a(Lf5/v;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "com.miui.action.UPDATE_PREDICT_LIST"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "dock_app_status_changed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance p2, Lf5/t;

    invoke-direct {p2, p0}, Lf5/t;-><init>(Lf5/v$a;)V

    :goto_0
    invoke-virtual {p1, p2}, Lef/z;->b(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance p2, Lf5/u;

    invoke-direct {p2, p0}, Lf5/u;-><init>(Lf5/v$a;)V

    goto :goto_0

    :goto_1
    return-void
.end method
