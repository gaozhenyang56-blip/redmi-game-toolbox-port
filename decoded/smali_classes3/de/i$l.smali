.class Lde/i$l;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lde/i;


# direct methods
.method public constructor <init>(Lde/i;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lde/i$l;->b:Lde/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lde/i$l;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lde/i$l;)V
    .locals 0

    invoke-direct {p0}, Lde/i$l;->c()V

    return-void
.end method

.method static synthetic b(Lde/i$l;)V
    .locals 0

    invoke-direct {p0}, Lde/i$l;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lde/i$l;->a:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, p0, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lde/i$l;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "homekey"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "recentapps"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lde/i$l;->b:Lde/i;

    invoke-static {p1}, Lde/i;->n(Lde/i;)V

    iget-object p1, p0, Lde/i$l;->b:Lde/i;

    invoke-static {p1}, Lde/i;->p(Lde/i;)V

    iget-object p1, p0, Lde/i$l;->b:Lde/i;

    invoke-virtual {p1}, Lde/i;->F()V

    iget-object p1, p0, Lde/i$l;->b:Lde/i;

    invoke-static {p1}, Lde/i;->q(Lde/i;)V

    :cond_1
    return-void
.end method
