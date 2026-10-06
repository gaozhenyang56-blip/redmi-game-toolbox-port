.class Lcom/miui/gamebooster/service/DockWindowManagerService$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/DockWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const-string v1, "TheatreModeUtils"

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Li8/c;->p()I

    move-result p1

    invoke-static {v0}, Lj8/g;->s(I)V

    invoke-static {p1}, Li8/c;->s0(I)V

    const-string p1, "After delay, Close the display effect"

    goto :goto_0

    :pswitch_1
    invoke-static {}, Li8/c;->p()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set the display style to be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lj8/g;->s(I)V

    invoke-static {p1}, Li8/c;->s0(I)V

    const-string p1, "After delay, Recover the custom display effect"

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    invoke-static {p1}, Lj8/g;->r(I)V

    const-string p1, "After delay, Set the Cinema Mode to be 1"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
