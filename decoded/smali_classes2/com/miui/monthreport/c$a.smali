.class Lcom/miui/monthreport/c$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/monthreport/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/monthreport/c;


# direct methods
.method constructor <init>(Lcom/miui/monthreport/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/c$a;->a:Lcom/miui/monthreport/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/miui/monthreport/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle task message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/monthreport/c$a;->a:Lcom/miui/monthreport/c;

    invoke-static {p1}, Lcom/miui/monthreport/c;->d(Lcom/miui/monthreport/c;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/monthreport/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/monthreport/b;

    iget-object v0, p0, Lcom/miui/monthreport/c$a;->a:Lcom/miui/monthreport/c;

    invoke-virtual {p1}, Lcom/miui/monthreport/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/monthreport/c;->b(Lcom/miui/monthreport/c;Ljava/lang/String;Lcom/miui/monthreport/b;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/monthreport/c$a;->a:Lcom/miui/monthreport/c;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/miui/monthreport/c;->b(Lcom/miui/monthreport/c;Ljava/lang/String;Lcom/miui/monthreport/b;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
