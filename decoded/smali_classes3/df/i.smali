.class public Ldf/i;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ldf/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldf/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 3

    invoke-static {p1}, Lx4/k1;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldf/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restrictOpsWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lx4/k1;->p(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {p1}, Ldf/f;->b(Landroid/content/Context;)Ldf/f;

    move-result-object v0

    const-string v1, "miui.intent.extra.input_method_visible_height"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ldf/f;->n(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ldf/f;->a()V

    :goto_0
    invoke-direct {p0, p1, v2}, Ldf/i;->a(Landroid/content/Context;Z)V

    return-void
.end method
