.class public Lcom/miui/zman/ui/LoadingActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lkh/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/zman/ui/LoadingActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lkh/c;

.field private c:Lcom/miui/zman/ui/LoadingActivity$a;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/miui/zman/ui/LoadingActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/zman/ui/LoadingActivity$a;-><init>(Lcom/miui/zman/ui/LoadingActivity;)V

    iput-object v0, p0, Lcom/miui/zman/ui/LoadingActivity;->c:Lcom/miui/zman/ui/LoadingActivity$a;

    return-void
.end method

.method static synthetic b(Lcom/miui/zman/ui/LoadingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/zman/ui/LoadingActivity;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method private c(II)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object p1, p0, Lcom/miui/zman/ui/LoadingActivity;->c:Lcom/miui/zman/ui/LoadingActivity$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/zman/ui/LoadingActivity;->c:Lcom/miui/zman/ui/LoadingActivity$a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/miui/zman/ui/LoadingActivity;->c(II)V

    if-ne p1, p2, :cond_1

    const-wide/16 p1, 0x258

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/zman/ui/LoadingActivity;->d:J

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iget-object v0, p0, Lcom/miui/zman/ui/LoadingActivity;->c:Lcom/miui/zman/ui/LoadingActivity$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/zman/ui/LoadingActivity;->d:J

    const p1, 0x7f0e002d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0b0778

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/zman/ui/LoadingActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lkh/f;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0b04ed

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lkh/c;->a()Lkh/c;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zman/ui/LoadingActivity;->b:Lkh/c;

    invoke-virtual {p1, p0}, Lkh/c;->e(Lkh/c$a;)V

    iget-object p1, p0, Lcom/miui/zman/ui/LoadingActivity;->b:Lkh/c;

    invoke-virtual {p1}, Lkh/c;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
