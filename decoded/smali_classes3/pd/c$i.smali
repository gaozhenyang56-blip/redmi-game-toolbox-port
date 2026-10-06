.class Lpd/c$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpd/c;->p(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lpd/c;


# direct methods
.method constructor <init>(Lpd/c;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lpd/c$i;->c:Lpd/c;

    iput-object p2, p0, Lpd/c$i;->a:Ljava/lang/String;

    iput p3, p0, Lpd/c$i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lpd/c$i;->c:Lpd/c;

    invoke-static {v0}, Lpd/c;->i(Lpd/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lpd/c$i;->c:Lpd/c;

    invoke-static {v0}, Lpd/c;->k(Lpd/c;)Lpd/a;

    move-result-object v0

    iget-object v1, p0, Lpd/c$i;->a:Ljava/lang/String;

    iget v2, p0, Lpd/c$i;->b:I

    invoke-virtual {v0, v1, v2}, Lpd/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lpd/c$i;->c:Lpd/c;

    iget-object v1, p0, Lpd/c$i;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lpd/c;->b(Lpd/c;Ljava/lang/String;)V

    const-string v0, "power_channel_Manager"

    const-string v1, "createOperateSaveModeChannel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
