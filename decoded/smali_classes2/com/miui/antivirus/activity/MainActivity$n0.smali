.class Lcom/miui/antivirus/activity/MainActivity$n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "n0"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$n0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$n0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Lcom/miui/antivirus/model/a;

    invoke-direct {v2}, Lcom/miui/antivirus/model/a;-><init>()V

    :goto_0
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->D0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$r0;

    move-result-object v3

    sget-object v4, Lcom/miui/antivirus/activity/MainActivity$r0;->b:Lcom/miui/antivirus/activity/MainActivity$r0;

    if-eq v3, v4, :cond_2

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->R0(Lcom/miui/antivirus/activity/MainActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v3, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x41b

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->A0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$c0;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->q0(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->S0(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->R0(Lcom/miui/antivirus/activity/MainActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v3, v1, :cond_5

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->R0(Lcom/miui/antivirus/activity/MainActivity;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/model/a;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v1, Lcom/miui/antivirus/model/f;

    if-eqz v4, :cond_4

    const/16 v4, 0x419

    goto :goto_2

    :cond_4
    const/16 v4, 0x41a

    :goto_2
    iput v4, v2, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->A0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$c0;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object v2, v1

    move v1, v3

    :cond_5
    :try_start_0
    sget-object v3, Lcom/miui/antivirus/model/a$a;->d:Lcom/miui/antivirus/model/a$a;

    invoke-virtual {v2}, Lcom/miui/antivirus/model/a;->a()Lcom/miui/antivirus/model/a$a;

    move-result-object v4

    if-eq v3, v4, :cond_7

    sget-object v3, Lcom/miui/antivirus/model/a$a;->e:Lcom/miui/antivirus/model/a$a;

    invoke-virtual {v2}, Lcom/miui/antivirus/model/a;->a()Lcom/miui/antivirus/model/a$a;

    move-result-object v4

    if-ne v3, v4, :cond_6

    goto :goto_3

    :cond_6
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :cond_7
    :goto_3
    const-wide/16 v3, 0x28

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v4, "AntiVirusMainActivity"

    const-string v5, "InterruptedException when do animation :"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_8
    :goto_4
    return-void
.end method
