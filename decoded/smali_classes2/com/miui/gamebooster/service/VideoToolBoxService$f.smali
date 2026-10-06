.class public Lcom/miui/gamebooster/service/VideoToolBoxService$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/VideoToolBoxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/VideoToolBoxService;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/service/VideoToolBoxService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$f;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(La7/o;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$f;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->v(Lcom/miui/gamebooster/service/VideoToolBoxService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$f;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->r(Lcom/miui/gamebooster/service/VideoToolBoxService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$f;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->r(Lcom/miui/gamebooster/service/VideoToolBoxService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$f;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->v(Lcom/miui/gamebooster/service/VideoToolBoxService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La7/o;->m()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$f;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/VideoToolBoxService;->q(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$f;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->s(Lcom/miui/gamebooster/service/VideoToolBoxService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, La7/o;->e(Landroid/content/Context;Landroid/os/Handler;)La7/o;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, La7/o;->h()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/miui/gamebooster/service/VideoToolBoxService$f;->a(La7/o;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$f;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->A(Lcom/miui/gamebooster/service/VideoToolBoxService;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/miui/gamebooster/service/VideoToolBoxService$f;->a:Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/VideoToolBoxService;->z(Lcom/miui/gamebooster/service/VideoToolBoxService;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, La7/o;->n()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0}, La7/o;->m()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
