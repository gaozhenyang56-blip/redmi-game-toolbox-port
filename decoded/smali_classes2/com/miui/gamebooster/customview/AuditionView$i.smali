.class Lcom/miui/gamebooster/customview/AuditionView$i;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/customview/AuditionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/AuditionView;


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/customview/AuditionView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/customview/AuditionView;Lcom/miui/gamebooster/customview/AuditionView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/AuditionView$i;-><init>(Lcom/miui/gamebooster/customview/AuditionView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->B(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/RecordVolumView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->a(Lcom/miui/gamebooster/customview/AuditionView;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/customview/RecordVolumView;->setTime(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->A(Lcom/miui/gamebooster/customview/AuditionView;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "voice_percent"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->B(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/RecordVolumView;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/miui/gamebooster/customview/RecordVolumView;->setVoice(D)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->B(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/RecordVolumView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->a(Lcom/miui/gamebooster/customview/AuditionView;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/customview/RecordVolumView;->setTime(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->a(Lcom/miui/gamebooster/customview/AuditionView;)I

    move-result p1

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_5

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->n(Lcom/miui/gamebooster/customview/AuditionView;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->d(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/AuditionView$i;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->z(Lcom/miui/gamebooster/customview/AuditionView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/customview/AuditionView;->b(Lcom/miui/gamebooster/customview/AuditionView;I)I

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->G(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->w(Lcom/miui/gamebooster/customview/AuditionView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->x(Lcom/miui/gamebooster/customview/AuditionView;)Lo8/a;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->x(Lcom/miui/gamebooster/customview/AuditionView;)Lo8/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo8/a;->b(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->G(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f1209fd

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->x(Lcom/miui/gamebooster/customview/AuditionView;)Lo8/a;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->x(Lcom/miui/gamebooster/customview/AuditionView;)Lo8/a;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$i;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->y(Lcom/miui/gamebooster/customview/AuditionView;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo8/a;->a(J)V

    :cond_5
    :goto_0
    return-void
.end method
