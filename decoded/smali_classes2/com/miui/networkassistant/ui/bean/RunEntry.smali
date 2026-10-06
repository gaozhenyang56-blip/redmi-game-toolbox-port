.class public final Lcom/miui/networkassistant/ui/bean/RunEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private runnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/bean/RunEntry;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final excuteWithTry()V
    .locals 2

    :try_start_0
    sget-object v0, Loj/m;->b:Loj/m$a;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RunEntry;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-object v0, Loj/t;->a:Loj/t;

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Loj/m;->b:Loj/m$a;

    invoke-static {v0}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
