.class Lsf/i$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Lsf/i$d;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lsf/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lsf/i;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsf/i$c;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lsf/i$c;->d:Z

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsf/i$d;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsf/i$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lsf/i$c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lsf/i$c;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lsf/i$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsf/i;

    if-eqz v0, :cond_6

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    const-string v2, "level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_6

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, p2

    invoke-static {p1}, Lme/w;->L(Landroid/content/Context;)Z

    move-result p2

    iget v3, p0, Lsf/i$c;->c:I

    if-ne v2, v3, :cond_2

    iget-boolean v3, p0, Lsf/i$c;->d:Z

    if-eq p2, v3, :cond_6

    :cond_2
    iput v2, p0, Lsf/i$c;->c:I

    iput-boolean p2, p0, Lsf/i$c;->d:Z

    iput-boolean p2, v1, Lsf/i;->i:Z

    iput v2, v1, Lsf/i;->f:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, v1, Lsf/i;->g:Z

    goto :goto_0

    :cond_4
    const-string p2, "com.miui.action.NETWORK_POLICY_UPDATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Lsf/i$c$a;

    invoke-direct {p2, p0, p1, v1, v0}, Lsf/i$c$a;-><init>(Lsf/i$c;Landroid/content/Context;Lsf/i;Ljava/util/List;)V

    new-array p1, v4, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_5
    const-string p2, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p1}, Lme/w;->L(Landroid/content/Context;)Z

    move-result p2

    :goto_0
    invoke-static {v1, p1, p2, v1, v0}, Lsf/i;->a(Lsf/i;Landroid/content/Context;ZLsf/i;Ljava/util/List;)V

    :cond_6
    :goto_1
    return-void
.end method
